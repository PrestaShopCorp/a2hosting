<?php
/**
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2015 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

if (!defined('_PS_VERSION_'))
	exit;

class A2Hosting extends Module
{
	protected $config_form = false;

	public function __construct()
	{
		$this->name = 'a2hosting';
		$this->tab = 'others';
		$this->version = '1.0.0';
		$this->author = 'PrestaShop';

		$this->bootstrap = true;

		parent::__construct();

		$this->displayName = $this->l('A2 Hosting with TurboCache');
		$this->description = $this->l('24/7/365 Support. Ultra Reliable. High Performance Hosting Solution');

		if (_PS_VERSION_ < '1.5')
			require(_PS_MODULE_DIR_.$this->name.'/backward_compatibility/backward.php');
	}

	public function install()
	{
		return parent::install() && 
			$this->registerHook('backOfficeHeader')
			$this->registerHook('header') &&
			$this->registerHook('actionAuthentication') &&
			$this->registerHook('actionCartSave') &&
			$this->registerHook('displayHeader') &&
			(bool)true;
	}

	public function update()
	{
		return  $this->registerHook('backOfficeHeader') &&
			$this->registerHook('header') &&
			$this->registerHook('actionAuthentication') &&
			$this->registerHook('actionCartSave') &&
			$this->registerHook('displayHeader') &&
			(bool)true;
	}

	public function hookBackOfficeHeader()
	{
		if (strcmp(Tools::getValue('configure'), $this->name) === 0)
		{
			if (version_compare(_PS_VERSION_, '1.5', '>') == true)
			{
				$this->context->controller->addCSS($this->_path.'views/css/configure.css');

				if (version_compare(_PS_VERSION_, '1.6', '<') == true)
					$this->context->controller->addCSS($this->_path.'views/css/configure-nobootstrap.css');
			}
			else
			{
				$html = '<link rel="stylesheet" href="'.$this->_path.'views/css/configure.css" type="text/css" />';
				$html .= '<link rel="stylesheet" href="'.$this->_path.'views/css/configure-nobootstrap.css" type="text/css" />';

				return $html;
			}
		}
	}

	public function getContent()
	{
		$this->context->smarty->assign(array(
			'module_dir' => $this->_path,
		));

		return $this->display(__FILE__, 'views/templates/admin/configure.tpl');
	}
	
	
	public function hookActionAuthentication()
	{
		if ($this->context->cookie->logged)
			setcookie('logged', true, time() + ( 365 * 86400 ), '/');
		else
			setcookie('logged', false, time() - 86400, '/');
	}

	public function hookActionCartSave($params)
	{
		if (!isset($params['cart']))
			return;

		$cart = $params['cart'];

		// Get current products
		$products = $cart->getProducts();
		if (count($products) == 0)
		{
			if (isset($_COOKIE['cart']))
				setcookie('cart', false, time() - 86400, '/');
		}
		else
			setcookie('cart', true, time() + ( 365 * 86400 ), '/');

		return true;
	}

	public function hookDisplayHeader()
	{
		if ($this->context->cookie->logged)
			setcookie('logged', true, time() + ( 365 * 86400 ), '/');
		else
		{
			if (isset($_COOKIE['logged']))
				setcookie('logged', false, time() - 86400, '/');
		}

		if (isset($this->context->cart))
		{
			// Get current products
			$products = $this->context->cart->getProducts();
			if (count($products) == 0)
			{
				if (isset($_COOKIE['cart']))
					setcookie('cart', false, time() - 86400, '/');
			}
			else
				setcookie('cart', true, time() + ( 365 * 86400 ), '/');
		}
		else
		{
			if (isset($_COOKIE['cart']))
				setcookie('cart', false, time() - 86400, '/');
		}
	}
}

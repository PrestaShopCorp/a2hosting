{*
* 2015 A2 hosting
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
*  @author    Benjamin Cool <support@a2hosting.com>
*  @copyright 2015 A2 Hosting, Inc.
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*
*
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
*}


<div class="panel">
    <div class="row moduleconfig-header">
        <div class="col-xs-12 text-center">
            <img src="{$module_dir|escape:'html':'UTF-8'}views/img/a2-tagline-400.png" />
        </div>
    </div>

    <hr />

    <div class="moduleconfig-content">
        <div class="row">

                <div class="col-xs-12">
                    <h2 class="text-center">
                        {if $server_type == 'Turbo'}
                            {l s='Thank you for being a Turbo Hosting customer!' mod='a2hosting'}
                        {elseif $server_type == 'Elsewhere'}
                            {l s='Nobody Likes A Slow Site. A2 Hosting Can Give Yours A Boost !' mod='a2hosting'}
                        {else}
                            {l s='Thank you for being our customer!' mod='a2hosting'}
                        {/if}
                    </h2>
                    <br/>
                </div>
                <div class="col-xs-8" style="font-size:1.2em">
                    {if $server_type == 'Turbo'}
                        <p>
                            {l s='This module is required to fully optimize your PrestaShop for our Turbo Hosting platform and to utilize our exclusive SwiftCache technology.' mod='a2hosting'}
                            {l s='This module adds cookies in the users browser to allow TurboCache to fully optimize your PrestaShop.  You must enable these optimizations using the A2 Optimized module in cPanel.' mod='a2hosting'}
                        </p>
                        <p>
                            {l s='If you have any questions or need assistance with your hosting package, please use the button below to open a support ticket.' mod='a2hosting'}
                        </p>
                    {elseif $server_type == 'Elsewhere'}
                        <p>
                            <ul class="ul-spaced">
                                <li>{l s='Turbo Servers - Up to' mod='a2hosting'} <strong>{l s='20X Faster' mod='a2hosting'}</strong> {l s='compared To Competing PrestaShop Hosts' mod='a2hosting'}</li>
                                <li><strong>{l s='Pre-Installed' mod='a2hosting'}</strong> {l s='PrestaShop' mod='a2hosting'}</li>
                                <li>{l s='Exclusive' mod='a2hosting'} <strong>{l s='SwiftCache Site Accelerator' mod='a2hosting'}</strong></li>
                                <li>{l s='Performance Tuned SwiftServer Platform &' mod='a2hosting'} <strong>{l s='Free SSDs' mod='a2hosting'}</strong></li>
                                <li><strong>{l s='Choose from Multiple Data Center Locations in USA, Europe & Asia' mod='a2hosting'}</strong></li>
                                <li>{l s='1-Click SSL Certificate Setup' mod='a2hosting'}</li>
                                <li>{l s='24/7/365 Guru Crew Support' mod='a2hosting'}</li>
                            </ul>
                        </p>
                    {else}
                        <p>
                            {l s='To get the most out of this module and to further optimize your PrestaShop installation' mod='a2hosting'},
                            {l s='consider upgrading to our TurboServer package!' mod='a2hosting'}
                        </p>
                        <p>
                            <ul class="ul-spaced">
                                <li>{l s='Turbo Servers - Up to' mod='a2hosting'} <strong>{l s='20X Faster' mod='a2hosting'}</strong> {l s='compared To Competing PrestaShop Hosts' mod='a2hosting'}</li>
                                <li>{l s='Exclusive' mod='a2hosting'} <strong>{l s='SwiftCache Site Accelerator' mod='a2hosting'}</strong></li>
                                <li>{l s='Performance Tuned SwiftServer Platform &' mod='a2hosting'} <strong>{l s='Free SSDs' mod='a2hosting'}</strong></li>
                                <li><strong>{l s='Choose from Multiple Data Center Locations in USA, Europe & Asia' mod='a2hosting'}</strong></li>
                                <li>{l s='1-Click SSL Certificate Setup' mod='a2hosting'}</li>
                                <li>{l s='24/7/365 Guru Crew Support' mod='a2hosting'}</li>
                            </ul>
                        </p>
                    {/if}
                </div>
                <div class="col-xs-4 text-center">
                    <img src="{$module_dir|escape:'html':'UTF-8'}turbo.png" />
                    <br />
                    <br />
                    <img src="{$module_dir|escape:'html':'UTF-8'}swiftcache.png" />
                </div>
                <div class="text-center" style="clear: both">
                    {if $server_type == 'Turbo'}
                        <a style="color:white" href="{l s='https://my.a2hosting.com/submitticket.php' mod='a2hosting'}" target="_blank" title="{l s='Sign Up Now' mod='a2hosting' }">
                            <button class="btn btn-lg btn-warning">
                                <strong>{l s='Open Ticket' mod='a2hosting' }</strong>
                            </button>
                        </a>
                    {elseif $server_type == 'Elsewhere'}
                        <a style="color:white" href="{l s='https://partners.a2hosting.com/solutions.php?id=3682&url=676' mod='a2hosting'}" target="_blank" title="{l s='Sign Up Now' mod='a2hosting' }">
                            <button class="btn btn-lg btn-warning">
                                <strong>{l s='Sign Up Now!' mod='a2hosting' }</strong>
                            </button>
                        </a>
                    {else}
                        <p style="font-size: 1.2em">
                            {l s="Please log in and create a sales ticket to upgrade to Turbo!" mod="a2hosting" }
                        </p>
                        <a style="color:white" href="{l s='https://my.a2hosting.com/submitticket.php' mod='a2hosting'}" target="_blank" title="{l s='Sign Up Now' mod='a2hosting' }">
                            <button class="btn btn-lg btn-warning">
                                <strong>{l s='Upgrade Now!' mod='a2hosting' }</strong>
                            </button>
                        </a>
                    {/if}
                </div>
        </div>
    </div>
</div>

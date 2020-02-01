<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-classic navbar-top py-3">
				<div class="container user-personal-bar">
					<div class="align-items-center autofit-row">
						<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
							<#-- <img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" /> -->
							<img alt="globethics-logo" class="globethics-logo" src="${images_folder}/globethics/GE_logo.png" />


<#--						<#if show_site_name>
								<h2 class="font-weight-bold h2 mb-0 text-dark" role="heading" aria-level="1">${site_name}</h2>
							</#if>
-->
						</a>

						<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

						<div class="autofit-col autofit-col-expand">
							<#if show_header_search>
								<div class="justify-content-md-end mr-4 navbar-form" role="search">
									<@liferay.search_bar default_preferences="${preferences}" />
								</div>
							</#if>
						</div>
							
						<div class=autofit-col">
							<div class="justify-content-md-end mr-4 language-bar">
								<@liferay_ui["language"]/>
							</div>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-classic navbar-expand-md navbar-light header-navigation">
				<div class="container">
					<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs" href="${site_default_url}" rel="nofollow">
					<#-- <img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" /> -->
						<img alt="globethics-logo" class="globethics-logo" src="${images_folder}/globethics/GE_logo.png" />
<#--
						<#if show_site_name>
							<h2 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h2>
						</#if>
-->
					</a>

					<#include "${full_templates_path}/navigation.ftl" />
				</div>
			</div>
		</header>
	</#if>

	<section class="${portal_content_css_class}" id="content">
		<h2 class="sr-only" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_footer>
		<footer id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-md-8 text-center text-md-left">
						<#-- example of translation in theme
						<@liferay.language key="powered-by" />
						-->
						
						<div class="footer-navigation">					        
					        <#assign secondaryNavigationPreferencesMap = 
							  {
							    "displayStyle": "ddmTemplate_NAVBAR-BLANK-JUSTIFIED-FTL", 
							    "portletSetupPortletDecoratorId": "barebone", 
							    "siteNavigationMenuId": "36606", 
							    "siteNavigationMenuType": "-1",
							    "rootLayoutType": "relative",
							    "rootMenuItemType": "absolute"
							  } 
							    
							    <#--
							    _com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--siteNavigationMenuId--: 36606
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--siteNavigationMenuType--: -1
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_selectNavigation: -1
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--displayStyleGroupId--: 20124
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--displayStyle--: ddmTemplate_NAVBAR-BLANK-FTL
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--rootMenuItemType--: absolute
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--rootMenuItemLevel--: 0
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--rootMenuItemId--: 0
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--displayDepth--: 0
								_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_preferences--expandedLevels--: auto
								-->
							/>
							
							<@liferay.navigation_menu
							  default_preferences=freeMarkerPortletPreferences.getPreferences(secondaryNavigationPreferencesMap)
							  instance_id="main_navigation_menu"
							/>
						</div>
					</div>
					
					
					<div class="col-md-4 text-center text-md-right social-icons">
						<a target="_blank" href="http://www.twitter.com/Globethicsnet" class="social-twitter"></a>
						<a target="_blank" href="http://www.facebook.com/pages/Globethicsnet/136514836382848" class="social-facebook"></a>
						<a target="_blank" href="https://www.youtube.com/user/Globethics" class="social-youtube"></a>
						<a target="_blank" href="https://www.flickr.com/photos/globethicsnet" class="social-flickr"></a>
						<a target="_blank" href="https://www.linkedin.com/company/956118" class="social-linkedin"></a>
					</div>
				</div>
			</div>
		</footer>
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>
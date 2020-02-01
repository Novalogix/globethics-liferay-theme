<#if has_navigation && is_setup_complete>
	<button aria-controls="navigationCollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right" data-target="#navigationCollapse" data-toggle="collapse" type="button">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
	
		<#assign primaryNavigationPreferencesMap = 
		  {
		    "displayStyle": "ddmTemplate_NAVBAR-BLANK-JUSTIFIED-FTL",
		    "siteNavigationMenuId": "0", 
		    "siteNavigationMenuType": "-1",
		    "rootLayoutType": "relative",
		    "rootMenuItemType": "absolute",
		    "rootMenuItemLevel": "0"
		  } 
		/>
	
		<@liferay.navigation_menu default_preferences=freeMarkerPortletPreferences.getPreferences(primaryNavigationPreferencesMap) />
	</div>
</#if>
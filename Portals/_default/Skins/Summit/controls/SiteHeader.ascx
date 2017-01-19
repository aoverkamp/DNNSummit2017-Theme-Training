<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Search" Src="~/Admin/Skins/search.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>

<header class="site-header">
	<div class="container">
		<nav class="navbar">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="navbar-brand logo">
					<dnn:Logo runat="server" id="dnnLogo" /> 
				</div>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<div class="search">
					<div class="collapse" id="collapseSearch">
					  <dnn:Search runat="server" id="dnnSearch" ShowSite="false" ShowWeb="false" SiteText="search..." Submit="" />
					</div>
					<a class="search-toggle hidden-xs" role="button" data-toggle="collapse" href="#collapseSearch" aria-expanded="false" aria-controls="collapseExample">
						<i class="fa fa-search" aria-hidden="true"></i>
					</a>
				</div>
				<ddr:MENU MenuStyle="BootstrapNav" runat="server" />
			</div>
		</nav>
	</div>
</header>
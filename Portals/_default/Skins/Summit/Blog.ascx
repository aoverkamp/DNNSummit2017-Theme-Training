<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="summit" TagName="CommonResources" src="controls/CommonResources.ascx" %>
<%@ Register TagPrefix="summit" TagName="SiteHeader" src="controls/SiteHeader.ascx" %>
<%@ Register TagPrefix="summit" TagName="SiteFooterInfo" src="controls/SiteFooterInfo.ascx" %>

<summit:CommonResources runat="server" />

<div id="Summit" class="summit blog">
	<summit:SiteHeader runat="server" /> 
	<main class="site-content-area" role="main">
		<div class="container-fluid">
			<div class="row hero-row">
				<div runat="server" id="Hero" class="pane"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div runat="server" id="ContentPane" class="pane blog-pane col-md-12"></div>
			</div>
		</div>
	</main>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div runat="server" id="FooterCol1of3" class="pane col-md-4 col-sm-4"></div>
				<div runat="server" id="FooterCol2of3" class="pane col-md-6 col-sm-4"></div>
				<div runat="server" id="FooterCol3of3" class="pane col-md-2 col-sm-4 col-xs-12"></div>
			</div>
		</div>
		<summit:SiteFooterInfo runat="server" /> 
	</footer>
</div>
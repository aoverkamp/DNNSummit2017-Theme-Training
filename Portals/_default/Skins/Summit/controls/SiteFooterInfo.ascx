<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Privacy" Src="~/Admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Terms" Src="~/Admin/Skins/terms.ascx" %>

<div class="site-infobar">
	<div class="container">
		<div class="row">
			<div class="card col-md-6">
				<div class="copyright"><dnn:Copyright runat="server" id="dnnCopyright" /></div>
			</div>
			<div class="card col-md-6">
				<ul>
					<li><dnn:Privacy runat="server" id="dnnPrivacy" Text="Privacy Policy" /></li>
					<li><dnn:Terms runat="server" id="dnnTerms" Text="Terms & Conditions" /></li>
					<li><a href="#Summit">Back to Top</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
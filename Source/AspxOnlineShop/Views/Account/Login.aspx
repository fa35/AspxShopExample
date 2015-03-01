<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AspxOnlineShop.Models.Login>" %>

<asp:Content ID="loginContent" ContentPlaceHolderID="content" runat="server">

    <%using (Html.BeginForm("Login", "Account", FormMethod.Post, "class='form-horizontal'"))
      { %>

    <div class="form-group col-sm-10">

        <label class="control-label col-sm-2" for="mailaddress">E-Mail</label>
        <div class="col-sm-3">
            <input type="text" name="mailaddress" placeholder="E-Mail Adresse" title="E-Mail Adresse" class='form-control' required />
        </div>
        <div class="col-sm-4">
            <button type="submit" class="btn btn-success" style="width: 200px; float: right">anmelden</button>
        </div>
    </div>

    <div class="form-group col-sm-10">
        <label class="control-label col-sm-2" for="password">Passwort</label>
        <div class="col-sm-3">
            <input type="text" name="password" placeholder="Passwort" title="Passwort" class="form-control" required />
        </div>
    </div>

    <div class="form-group col-sm-10">
        <div class="col-sm-10">
            Oder <%: Html.ActionLink("registrieren", "Register") %> dich hier, falls du noch keinen Account hast!
        </div>
    </div>

    <% } %>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>

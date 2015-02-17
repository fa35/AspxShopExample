<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AspxOnlineShop.Models.Registration>" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Register
</asp:Content>

<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Register.</h1>
        <h2>Create a new account.</h2>
    </hgroup>

    <% using (Html.BeginForm())
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary() %>

    <fieldset>
        <legend>Registration Form</legend>

        <ol>
            <li>
                <input type="text" name="lastname" placeholder="Nachname" title="Nachname" required />
                <input type="text" name="firstname" placeholder="Vorname" title="Vorname" required />
            </li>
            <li>
                <input type="date" id="birthday" required />
                <input type="text" name="street" placeholder="Straße" title="Straße" required />
                <input type="text" name="housnr" placeholder="Hausnummer" title="Haus Nr." required />
            </li>
            <li>
                <input type="number" name="postal" title="PLZ" value="10000" min="10000" max="99999" required />
                <input type="text" name="place" placeholder="Ort" title="Ort" required />
                <input type="text" placeholder="Land" title="Land" required />
            </li>

            <li>
                <input type="email" name="mail" placeholder="E-Mail Adresse" title="Email" required />
                <input type="password" name="password" placeholder="Passwort" title="Passwort" required />
                <input type="password" name="againpassword" placeholder="Passwort wiederholen" title="Passwort wiederholen" required />
            </li>
        </ol>
        <input type="submit" value="Register" />
    </fieldset>
    <% } %>
</asp:Content>



<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>

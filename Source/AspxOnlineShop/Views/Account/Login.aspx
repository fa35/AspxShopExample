<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AspxOnlineShop.Models.Login>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log in
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Log in.</h1>
    </hgroup>

    <section id="loginForm">
    <h2>Use a local account to log in.</h2>
    <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl })) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Log in Form</legend>
            <ol>
                <li>
                    <%: Html.LabelFor(m => m.MailAddress) %>
                    <%: Html.TextBoxFor(m => m.MailAddress) %>
                    <%: Html.ValidationMessageFor(m => m.MailAddress) %>
                </li>
                <li>
                    <%: Html.LabelFor(m => m.Password) %>
                    <%: Html.PasswordFor(m => m.Password) %>
                    <%: Html.ValidationMessageFor(m => m.Password) %>
                </li>
            </ol>
            <input type="submit" value="Log in" />
        </fieldset>
        <p>
            <%: Html.ActionLink("Register", "Register") %> if you don't have an account.
        </p>
    <% } %>
    </section>

</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>

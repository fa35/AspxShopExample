<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<% if (Request.IsAuthenticated)
   { %>
    Hello, <%: Html.ActionLink(User.Identity.Name, "Manage", "Account", routeValues: null, htmlAttributes: new { @class = "username", title = "Manage" }) %>!
    <% using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm" }))
       { %>
<%: Html.AntiForgeryToken() %>
<a href="javascript:document.getElementById('logoutForm').submit()">Log off</a>
<% } %>
<% }
   else
   { %>

<%--<section><%: Html.Partial("_LoginPartial") %></section>--%>

<ul class="menulist">
    <li><%: Html.ActionLink("Register", "Register", "Account")%></li>
    <li><%: Html.ActionLink("Log in", "Login", "Account")%></li>
    <li><%: Html.ActionLink("Home", "Index", "Home")%></li>
    <li><%: Html.ActionLink("About", "About", "Home")%></li>
    <li><%: Html.ActionLink("Contact", "Contact", "Home")%></li>
    <li><%: Html.ActionLink("Warenkorb", "Index", "Cart")%></li>
</ul>

<% } %>
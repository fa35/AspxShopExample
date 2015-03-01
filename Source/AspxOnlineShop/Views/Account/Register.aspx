<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AspxOnlineShop.Models.Registration>" %>


<asp:Content ContentPlaceHolderID="content" runat="server">

    <%using (Html.BeginForm("Register", "Account", FormMethod.Post, "class='form-horizontal'"))
      { %>

    <div class="form-group col-sm-10">

        <label class="control-label col-sm-2" for="lastname">Nachname</label>
        <div class="col-sm-3">
            <input type="text" name="lastname" placeholder="Nachname" title="Nachname" class="form-control" required />
        </div>
        <label class="control-label col-sm-2" for="firstname">Vorname</label>
        <div class="col-sm-3">
            <input type="text" name="firstname" placeholder="Vorname" title="Vorname" class="form-control" required />
        </div>
    </div>

    <div class="form-group col-sm-10">
        <label class="control-label col-sm-2" for="birthday">Geburtstag</label>
        <div class="col-sm-3">
            <input type="date" name="birthday" class="form-control" required />
        </div>
        <label class="control-label col-sm-2" for="street">Straße</label>
        <div class="col-sm-3">
            <input type="text" name="street" placeholder="Straße" title="Straße" class="form-control" required />
        </div>
    </div>

    <div class="form-group col-sm-10">
        <label class="control-label col-sm-2" for="housnr">Hausnummer</label>
        <div class="col-sm-3">
            <input type="text" name="housnr" placeholder="Hausnummer" title="Haus Nr." class="form-control" required />
        </div>
        <label class="control-label col-sm-2" for="postal">PLZ</label>
        <div class="col-sm-3">
            <input type="number" name="postal" title="PLZ" value="10000" min="10000" max="99999" class="form-control" required />
        </div>
    </div>

    <div class="form-group col-sm-10">
        <label class="control-label col-sm-2" for="place">Ort</label>
        <div class="col-sm-3">
            <input type="text" name="place" placeholder="Ort" title="Ort" class="form-control" required />
        </div>
        <label class="control-label col-sm-2" for="land">Land</label>
        <div class="col-sm-3">
            <input type="text" name="land" placeholder="Land" title="Land" class="form-control" required />
        </div>
    </div>


    <div class="form-group col-sm-12">
        <label class="control-label col-sm-1" for="mail">Email</label>
        <div class="col-sm-3">
            <input type="email" name="mail" placeholder="E-Mail Adresse" title="Email" class="form-control" required />
        </div>
        <div class="col-sm-3">
            <input type="email" name="againmail" placeholder="Mail.Adresse wiederholen" title="Email" class="form-control" required />
        </div>
    </div>

    <div class="form-group col-sm-12">
        <label class="control-label col-sm-1" for="password">Passwort</label>
        <div class="col-sm-3">
            <input type="password" name="password" placeholder="Passwort" title="Passwort" class="form-control" required />
        </div>
        <div class="col-sm-3">
            <input type="password" name="againpassword" placeholder="Passwort wiederholen" title="Passwort wiederholen" class="form-control" required />
        </div>
    </div>

    <div class="form-group col-sm-10">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-success" style="width: 200px; float: right">registrieren</button>
        </div>
    </div>


    <% } %>
</asp:Content>

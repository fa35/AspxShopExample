using System.Web.Mvc;
using AspxOnlineShop.Converter;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Controllers
{
    public class AccountController : Controller
    {
        // /Account/Login

        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Login(Login model)
        {
            // checke model
            var converter = new AccountConverter();

            var nutzer = converter.ConvertToNutzer(model);

            if (nutzer == null)
            {
                ViewBag.Message = "E-Mail Adresse oder Passwort falsch.";
                return View("Error");
            }

            return View("AccountData", nutzer);
        }

     
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

    }

   
}

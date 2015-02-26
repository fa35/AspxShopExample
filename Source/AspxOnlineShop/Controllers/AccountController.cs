using System.Web.Mvc;
using AspxOnlineShop.Converter;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Controllers
{

    public class AccountController : Controller
    {
        //
        //   
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }


        //
        //    
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Login model)
        {
            // checke model
            var converter = new AccountConverter();

            var nutzer = converter.ConvertToNutzer(model);

            if(nutzer == null)
                ModelState.AddModelError("", "The user name or password provided is incorrect.");

            return View("AccountData", nutzer);
        }


        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        
    }

   
}

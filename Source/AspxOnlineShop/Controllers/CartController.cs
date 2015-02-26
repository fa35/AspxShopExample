using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AspxOnlineShop.Database;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Controllers
{
    public class CartController : Controller
    {
        //
        // GET: /Cart/

        public ActionResult Index()
        {
            var list = new List<ArticleAtCardModel>();
            return View("Cart", list);
        }

        public ActionResult Billing()
        {
            var model = new BillingModel();

           
            return View("Billing", model);
        }
    }

}

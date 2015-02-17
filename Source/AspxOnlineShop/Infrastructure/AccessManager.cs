using System;
using System.Linq;
using AspxOnlineShop.Database;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Infrastructure
{
    public class AccessManager
    {
        private readonly ShopDbDataContext _shopDc;

        public AccessManager()
        {
            _shopDc = new ShopDbDataContext();
        }


        public bool ProofExistingNutzer(Login login)
        {
            if (!_shopDc.Nutzers.Any())
                return false;

            var exits =
                _shopDc.Nutzers.Any(
                    n =>
                        n.EMail.Equals(login.MailAddress,
                            StringComparison.InvariantCultureIgnoreCase) && n.Passwort.Equals(login.Password));
            return exits;
        }


        public Nutzer GetNutzer(Login login)
        {
           return _shopDc.Nutzers.First(
               n =>
                   n.EMail.Equals(login.MailAddress,
                       StringComparison.InvariantCultureIgnoreCase) && n.Passwort.Equals(login.Password));
        }


    }
}
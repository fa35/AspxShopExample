using System.Net.Mail;
using AspxOnlineShop.Database;
using AspxOnlineShop.Infrastructure;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Converter
{
    public class AccountConverter
    {
        private AccessManager _manager;

        public AccountConverter()
        {
            _manager = new AccessManager();
        }


        public Nutzer ConvertToNutzer(Login login)
        {
            var exits = _manager.ProofExistingNutzer(login);

            if (!exits)
                return null;

            return _manager.GetNutzer(login);
        }



        public Nutzer ConvertToAccount(Registration registration)
        {
            var nutzer = new Nutzer();


            if(string.IsNullOrWhiteSpace(registration.FirstName))
                return null;
            nutzer.Vorname = registration.FirstName;


            if (string.IsNullOrWhiteSpace(registration.LastName))
                return null;
            nutzer.Name = registration.LastName;


            if (string.IsNullOrWhiteSpace(registration.MailAddress) || !registration.MailAddress.Contains("@"))
                return null;
            nutzer.EMail = registration.MailAddress;

            var mma = new MailAddress(registration.MailAddress);


            if (string.IsNullOrWhiteSpace(registration.Password))
                return null;
            nutzer.Passwort = registration.Password;


            if(string.IsNullOrWhiteSpace(registration.Street))
                return null;
            nutzer.Strasse = registration.Street;


            if (string.IsNullOrWhiteSpace(registration.HouseNr))
                return null;
            nutzer.HausNr = registration.HouseNr;


            var pc = int.Parse(registration.PostalCode);

            if (pc < 10000)
                return null;
            nutzer.PLZ = pc;


            if (string.IsNullOrWhiteSpace(registration.Place))
                return null;
            nutzer.Ort = registration.Place;


            return nutzer;
        }

    }
}
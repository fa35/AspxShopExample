using System.Net.Mail;
using AspxOnlineShop.Database;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Converter
{
    public class AccountConverter
    {
        public Nutzer ConvertToAccount(Registration reg)
        {
            var nutzer = new Nutzer();


            if(string.IsNullOrWhiteSpace(reg.FirstName))
                return null;
            nutzer.Vorname = reg.FirstName;


            if (string.IsNullOrWhiteSpace(reg.LastName))
                return null;
            nutzer.Name = reg.LastName;


            if (string.IsNullOrWhiteSpace(reg.MailAddress) || !reg.MailAddress.Contains("@"))
                return null;
            nutzer.EMail = reg.MailAddress;

            var mma = new MailAddress(reg.MailAddress);


            if (string.IsNullOrWhiteSpace(reg.Password))
                return null;
            nutzer.Passwort = reg.Password;


            if(string.IsNullOrWhiteSpace(reg.Street))
                return null;
            nutzer.Strasse = reg.Street;


            if (string.IsNullOrWhiteSpace(reg.HouseNr))
                return null;
            nutzer.HausNr = reg.HouseNr;


            var dig = int.Parse(reg.PostalCode);

            if (dig == null || dig < 10000)
                return null;
            nutzer.PLZ = dig;


            if (string.IsNullOrWhiteSpace(reg.Place))
                return null;
            nutzer.Ort = reg.Place;


            return nutzer;
        }

    }
}
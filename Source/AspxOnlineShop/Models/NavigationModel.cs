using System.Collections.Generic;

namespace AspxOnlineShop.Models
{
    public class NavigationModel
    {
        public Dictionary<string, List<string>> Groups { get; set; }

        public NavigationModel()
        {
            Groups = new Dictionary<string, List<string>>();
        }
    }


}
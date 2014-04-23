using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Masterpage_BikaryMasterPage : System.Web.UI.MasterPage
{
    String SideProducts = String.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            EmptyCartLabel.Visible = false;
            SideProducts = Convert.ToString(Request.Cookies["userInfo"]["products"]);
     }
        catch (Exception exi)
        {
            SideProducts = String.Empty;
            EmptyCartLabel.Visible = true;
        }
        if (SideProducts.Length >= 2) Image1.ImageUrl = findPictureURL((SideProducts.Substring(SideProducts.Length - 2, 2)));

        if (SideProducts.Length >= 4) Image2.ImageUrl = findPictureURL((SideProducts.Substring(SideProducts.Length - 4, 2)));

        if (SideProducts.Length >= 6) Image3.ImageUrl = findPictureURL((SideProducts.Substring(SideProducts.Length - 6, 2)));

    }          //end page load

    public String findPictureURL(String index)
    {
        //DONT GET RID OF MY ZEROS THEY ARE NESSECARY
        switch (index)
        { 
            
            //fyi numbers and Product Ids correspond

            case "01" : return "~/Pictures/Products/Cool/1800sBicycle.png";
            case "02": return "~/Pictures/Products/Cool/bambooBike.png";
            case "03": return "~/Pictures/Products/Cool/stealthBike.jpg";
            case "04": return "~/Pictures/Products/Cool/electricBike.jpeg";
            case "05": return "~/Pictures/Products/Cool/tallBike.jpg";
            case "06": return "~/Pictures/Products/Cool/unicornBike.jpg ";
            //case 07: return "Multiple of ten";
            //case 08: return "Multiple of ten";
            //case 09:  return "Multiple of ten";
            //case 10: return "Multiple of ten";
            //case 11: return "Multiple of ten";
            //case 12:
            //        return "Multiple of ten";
            //case 13:
            //        return "Multiple of ten";
            //case 14:
            //        return "Multiple of ten";
            //case 15:
            //        return "Multiple of ten";
            //case 16:
            //        return "Multiple of ten";

            default: return "~/Pictures/noitem.png"; //feel free to change the image
        } //end case



} //end find url


}//end class

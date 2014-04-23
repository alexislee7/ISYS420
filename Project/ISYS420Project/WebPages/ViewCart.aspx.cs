using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_ViewCart : System.Web.UI.Page
{

    String Products = String.Empty;

    protected void submitCartButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Checkout.aspx");
    }



    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {  
            Products = Convert.ToString(Request.Cookies["userInfo"]["products"]);
        }
        catch (Exception excepti)
        {
            Products = null;           
      
        }//end try

    }//end load




}       //end class
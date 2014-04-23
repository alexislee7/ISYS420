using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_Home : System.Web.UI.Page{


    String username = null;
    String products = null;
    protected void Page_Load(object sender, EventArgs e)
    {
   
    
     
        try
        {
            username = Convert.ToString(Request.Cookies["userInfo"]["username"]);
            products = Convert.ToString(Request.Cookies["userInfo"]["products"]);

        }
        catch (Exception exceptionName)
        {
            products = "none";
           username = "logout";
        }

    
  
    
    
    }


    protected void LogoutButton_Click(object sender, EventArgs e)
    {

        HttpCookie bikeryuserCookie = new HttpCookie("userInfo");
        bikeryuserCookie.Values["products"] = "none";
        bikeryuserCookie.Values["username"] = "logout";
        bikeryuserCookie.Expires = DateTime.Now.AddMinutes(20);
        Response.Cookies.Add(bikeryuserCookie);
        
    
    }
    public void LoginButton_Click(object sender, EventArgs e)
    {
        HttpCookie bikeryuserCookie = new HttpCookie("userInfo");
        bikeryuserCookie.Values["products"] = products;
        bikeryuserCookie.Values["userName"] = UserNameTextBox.Text;
        bikeryuserCookie.Expires = DateTime.Now.AddMinutes(20);
        Response.Cookies.Add(bikeryuserCookie);

        string name = Response.Cookies["userinfo"]["username"];

        UserNameTextBox.Text = name;

        
    }
}
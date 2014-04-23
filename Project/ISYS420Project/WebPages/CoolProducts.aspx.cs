using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_SubProductPages_CoolProducts : System.Web.UI.Page
{
    String username = null;
    String products = null;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        try
        {
            username = Convert.ToString(Request.Cookies["userInfo"]["username"]);
            products = Convert.ToString(Request.Cookies["userInfo"]["products"]);
        }
        catch (Exception exName)
        {
          
            
        }

        if (username == "logout")
        {
            usernamelabel.Visible = true;
            addToCartButton.Visible = false;
            usernamelabel.Text = "you must log in to shop";
        }

        else
        {
            usernamelabel.Visible = true;
            usernamelabel.Text = "hi " + username;
            addToCartButton.Visible = true;
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Cool/1800sBicycle.png";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "01";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Cool/bambooBike.png";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "02";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Cool/stealthBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "03";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Cool/electricBike.jpeg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "04";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Cool/tallBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "05";
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Cool/unicornBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "06";
    }
  
    
    protected void addToCartButton_Click(object sender, EventArgs e)
    {
        HttpCookie bikeryuserCookie = new HttpCookie("userInfo");

        bikeryuserCookie.Values["username"] = username;

        bikeryuserCookie.Values["products"] = products + Label1.Text;
        
        
        
        bikeryuserCookie.Expires = DateTime.Now.AddMinutes(20);
        Response.Cookies.Add(bikeryuserCookie);
      
    }
  
}
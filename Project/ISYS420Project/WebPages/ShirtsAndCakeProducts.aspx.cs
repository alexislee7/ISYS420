using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_SubProductPages_ShirtsAndCakeProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/ShirtsAndCake/bikeryshirt.png";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "12";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/ShirtsAndCake/hamburgerCake.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "13";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/ShirtsAndCake/rainbowCake.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "14";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/ShirtsAndCake/coneCake.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "15";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/ShirtsAndCake/unicornCake.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "16";
    }
    protected void addToCartButton_Click(object sender, EventArgs e)
    {

     
    }

}
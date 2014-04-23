using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_SubProductPages_SeriousProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Serious/70sBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "07";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Serious/mountainBike.jpeg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "08";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Serious/roadBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "09";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Serious/bmxBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "10";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        selectedImage.ImageUrl = "~/Pictures/Products/Serious/fixieBike.jpg";
        selectedImage.Visible = true;
        productDetails.Visible = true;
        addToCartButton.Visible = true;
        Label1.Text = "11";
    }
    protected void addToCartButton_Click(object sender, EventArgs e)
    {

   
    }
}
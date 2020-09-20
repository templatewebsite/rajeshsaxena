using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    BindGrid();
        //}

    }
    //public void BindGrid()
    //{
    //    SqlCommand cmd = new SqlCommand("SELECT TOP 1 * FROM Resume order by id Desc", con);

    //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    sda.Fill(dt);
    //    Repeater1.DataSource = dt;
    //    Repeater1.DataBind();


    //}
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("INSERT INTO contactdetail (name,mobileno,email,city,message,regdate) VALUES('" + txt_name.Text + "','" + txt_mob.Text + "','" + txt_email.Text + "','" + txt_city.Text + "','" + txt_msg.Text + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "')", con);
    //    int i = cmd.ExecuteNonQuery();
    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert('Thank You For the Contact !')</script>");
    //        txt_name.Text = "";
    //        txt_mob.Text = "";
    //        txt_email.Text = "";
    //        txt_city.Text = "";
    //        txt_msg.Text = "";
    //    }
    //    con.Close();
    //}
    }

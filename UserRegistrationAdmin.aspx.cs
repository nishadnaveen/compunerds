using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string p = "~/userreg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            SqlDataSource1.InsertParameters["imagepath"].DefaultValue = p;
            SqlDataSource1.Insert();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Write("<script>alert('User Registered')</script>");
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        object id = GridView1.DataKeys[e.RowIndex].Value;
        string con_string = WebConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
        string qry = "select imagepath from User where roll_no=" + id;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string oldpath = dt.Rows[0]["imgepath"].ToString();
        FileUpload fp2 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload2");
        if(fp2.HasFile)
        {
            string p = "~/userreg/" + fp2.FileName;
            fp2.SaveAs(MapPath(p));
            SqlDataSource1.UpdateParameters["imagepath"].DefaultValue = p;
            FileInfo f = new FileInfo(MapPath(oldpath));
            f.Delete();
        }
        else
        {
            SqlDataSource1.UpdateParameters["imagepath"].DefaultValue = oldpath;
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        object id = GridView1.DataKeys[e.RowIndex].Value;
        string con_string = WebConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
        string qry = "select ImagePath from User where roll_no=" + id;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string oldpath = dt.Rows[0]["imagepath"].ToString();
        FileInfo f = new FileInfo(MapPath(oldpath));
        f.Delete();
    }
}
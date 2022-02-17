﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Databaselearning.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(con.State == ConnectionState.Open)
        {
            con.Close();
        }
            con.Open();

           disp_data();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into table1 values('"+ firstname.Text +"','"+lastname.Text +"','"+ city.Text+"')";
        cmd.ExecuteNonQuery();

        firstname.Text = "";
        lastname.Text = "";
        city.Text = "";

        disp_data();
    }

    public void disp_data()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Table1";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
                
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from Table1 where firstname ='"+ firstname.Text+"'";
        cmd.ExecuteNonQuery();

        firstname.Text = "";
        disp_data();

    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Table1 set firstname ='" + firstname.Text + "',lastname ='" + lastname.Text + "',city ='" + city.Text + "' where id =" + Convert.ToInt32(oldid.Text) + "";
        cmd.ExecuteNonQuery();

        firstname.Text = "";
        lastname.Text = "";
        city.Text = "";

        disp_data();

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        disp_data();
    }
}
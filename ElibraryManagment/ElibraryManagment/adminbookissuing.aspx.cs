using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagment
{
    public partial class adminbookissuing : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //go button
        protected void Button3_Click(object sender, EventArgs e)
        {
            getNames();
        }

        //issue book button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkIfBookExist() && checkIfMemberExist())
            {
                issueBook();
            }
            else
            {
                Response.Write("<script>alert('Wrong book ID or member ID');</script>");
            }
        }

        //return book button
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        //user defined function


        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_isse_tbl(member_id, member_name, book_id, book_name, isse_date, due_date) values (@member_id, @member_name, @book_id, @book_name, @isse_date, @due_date)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@isse_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock-1 WHERE book_id='" + TextBox3.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book issued Successfully'); </script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name from book_maser_tbl WHERE book_id='" + TextBox2.Text.Trim() + "'AND current_stock > 0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
              
            }
        }


        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT full_name from member_maser_tbl WHERE member_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name from book_maser_tbl WHERE book_id='" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong book ID');</script>");
                }
                cmd = new SqlCommand("SELECT full_name from member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong user ID');</script>");
                }


            }
            catch (Exception ex)
            {

            }
        }
    }
}
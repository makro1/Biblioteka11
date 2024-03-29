﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagment
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // user sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // admin management button
                    LinkButton12.Visible = false; // admin management button
                    LinkButton8.Visible = false; // admin management button
                    LinkButton9.Visible = false; // admin management button
                    LinkButton10.Visible = false; // admin management button
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // user sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // admin management button
                    LinkButton12.Visible = false; // admin management button
                    LinkButton8.Visible = false; // admin management button
                    LinkButton9.Visible = false; // admin management button
                    LinkButton10.Visible = false; // admin management button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // user sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin ";

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // admin management button
                    LinkButton12.Visible = true; // admin management button
                    LinkButton8.Visible = true; // admin management button
                    LinkButton9.Visible = true; // admin management button
                    LinkButton10.Visible = true; // admin management button
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpulblishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermenagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //lougout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // user sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button

            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = false; // admin management button
            LinkButton12.Visible = false; // admin management button
            LinkButton8.Visible = false; // admin management button
            LinkButton9.Visible = false; // admin management button
            LinkButton10.Visible = false; // admin management button

            Response.Redirect("homepage.aspx");
        }
    }
}
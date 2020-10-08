﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsTraining2020.modul09
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<WebformsTraining2020.modul09.Customers> Repeater1_GetData()
        {
            var db = new Model1();

            return db.Customers.Where(
                x=>x.CompanyName.Contains(TextBox1.Text) |
                x.ContactName.Contains(TextBox1.Text)).ToList(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataBind();
        }
    }
}
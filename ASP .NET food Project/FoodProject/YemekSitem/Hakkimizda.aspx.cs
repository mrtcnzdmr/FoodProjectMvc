﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkimizda", bgl.Baglanti());
            SqlDataReader dr4 = komut.ExecuteReader();
            DataList2.DataSource = dr4;
            DataList2.DataBind();
        }
    }
}
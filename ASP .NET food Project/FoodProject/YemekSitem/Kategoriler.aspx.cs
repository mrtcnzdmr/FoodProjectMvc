using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        string islem = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Kategoriler where KategoriId=@p1", bgl.Baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }


            //Panel2.Visible = false;
            //Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}
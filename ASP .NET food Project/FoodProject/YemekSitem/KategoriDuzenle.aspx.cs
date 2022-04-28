using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"];
            if(Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler where KategoriId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtKategoriAd.Text = dr[1].ToString();
                    txtKategoriAdet.Text = dr[2].ToString();
                }
                bgl.Baglanti().Close();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where KategoriId=@p3", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", txtKategoriAdet.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}
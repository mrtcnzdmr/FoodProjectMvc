using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class AdminDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId where YorumId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtYorumAdSoyad.Text = dr[0].ToString();
                    txtYorumMail.Text = dr[1].ToString();
                    txtIcerik.Text = dr[2].ToString();
                    txtYemek.Text = dr[3].ToString();
                }
                bgl.Baglanti().Close();
            }
        }

        protected void btnOnay_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}
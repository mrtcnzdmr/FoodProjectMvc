using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YemekId"];
            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where YemekId=@p1",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.Baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where YemekId=@p2",bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@p1,@p2,@p3,@p4)",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtMail.Text);
            komut.Parameters.AddWithValue("@p3", txtYorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            Response.Write("Yorumunuz alınmıştır.");
            
        }
    }
}
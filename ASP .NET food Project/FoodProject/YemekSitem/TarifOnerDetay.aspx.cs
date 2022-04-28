using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where TarifId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtTarifAd.Text = dr[1].ToString();
                    txtTarifMalzeme.Text = dr[2].ToString();
                    txtYapilis.Text = dr[3].ToString();
                    txtTarifOneren.Text = dr[5].ToString();
                    txtOnerenMail.Text = dr[6].ToString();
                }
                bgl.Baglanti().Close();

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            // Durum Güncelleme
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where TarifId=@p1",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

            //Yemeği AnaSayfaya Ekleme
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", txtTarifMalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", txtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}
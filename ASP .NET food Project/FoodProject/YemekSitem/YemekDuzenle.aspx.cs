using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where YemekId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtYemekAd.Text = dr[1].ToString();
                    txtMalzemeler.Text = dr[2].ToString();
                    txtTarif.Text = dr[3].ToString();
                }
                bgl.Baglanti().Close();



                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriId";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/"+FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,KategoriId=@p4,YemekResim=@p5 where YemekId=@p6", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", txtTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/Resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p6", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yapma
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0",bgl.Baglanti());
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

            //Günün yemeği için id ye göre durumu true yapalım

            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler set durum=1 where YemekId=@p1",bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}
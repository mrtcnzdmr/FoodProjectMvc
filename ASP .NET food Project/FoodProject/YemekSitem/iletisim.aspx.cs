using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekSitem
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonderMesaj_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values (@p1,@p2,@p3,@p4)",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtMailMesaj.Text);
            komut.Parameters.AddWithValue("@p3", txtMesajKonu.Text);
            komut.Parameters.AddWithValue("@p4", txtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            Response.Write("Mesajınız alınmıştır. Teşekkür ederiz.");
            
            
            
        }
    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekSitem.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>KATEGORİ AD:&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="fb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="txtKategoriAdet" runat="server" CssClass="fb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fb8" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style3" OnClick="btnGuncelle_Click" Text="Güncelle" Width="100px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

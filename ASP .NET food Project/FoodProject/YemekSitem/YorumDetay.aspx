<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekSitem.AdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
            width: 126px;
        }
        .auto-style5 {
            width: 126px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: right;
            width: 126px;
            height: 110px;
        }
        .auto-style8 {
            height: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>AD SOYAD:&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="txtYorumAdSoyad" runat="server" CssClass="fb8"  Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="txtYorumMail" runat="server" CssClass="fb8" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>İÇERİK:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="fb8" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" CssClass="fb8" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnOnay" runat="server" CssClass="auto-style6" Text="Onay" Width="100px" OnClick="btnOnay_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

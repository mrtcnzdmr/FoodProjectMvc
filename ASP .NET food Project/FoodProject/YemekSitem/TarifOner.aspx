<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekSitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
        font-weight: bold;
    }
    .auto-style4 {
        height: 23px;
    }
    .auto-style5 {
        text-align: right;
        font-weight: bold;
        height: 26px;
            width: 679px;
        }
    .auto-style6 {
        height: 26px;
    }
        .auto-style7 {
            text-align: right;
            width: 679px;
        }
        .auto-style8 {
            text-align: right;
            font-weight: bold;
            width: 679px;
            height: 40px;
        }
        .auto-style9 {
            height: 23px;
            text-align: right;
            width: 679px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style8">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Malzemeler:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Yapılış:</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td class="auto-style6" style="margin-left: 80px">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Tarif Öneren:</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mail Adresi:</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td style="margin-left: 80px">
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#CCFFFF" Height="35px" style="font-weight: 700; font-style: italic; margin-left: 50px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>

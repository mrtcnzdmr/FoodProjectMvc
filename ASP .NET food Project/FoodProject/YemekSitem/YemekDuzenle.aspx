<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekSitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
            width: 159px;
        }
        .auto-style4 {
            width: 159px;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="txtYemekAd" runat="server" CssClass="fb8" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="fb8" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF:</strong></td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" CssClass="fb8" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="fb8" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK GÖRÜNTÜ:&nbsp;</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style5" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

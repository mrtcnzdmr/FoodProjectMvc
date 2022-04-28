<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekSitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: xx-small;
        }
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style8 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%#Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%#Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style8">Yorum Yapma Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Ad Soyad:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtAdSoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="txtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnYorumYap" runat="server" CssClass="auto-style12" OnClick="Button1_Click" Text="Yorum Yap" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

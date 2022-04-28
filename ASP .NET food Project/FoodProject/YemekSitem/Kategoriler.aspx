<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekSitem.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #999999;
        }

        .auto-style4 {
            text-align: left;
            width: 248px;
        }

        .auto-style5 {
            text-align: right;
        }

        .auto-style6 {
            text-align: right;
            width: 107px;
        }

        .auto-style7 {
            font-size: large;
        }

        .auto-style8 {
            font-weight: bold;
        }

        .auto-style9 {
            width: 33px;
        }

        .auto-style10 {
            width: 32px;
        }
        .auto-style11 {
            background-color: #999999;
            margin-top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                        <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete_200px.png" Width="30px" /></a> 
                        </td>
                        <td class="auto-style5">
                         <a href="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh_80px.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">KATEGORİ AD:&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="fb8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fb8" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style8" Text="EKLE" Width="100px" OnClick="btnEkle_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekSitem.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style8 {
            background-color: #66CCFF;
        }
        .auto-style10 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
       
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style8"><strong>


                     <a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>"><asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label></a>


                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme tarihi:</strong>&nbsp;<em><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style10"></asp:Label>
                        </em><strong>&nbsp;- Puan: </strong><em>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style10"></asp:Label>
                        </em>&nbsp;</td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #C0C0C0; border-left-color: #C0C0C0"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
       
</asp:Content>

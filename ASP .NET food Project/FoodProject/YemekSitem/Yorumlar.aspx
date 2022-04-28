<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekSitem.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            background-color: #999999;
        }

        .auto-style9 {
            width: 33px;
        }

        .auto-style8 {
            font-weight: bold;
        }

        .auto-style10 {
            width: 32px;
        }
        
        .auto-style4 {
            text-align: left;
            width: 248px;
        }

        .auto-style7 {
            font-size: large;
        }

        .auto-style6 {
            text-align: right;
            width: 107px;
        }

        .auto-style5 {
            text-align: right;
        }

        .auto-style11 {
            width: 32px;
            background-color: #999999;
        }
        .auto-style12 {
            width: 33px;
            background-color: #999999;
        }
        .auto-style13 {
            width: 100%;
            background-color: #999999;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete_200px.png" Width="30px" />
                        </td>
                        <td class="auto-style5">
                         <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh_80px.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" style="margin-top:15px; background-color:#808080">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style3">ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%#Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete_200px.png" Width="30px" />
                        </td>
                        <td class="auto-style5">
                        <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh_80px.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekSitem.Tarifler" %>
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
        
        .auto-style11 {
            text-align: right;
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
                <td>ONAYSIZ TARİF&nbsp;LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                        <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/öneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="margin-top: 15px;background-color:#808080; " >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style10"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>ONAYLI TARİF&nbsp;LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
   <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                        <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/öneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekSitem.Yemekler" %>

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

        .auto-style12 {
            text-align: right;
            height: 26px;
        }

        .auto-style13 {
            height: 26px;
        }

        .auto-style14 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px" CssClass="auto-style12">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%#Eval("YemekAd")%>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Yemekler.aspx?YemekId=<%#Eval("YemekId")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete_200px.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style5">
                            <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh_80px.png" Width="30px" /></a>
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
                <td>YEMEK EKLEME</td>
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
                <td class="auto-style5">YEMEK AD:&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="fb8" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">MALZEMELER:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="fb8" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">YEMEK TARİFİ:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtYemekTarifi" runat="server" CssClass="fb8" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style8" Text="EKLE" Width="100px" OnClick="btnEkle0_Click" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekSitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>TARİF AD:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtTarifAd" runat="server" Height="20px" Width="200px" CssClass="fb8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>TARİF MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="txtTarifMalzeme" runat="server" Height="20px" Width="200px" CssClass="fb8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>YAPILIŞ:</strong></td>
                <td>
                    <asp:TextBox ID="txtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="fb8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>TARİF RESİM:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fb8" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>TARİF ÖNEREN:</strong></td>
                <td>
                    <asp:TextBox ID="txtTarifOneren" runat="server" CssClass="fb8" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>ÖNEREN MAİL:</strong></td>
                <td>
                    <asp:TextBox ID="txtOnerenMail" runat="server" CssClass="fb8" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>KATEGORİ</strong>:</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnOnayla0" runat="server" CssClass="auto-style12" OnClick="btnOnayla_Click" Text="ONAYLA" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

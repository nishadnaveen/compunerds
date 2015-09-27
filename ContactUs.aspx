<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100px;
            border: 4px solid #000000;
            background-color: #800080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="defaulleftmarq">
        <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="400px" width="160px" >
<h2 class="title">Contact Details</h2>
            <p>For any queries regarding any events you can contact to us either by sending your query or by calling on these numbers.</p>
            <ul>
                <li><a>Sudeep:</a>9792882621</li>
                <li><a>Naveen:</a>9889102777</li>
                <li><a>Ajay:</a>8808344094</li>
            </ul></marquee>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" class="auto-style4">
        <tr>
            <td>Subject</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Select File</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Query</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Index" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="3">
        <Columns>
            <asp:BoundField DataField="Index" HeaderText="Index" ReadOnly="True" SortExpression="Index" />
            <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
            <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlConnectionString %>" SelectCommand="SELECT * FROM [Reply]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>


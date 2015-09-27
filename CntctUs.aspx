<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CntctUs.aspx.cs" Inherits="CntctUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100px;
            border: 7px solid #000000;
            background-color: #CC00CC;
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
    <table class="auto-style4">
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Query</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" AllowPaging="True" PageSize="4">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" readonly="true"/>
            <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" readonly="true"/>
            <asp:TemplateField HeaderText="Answer" SortExpression="Answer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Answer") %>' TextMode="MultiLine"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Text='<%# Bind("Answer") %>' TextMode="MultiLine"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" InsertCommand="INSERT INTO CntctUs(Name, Query) VALUES (@Name, @Query)" SelectCommand="SELECT * FROM [CntctUs]" UpdateCommand="UPDATE CntctUs SET Answer = @answer where name=@name and query=@query">
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="Query" PropertyName="Text" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="answer" />
            <asp:Parameter Name="name" />
            <asp:Parameter Name="query" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>


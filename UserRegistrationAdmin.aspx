<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistrationAdmin.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
        border: 4px solid #000000;
        background-color: #591F58;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="fl_left">
        <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="400px" width="160px" >
          <h2 class="title">Current Users</h2>
          <p>CompuNerds has members from all the years of C.S.-I.T. department. Some of the current user's pictures are shown here.</p>
          <p>Wr are looking for new members who are interested in organising and conducting new events for our forum. To be part of it contact Sudeep Mukherjee of C.S. 3rd year.</p></marquee>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table align="center" class="auto-style4">
    <tr>
        <td>Enter Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Enter Roll no.</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Enter Year</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Insert Photo</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_no" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" BackColor="#99CCFF" BorderColor="#000000" AllowPaging="True" PageSize="5">
    <Columns>
        <asp:BoundField DataField="Roll_no" HeaderText="Roll_no" ReadOnly="True" SortExpression="Roll_no" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:TemplateField HeaderText="ImagePath" SortExpression="ImagePath">
            <EditItemTemplate>
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:Image ID="Image2" runat="server" Height="81px" Width="81px" ImageUrl='<%# Eval("ImagePath") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="81px" Width="81px" ImageUrl='<%# Eval("ImagePath") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [User]" InsertCommand="INSERT INTO [User] (Roll_no, Name, Year, ImagePath) VALUES (@Roll_no, @Name, @Year, @ImagePath)">
    <InsertParameters>
        <asp:ControlParameter ControlID="TextBox2" Name="Roll_no" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox3" Name="Year" PropertyName="Text" />
        <asp:Parameter Name="ImagePath" />
    </InsertParameters>
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


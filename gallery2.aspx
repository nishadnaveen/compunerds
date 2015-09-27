<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery2.aspx.cs" Inherits="gallery2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="fl_centre">
         <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="400px" width="160px" >
          <h2 class="title">Gallery Images</h2>
          <p>In past few years several events has been oragnised and conducted by CompuNerds forum and we proudly say that we have managed to bring a huge gathering in these events. CompuNerds has been succesfully conducting various events in the C.S.-I.T. department. Here are the few images of these events</p>
          </marquee>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="fl_centre">
          <ul>
            <li><img src="../images/demo/glr16.jpg" width="280" height="150" alt="" /></li>
            <li class="last"><img src="../images/demo/glr7.jpg" width="280" height="150" alt="" /></li>
          </ul>
        </div>
    <div class="fl_centre">
          <ul>
            <li><img src="../images/demo/glr13.jpg" width="280" height="150" alt="" /></li>
            <li class="last"><img src="../images/demo/glr17.jpg" width="280" height="150" alt="" /></li>
          </ul>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
     <div class="fl_centre">
          <ul>
            <li><img src="../images/demo/glr18.jpg" width="280" height="150" alt="" /></li>
            <li class="last"><img src="../images/demo/glr5.jpg" width="280" height="150" alt="" /></li>
          </ul>
        </div>
    <div class="fl_centre">
          <ul>
            <li><img src="../images/demo/glr19.jpg" width="280" height="150" alt="" /></li>
            <li class="last"><img src="../images/demo/glr1.jpg" width="280" height="150" alt="" /></li>
          </ul>
        </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
     <div class="pagination">
      <ul>
        <li class="prev"><a href="#">&laquo; Previous</a></li>
        <li><a href="gallery.aspx">1</a></li>
        <li><a href="gallery1.aspx">2</a></li>
          <li><a href="gallery2.aspx">3</a></li>
          <li class="next"><a href="#">Next &raquo;</a></li>
          </ul>
        </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>


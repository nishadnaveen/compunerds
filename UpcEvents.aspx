<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpcEvents.aspx.cs" Inherits="UpcEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="defaultleftmarq">
        <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="400px" width="160px" ><ul>
    <li>In past years many events has been organised by the compunerds forum. Some were organised by the department whereas most were organised by the students themselves. For more info visit <a href="OrgEvents.aspx" title="Events">Organised Events.</a></li>
    <li>Many more events are to be organised in future. Every saturday different events are organised by the compunerds forum. Stay in touch to keep updated <a href="UpcEvents.aspx" title="Upcoming Events">Upcoming Events.</a></li>
</ul></marquee>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="fl_left">
        <h2 class="title">Upcoming Events</h2>
    <div id="hpage_latestnews">
          <ul>
            <li>
              <div class="imgl"><img src="images/demo/poster2.jpg" alt="" width="180" height="90" /></div>
                <div class="imgl"><img src="images/demo/poster1.jpg" alt="" width="180" height="90" /></div>
              <p class="latestnews"> <a href="UpcEvents.aspx" title="Poster Making">Poster Making Competition C.S.-I.T. 2nd Year:</a>Poster making competition will be held by the students of C.S.-I.T. 2nd year on 26th of sept. Rules of competition are mentioned in it's poster. For more info visit department or <a href="UpcEvents.aspx" title="Results">Events</a></p>
              <p class="readmore"><a href="UpcEvents.aspx">Continue Reading &raquo;</a></p>
            </li>
            <li>
              <div class="imgl"><img src="images/demo/orgevn.jpg" alt="" width="180" height="90" /></div>
              <p class="latestnews"><a href="UpcEvents.aspx" title="Presentation">Presentation Event By C.S.-I.T. 3rd year:</a>It will be held on 26th sept. To participate please register.</p>
              <p class="readmore"><a href="UpcEvents.aspx">Continue Reading &raquo;</a></p>
            </li>
            
          </ul>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
     <div id="defaultrightmarq">
        <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="down" height="600px" width="170px" >
            <ul>
<li><img src="images/demo/hod.jpg" width="130" height="100"/></li>
                
                <li><img src="images/demo/ysfsr.jpg" width="130" height="100"/></li>
                <li><img src="images/demo/vnm.jpg" width="130" height="100"/></li>
                <li><img src="images/demo/myksr.jpg" width="130" height="100"/></li>
                <li><img src="images/demo/svmsr.jpg" width="130" height="100"/></li>
                <li><img src="images/demo/kpsr.jpg" width="130" height="100"/></li>
                <li><img src="images/demo/yogsr.jpg" width="130" height="100"/></li>
                <li><img src="images/demo/brjsr.jpg" width="130" height="100"/></li>
            </ul></marquee>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>


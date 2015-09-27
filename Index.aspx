
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<script runat="server">

    
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="featured_slide"> 
    <!-- ####################################################################################################### -->
    <ol>
      <li>
        <h2><span>Logo</span></h2>
        <div><img src="images/demo/glr13.jpg" alt="" width="720" height="360" /></div>
      </li>
      <li>
        <h2><span>Learning</span></h2>
        <div><img src="images/demo/featured-slide/cn1.jpg" alt="" width="720" height="360" /></div>
      </li>
      <li>
        <h2><span>College</span></h2>
        <div><img src="images/demo/featured-slide/abc1.jpg" alt="" width="720" height="360" /></div>
      </li>
      <li>
        <h2><span>Practicals</span></h2>
        <div><img src="images/demo/featured-slide/cn2.jpg" alt="" width="720" height="360" /></div>
      </li>
      <li>
        <h2><span>Events</span></h2>
        <div><img src="images/demo/featured-slide/cn3.jpg" alt="" width="720" height="360" /></div>
      </li>
    </ol>
    <!-- ####################################################################################################### --> 
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div id="homepage" class="clear">
      <div class="fl_left">
        
        <h2 class="title">Latest Gallery Images</h2>
        <div id="hpage_gallery">
          <ul class="clear">
            <li><a href="#"><img src="images/demo/b.jpg" alt="" width="175" height="130" /></a></li>
            <li class="last"><a href="#"><img src="images/demo/a.jpg" alt="" width="175" height="130" /></a></li>
            <li><a href="#"><img src="images/demo/c.jpg" alt="" width="175" height="130" /></a></li>
            <li class="last"><a href="#"><img src="images/demo/d.jpg" alt="" width="175" height="130" /></a></li>
          </ul>
        </div>
        <h2 class="title">Keep Up With What's Happening</h2>
        <div id="hpage_socialize">
          <ul>
            <li><span>Email ID:</span> <a href="#">sudeep71195@gmail.com</a></li>
            <li><span>Contact no.:</span> <a href="#">9792882621</a></li>
            
          </ul>
          <p><strong>Subscribe To Our Newsletter</strong></p>
          <p>Goel Group of Institutions aims to provide quality engineering & professional education for sharpening the technical & analytical abilities of students. We aim to provide full facility for their personality development and train them to be successful professionals as well as wealth creators for the country by enhancing their knowledge base, confidence and creativity for achieving the effective results. We dedicate ourselves to achieve high academic and ethical standard of our students.</p>
          
          
        </div>
      </div>
        
        <div class="fl_right">
            <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="down" height="210px" width="550px" >
        <h2 class="title">Latest News</h2>
        <div id="hpage_latestnews">
          <ul>
            <li>
              <div class="imgl"><img src="images/demo/cn1.jpg" alt="" width="160" height="80" /></div>
              <p class="latestnews">Teacher's day event to be held by C.S.-I.T. department students . List of events to be provided to C.R. of respective class .</p>
              
            </li>
            <li>
              <div class="imgl"><img src="images/demo/lan.jpg" alt="" width="160" height="80" /></div>
              <p class="latestnews">LAN gaming NFS Most Wanted. Students are invited to participate. </p>
             <p class="latestnews">For more details contact department(C.S.-I.T.) or Sudeep Mukherjee C.S. 3rd year.</p>
            </li>
            
          </ul>
            </marquee>
        </div>
        <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="380px" width="400px" >
        <div id="hpage_specials" class="clear">
            
          <ul>
            <li>
                
              <h2 class="title">Brochure</h2>
              <div class="box">
                <div class="imgholder"><img src="images/demo/featured-slide/abc.jpg" alt="" width="160" height="80"/></div>
                <p>"Goel Institute of Technology & Management"(GITM) believes in quality education to its students. The institute has its quality procedures such as: Learning material development including lab manuals, lecture notes and exposure of students to the information available on internet.</p>
                
              </div>
                    
            </li>
			<li>
                
              <h2 class="title">Founder's Of Forum</h2>
              <div class="box">
                <div class="imgholder"><img src="images/demo/featured-slide/founder.jpg" alt="" width="160" height="100"/></div><br/>
				<div class="imgholder"><img src="images/demo/featured-slide/cfrs.jpg" alt="" width="160" height="100"/></div><br/>
                
              </div>
                    
            </li>
           
            
           
          </ul>
            
        </div>
            </marquee>
      </div>
      
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    
</asp:Content>


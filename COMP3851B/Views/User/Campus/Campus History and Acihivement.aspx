<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Campus History and Acihivement.aspx.cs" Inherits="COMP3851B.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Three image containers (use 25% for four, and 50% for two, etc) */
.column {
  float: left;
  width: 20%;
  padding: 5px;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display : flex ; align-items : center " >
        <div style ="flex-basis :40%; margin-left: 80px;">
        <!-- UON Building Image --> 
            <img src="../../../Images/insert%20image.png" style="margin-top : 50px; margin-left: 20px; max-width : 100%"/>
        </div>
        <!-- text beside image -->
        <div>
        <p style ="padding-left :40px ; padding-right : 40px; text-align :justify; font-size : 20px"><br /><br />First compiled in 2004, the QS World University Rankings currently ranks 1,000 of the world's finest universities. <br /><br />In the 2021 QS World University Rankings our University climbed ten places from last year to now sit among the world’s Top 200 Universities. Our sector has faced a number of external challenges and the University of Newcastle itself has dealt with bushfires, droughts as well as a pandemic affecting our students, staff and communities in the past year.<br /><br />The move from 207 to 197 in twelve months reflects the University’s unwavering focus on delivering inspiring and innovative teaching and learning programs for our students and leading critical research breakthroughs.</p>
    
        </div>
    </div>

    <br />
    <div style="text-align:center; margin-top : 20px "><strong>Campus Achivement</strong></div>

<!-- Row 1 campus achivement -->
    <figure>
<div class="row">
  <div class="column">
  </div>
  <div class="column">
    <img src="../../../Images/insert%20image.png"  alt="Image2" style="width:100%">
        </div>
        </div>
      <figcaption style="text-align :center">Achivement 1 </figcaption>
  </div>

  <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image 3" style="width:100%">
        </div>
      <figcaption style="text-align :center">Achivement 2</figcaption>
  </div>
      <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image 4" style="width:100%">
          </div>
          <figcaption style="text-align :center">Achivement 3 </figcaption>
  </div>
    <div class="column">
  </div>

</div>
</figure>
<!-- Row 2 campus achivement -->
    <figure>
    <div class="row">
  <div class="column">
  </div>
  <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image2" style="width:100%">
        </div>
        </div>
      <figcaption style="text-align :center">Achivement 4 </figcaption>
  </div>

  <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image 3" style="width:100%">
        </div>
      <figcaption style="text-align :center">Achivement 5</figcaption>
  </div>
      <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image 4" style="width:100%">
          </div>
          <figcaption style="text-align :center">Achivement 6 </figcaption>
  </div>
    <div class="column">
  </div>

</div>
</figure>

<!-- Row 3 Campus achivement -->
    <figure>
<div class="row">
  <div class="column">
  </div>
  <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image2" style="width:100%">
        </div>
        </div>
      <figcaption style="text-align :center">Achivement 7 </figcaption>
  </div>

  <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image 3" style="width:100%">
        </div>
      <figcaption style="text-align :center">Achivement 8</figcaption>
  </div>
      <div class="column">
    <img src="../../../Images/insert%20image.png" alt="Image 4" style="width:100%">
          </div>
          <figcaption style="text-align :center">Achivement 9 </figcaption>
  </div>
    <div class="column">
  </div>

</div>
</figure>

</asp:Content>

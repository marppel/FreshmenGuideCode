<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Campus Event.aspx.cs" Inherits="COMP3851B.WebForm2" %>
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
    <br /><br /><br />
    <!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../../../Images/UONBuilding.jpg" alt="image 1" class="d-block" style="width:100% ; height : 300px">
    </div>
    <div class="carousel-item">
      <img src="../../../Images/UONBuilding.jpg" alt="image 2" class="d-block" style="width:100%; height : 300px">
    </div>
    <div class="carousel-item">
      <img src="../../../Images/UONBuilding.jpg" alt="image 3" class="d-block" style="width:100%; height : 300px">
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
    <br />
    <div style="text-align:center; margin-top : 20px "><strong>Campus Event</strong></div>

<!-- Row 1 campus achivement -->
    <figure>
<div class="row">
  <div class="column">
  </div>
  <div class="column">
    <img src="../../../Images/UONBuilding.jpg"  alt="Event1" style="width:100%">
      <figcaption style="text-align :center">event 1 </figcaption>
  </div>

  <div class="column">
    <img src="../../../Images/UONBuilding.jpg" alt="Event2" style="width:100%">
      <figcaption style="text-align :center">event 2</figcaption>
  </div>
      <div class="column">
    <img src="../../../Images/UONBuilding.jpg" alt="Event3" style="width:100%">
          <figcaption style="text-align :center">event 3 </figcaption>
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
    <img src="../../../Images/UONBuilding.jpg" alt="Event4" style="width:100%">
      <figcaption style="text-align :center">event 4 </figcaption>
  </div>

  <div class="column">
    <img src="../../../Images/UONBuilding.jpg" alt="Event5" style="width:100%">
      <figcaption style="text-align :center">event 5</figcaption>
  </div>
      <div class="column">
    <img src="../../../Images/UONBuilding.jpg" alt="Event6" style="width:100%">
          <figcaption style="text-align :center">event 6 </figcaption>
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
    <img src="../../../Images/UONBuilding.jpg" alt="Event7" style="width:100%">
      <figcaption style="text-align :center">event 7 </figcaption>
  </div>

  <div class="column">
    <img src="../../../Images/UONBuilding.jpg" alt="Event8" style="width:100%">
      <figcaption style="text-align :center">event 8</figcaption>
  </div>
      <div class="column">
    <img src="../../../Images/UONBuilding.jpg" alt="Event9" style="width:100%">
          <figcaption style="text-align :center">event 9 </figcaption>
  </div>
    <div class="column">
  </div>

</div>
</figure>

</asp:Content>

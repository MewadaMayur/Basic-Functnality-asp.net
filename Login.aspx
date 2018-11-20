<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="AppsTech.Login.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
AppsTech | Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
<div class="main">
	  <div class="container">
     <div class="col-xs-12 col-lg-12 col-md-12 col-sm-12" >
      <div id="left_part" class="col-xs-12 col-lg-8 col-md-8 col-sm-7 mission">
          <div id="" class="col-xs-12 col-lg-5 col-md-5 col-sm-5 mission_img">
             <img src="./Images/Network-Connection-icon.png" />
          </div>
          <div class="col-xs-12 col-lg-7 col-md-7 col-sm-12 spe_padding">
            <h5 class="mission_title">OUR MISSION</h5> 
              <p class="mission_par">
              Our mission is to win Networking as a service, where our team will continually strive to provide optimized, cost-effcient and technically satisfying solution to our wide and evergrowing customer family.
              </p>
             
              <h5 class="mission_title">OUR VISION</h5> 
              <p class="mission_par">
             Our vision is to lead IT-infrastructre industry with evergrowing technology demands & thereby provide most effective solutions as a service and products.Support Technology Services to help people to solve their problem long term relationship.
              </p>
          </div>
      </div><!---vision-->
  <div id="right_part" class="col-xs-12 col-lg-4 col-md-4 col-sm-5 padding_mission mission">
     <div>
    <form class="vision" display="None">
      <div class="form-group">
        <label for="email">Enter Your Employee Code:</label>
          
       
          <asp:TextBox ID="txtecode" runat="server" CssClass="form-control" placeholder="Enter your employee code"></asp:TextBox>
           <asp:RequiredFieldValidator ID="requireempcode" runat="server" 
              ErrorMessage="Enter Your EmployeeCode" ControlToValidate="txtecode" 
              Display="Dynamic" Font-Size="11px" ForeColor="red"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="Employee_Expression" runat="server" 
              ErrorMessage="Enter Valid Employeecode " ControlToValidate="txtecode" 
              ValidationExpression="^(ATSEMP[A-Z]*[._\-/]*[0-9A-Z]+)|([0-9A-Z]+[._\-/]*E[A-Z]*)$" 
              Display="Dynamic" ForeColor="Red" Font-Size="11px" SetFocusOnError="True"></asp:RegularExpressionValidator>

       </div>
      <div class="form-group">
        <label for="pwd">Password:</label>
          <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="requirepass" runat="server" 
              ErrorMessage="Enter Your Password"  Display="Dynamic" 
              SetFocusOnError="True" ControlToValidate="txtpwd" ForeColor="Red" Font-Size="11px"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtpwd"  runat="server" ErrorMessage="Enter Valid Value" ValidationExpression="^[^'\&quot;\?\;\<\[\]\|\+\=\-\ _ \(\)\*\&\^\%\.\/\>\{\}\,\:]*$" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RegularExpressionValidator>
      <%--^[^'\&quot;]*$--%>     
      </div>
      <div class="form-group">
          <asp:Label ID="lblseq" runat="server" Text="Security Question:" Visible="False" 
              Font-Bold="True"></asp:Label>
             <asp:DropDownList ID="drpsecque" CssClass="form-control" runat="server" Visible="false">
          </asp:DropDownList>
      </div>
      <div class="form-group">
          <asp:Label ID="lblans" runat="server" Text="Security Answer"  Visible="False" 
              Font-Bold="True"></asp:Label>
          <asp:TextBox ID="txtans" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Security Answer" Visible="false"></asp:TextBox>
          <asp:RequiredFieldValidator ID="Requireans" runat="server" 
              ErrorMessage="Enter Your Security Answers" Display="Dynamic" 
              ForeColor="Red" Font-Size="11px" SetFocusOnError="True"  Enabled="false" ControlToValidate="txtans"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidatorseqans" ControlToValidate="txtans"  runat="server" ErrorMessage="Enter Valid Value" ValidationExpression="^[^'\&quot;\?\;\<\[\]\|\+\=\-\ _ \(\)\*\&\^\%\.\>\{\}\,\:]*$" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RegularExpressionValidator>
     
           </div>
     
    <asp:Button ID="btn_login" runat="server" CssClass="btn log_btn" Text="Login" 
          onclick="btn_login_Click" Visible="false" />
    <asp:Button ID="new_btn_login" runat="server" Text="Login"  
          CssClass="btn log_btn" onclick="new_btn_login_Click" />
      </div>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
          DisplayMode="List" ShowMessageBox="false" ShowSummary="False" />
       <div class="form-group" ID="Part_Forgot" >
           <asp:HyperLink ID="HyperLink1" runat="server" 
               NavigateUrl="~/Login/ForgotPassword.aspx"  CssClass="forgot" Width="50%">Forgot Password?</asp:HyperLink>
           </div>
           <div class="form-group text-center forgot">
          
           </div>
       </div>
      </div>
      </div>
    </div>
    <!-- popup -->

</asp:Content>

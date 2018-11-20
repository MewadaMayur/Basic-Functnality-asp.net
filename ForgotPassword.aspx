<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="AppsTech.Login.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
AppsTech | Forgot Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
 <div class="main">
   <div class="container">
     <div class="col-xs-12 col-lg-3 col-md-3 col-sm-3"></div>
     <div>
     <div id="right_part" class="forgot_box col-xs-12 col-lg-6 col-md-6 col-sm-6 padding_mission">
     <div>
     <div class="vision">
      <div class="form-group">
       <asp:TextBox ID="txtempcode" runat="server" CssClass="form-control" placeholder="Enter Your Employee Code"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Employee Code" Display="Dynamic" ControlToValidate="txtempcode" Font-Size="11px" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
         <div class="form-group">
          <asp:TextBox ID="txtsecque" runat="server" ReadOnly="True" Visible="false" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="form-group">
          <asp:TextBox ID="txtsecans" runat="server" placeholder="Enter Your Security Answer" TextMode="Password" Visible="false" CssClass="form-control" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" 
              runat="server" ErrorMessage="Enter Security Answer"  ControlToValidate="txtsecans" Visible="true" Enabled="false" ForeColor="Red" Font-Size="11px"></asp:RequiredFieldValidator>
      </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox1" placeholder="Enter New Password" CssClass="form-control" Visible="false" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Enabled="false" ErrorMessage="Enter New Password" Visible="true" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RequiredFieldValidator> </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Confirm Password" CssClass="form-control" Visible="false" ToolTip="This is your security answer" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Enabled="false" ErrorMessage="Enter Confirm Password" ControlToValidate="TextBox2" ForeColor="red" Font-Size="11px"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" Enabled="false" ErrorMessage="Password Not Matched" ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                  </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn log_btn margin_sub" 
            Text="Reset Password" Visible="false" Font-Size="Medium" 
            onclick="Button1_Click" />
       <asp:Button ID="btnsub" CssClass="btn log_btn margin_sub"  runat="server" 
            Text="Submit" onclick="btnsub_Click" />
           <div class="col-xs-12 col-lg-12 col-md-12 col-sm-12">
         <div class="form-group" ID="Part_Forgot" >
           <asp:HyperLink ID="HyperLink1" runat="server" 
               NavigateUrl="~/Login/Login.aspx"  CssClass="forgot" Width="50%">Back To Login Page</asp:HyperLink>
           </div>
    
    <%--  <div class="form-group">
          <asp:TextBox ID="txtsecque" runat="server" ReadOnly="True" Visible="false" CssClass="form-control"></asp:TextBox>
       </div>
      <div class="form-group">
          <asp:TextBox ID="txtsecans" runat="server" placeholder="Enter Your Security Answer" TextMode="Password" Visible="false" CssClass="form-control" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" 
              runat="server" ErrorMessage="Enter Security Answer"  ControlToValidate="txtsecans" Visible="true" ForeColor="Red" Font-Size="11px"></asp:RequiredFieldValidator>
      </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox1" placeholder="Enter New Password" CssClass="form-control" Visible="false" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter New Password" Visible="true" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" Font-Size="11px"></asp:RequiredFieldValidator> </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Confirm Password" CssClass="form-control" Visible="false" ToolTip="This is your security answer" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Confirm Password" ControlToValidate="TextBox2" ForeColor="red" Font-Size="11px"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Matched" ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                  </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn log_btn margin_sub" 
            Text="Reset Password" Visible="false" Font-Size="Medium" 
            onclick="Button1_Click" />--%>
      </div>
      </div>
      </div>
      </div>
    </div>
     <asp:ValidationSummary DisplayMode="List" ShowMessageBox="false" ShowSummary="false" runat="server" /> 
</div>
</asp:Content>

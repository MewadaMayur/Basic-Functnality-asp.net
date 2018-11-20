<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AppsTech.Login.Registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
AppsTech | Registration
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class ="admin_main_user">
     <div class="container">   
      <div class="box_reg padding_reg col-xs-12 col-lg-12 col-md-12 col-sm-12">
         <h1 class="title_reg">Registration</h1>
       <div id="left_part" class="col-xs-12 col-lg-6 col-md-6 col-sm-6">
            <table align="left" class="style1">
                <tr>
                  <td>
                      <label>First Name:</label>
                   <asp:TextBox ID="fname" CssClass="form-control king_margin." 
                          placeholder="First Name" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ControlToValidate="fname" 
                          ErrorMessage="Enter Your First Name" ViewStateMode="Enabled" 
                          ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                  </td>
                </tr>
                <tr>
                    <td>
                     <label>Last Name:</label> 
             <asp:TextBox ID="txtlname" placeholder="Last Name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtlname" 
                            ErrorMessage="Enter Your Last Name" Display="None" ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
          <label>Email :</label></td>
                </tr>
                <tr>
                    <td>
            <asp:TextBox ID="txtemail" placeholder="Email" runat="server" CssClass="form-control" 
                            TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtemail" Display="none" ErrorMessage="Enter Your Email" 
                            ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" Display="None"
                            ErrorMessage="Enter Your Valid Email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ViewStateMode="Enabled" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
          <label >Gender :</label></td>
                </tr>
                <tr>
                    <td>
            <asp:DropDownList ID="drpgen" runat="server" CssClass="form-control">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                     <td>
                         <label >Address :</label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                       <asp:TextBox ID="txtadd" runat="server"  CssClass="form-control" 
                             TextMode="MultiLine" Height="95px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="txtadd" Display="None" ErrorMessage="Enter Your Address" 
                             ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
              
            </table>
        </div>
       <div id="right_part"class="col-xs-12 col-lg-6 col-md-6 col-sm-6">
             <div class="form-group">
             <table class="style1">
               <tr>
                    <td>
          <label >Date of Birth :</label>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:TextBox ID="txtdt" runat="server" placeholder="Enter Date of Birth" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtdt" Display="None" 
                            ErrorMessage="Enter Your Birth Date" ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                    <asp:CalendarExtender  ID="CalendarExtender1" runat="server"  Enabled="True" 
                        TargetControlID="txtdt" PopupPosition="BottomRight">
                    </asp:CalendarExtender>
                </tr>
                 <tr>
                    <td>
                         <label>Enter Company's Email:</label>
                    
                    </td>
                 </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="txtcompemail"  CssClass="form-control" placeholder="Enter Company's email" runat="server"></asp:TextBox>
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtcompemail" Display="None" 
                            ErrorMessage="Enter Company's Email" ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtcompemail"  
                            ErrorMessage="Enter Valid Company's Email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ViewStateMode="Enabled" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
                    
                    </td>
                 </tr>
                 <tr>
                     <td>
                         <label> Password :</label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                             <asp:TextBox ID="txtpsw"  placeholder="Enter Your Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                 ControlToValidate="txtpsw" Display="None" ErrorMessage="Enter Your Password" 
                                 ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
        
                        </td>
                 </tr>
                  <tr>
                     <td>
                         <label> Confirm Password :</label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                             <asp:TextBox ID="txtcpsw" placeholder="Enter Confirm Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
           
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                 ControlToValidate="txtcpsw" Display="None"
                                 ErrorMessage="Enter Your Confirm Password" ViewStateMode="Enabled" ForeColor="Red"></asp:RequiredFieldValidator>
           
                             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                 ControlToCompare="txtpsw" ControlToValidate="txtcpsw" Display="None"
                                 ErrorMessage="Password and Confirm Password does not match" ForeColor="Red" 
                                 ViewStateMode="Enabled"></asp:CompareValidator>
           
                        </td>
                 </tr>
                   <tr>
                     <td>
                         <label>User Type:</label>
                     </td>
                 </tr>
                 <tr>
                 <td>
                 <asp:DropDownList ID="drpuser" runat="server" CssClass="form-control">
            </asp:DropDownList>
                 </td>
                 </tr>
                 
             </table>
           </div>

</div>
       <div class="col-xs-12 col-lg-12 col-md-12 col-sm-12 text-center margin_sub"> 
         <asp:Button ID="btn_login" runat="server" Text="Register" 
             CssClass="btn-success btn-lg" onclick="btn_login_Click"  Font-Size="Large" 
               Width="23%" />
         <%--<asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn-success btn-lg" 
                   onclick="Button2_Click" UseSubmitBehavior="False"  />--%>
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" 
               ShowMessageBox="True" ShowSummary="False" />
         </div>
       </div>
      </div>
     </div>  
  <div id="popup_reg" class="popup_success">
      Registration Successful
      <i id="btn_reg_cls" class="fa fa-times" aria-hidden="true"></i>
</div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
</asp:Content>

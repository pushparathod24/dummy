<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 162px;
        }
        .style4
        {
            width: 206px;
        }
        .style5
        {
            width: 205px;
        }
        .style6
        {
            width: 162px;
            height: 26px;
        }
        .style7
        {
            width: 206px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            width: 205px;
            height: 26px;
        }
        h1
        {
        	color: Maroon;
        }
    </style>
</head>
<body>
   <h1>REGISTRATION FORM</h1>
    <form id="form1" runat="server">
    <table style="width:100%;">
       
        <tr>
            <td class="style6">
                Name</td>
            <td class="style7">
                <asp:TextBox ID="txtName" runat="server" ontextchanged="TextBox1_TextChanged" 
                    ToolTip="Enter Name" Width="105px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="* Enter Name" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="txtEmail" runat="server" TabIndex="1" ToolTip="Enter Email" 
                    Width="105px"></asp:TextBox>
            </td>
            <td style="margin-left: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="* Enter Email" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="* Enter correct Email Id" ForeColor="Red" 
                    ControlToValidate="txtEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style6">
                Age</td>
            <td class="style9">
                <asp:TextBox ID="txtAge" runat="server" TabIndex="2" TextMode="Number" 
                    ToolTip="Enter Age" Width="105px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="* Enter Age" ForeColor="Red" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="* Enter correct age(18-90)" ForeColor="Red" 
                    ControlToValidate="txtAge" MaximumValue="90" MinimumValue="18"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Password</td>
            <td class="style9">
                <asp:TextBox ID="txtPassword" runat="server" TabIndex="3" TextMode="Password" 
                    ToolTip="Enter Password" Width="105px">*</asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="* Enter Password" ForeColor="Red" 
                    ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Confirm Password</td>
            <td class="style5">
                <asp:TextBox ID="txtRepassword" runat="server" TabIndex="4" TextMode="Password" 
                    ToolTip="Retype password" Width="105px">*</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="* Retype password" ForeColor="Red" 
                    ControlToValidate="txtRepassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="* Password do not match" ForeColor="Red" 
                    ControlToCompare="txtPassword" ControlToValidate="txtRepassword"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" 
        Text="RESET" />
    </form>
</body>
</html>

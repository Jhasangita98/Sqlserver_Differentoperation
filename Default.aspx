<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 65%;
            height: 290px;
        }
        .auto-style3 {
            width: 399px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Website" BackColor="#800040"></asp:Label>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style3" style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:Label ID="Label2" runat="server" Text="FirstName" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:TextBox ID="firstname" runat="server" BackColor="#400080"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:Label ID="Label3" runat="server" Text="LastName" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:TextBox ID="lastname" runat="server" BackColor="#400080"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:Label ID="Label4" runat="server" Text="City" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:TextBox ID="city" runat="server" BackColor="#400080"></asp:TextBox>
                    </td>
                </tr>

             <tr>
            <td colspan ="2" align ="center" style="background-color: #800040; font-size: medium; font-variant: normal">
            <asp:Button ID="Button1" runat="server" Text="Insert" Width="78px" OnClick="Button1_Click" BackColor="#800040" Font-Bold="True" Font-Size="Medium" />
            <asp:Button ID="Button2" runat="server" Text="Delete" Width="91px" OnClick="Button2_Click" BackColor="#800040" Font-Bold="True" Font-Size="Medium" />
            <asp:Button ID="Button5" runat="server" Text="Update" Width="90px" BackColor="#800040" Font-Bold="True" Font-Size="Medium" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" Text="View" Width="77px" BackColor="#800040" Font-Bold="True" Font-Size="Medium" OnClick="Button6_Click" />
            </td>
            </tr>

                <tr>
                    <td style="background-color: #800040; font-size: medium; font-variant: normal; font-family: 'Arial Black'; font-weight: bold;">Enter Id for Update</td>
                    <td style="background-color: #800040; font-size: medium; font-variant: normal">
                        <asp:TextBox ID="oldid" runat="server" BackColor="#400080"></asp:TextBox>
                    </td>
                </tr>
                </table>
       
        
            <br/>
            <asp:GridView ID="GridView1" runat="server" Width="404px"></asp:GridView>
       </div>
    </form>
</body>
</html>

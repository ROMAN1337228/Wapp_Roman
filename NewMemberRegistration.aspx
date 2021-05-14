<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMemberRegistration.aspx.cs" Inherits="WAPP.NewMemberRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="member_name" runat="server"></asp:TextBox>

            <br>
            <br>

            <asp:Label ID="PhoneNum" runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="member_phone" runat="server"></asp:TextBox>

            <br>
            <br>

            <asp:Label ID="Email" runat="server" Text="Email address"></asp:Label>
            <asp:TextBox ID="member_email" runat="server"></asp:TextBox>

            <br>
            <br>

            <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="member_address" runat="server" Height="24px" TextMode="MultiLine" Width="166px"></asp:TextBox>

            <br>
            <br>

             <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
            <br>
            <asp:RadioButtonList ID="member_gender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>

            <br>
            <br>

            <asp:Label ID="DateofBirth" runat="server" Text="Date of Birth"></asp:Label>
            <asp:TextBox ID="member_dob" runat="server" TextMode="Date"></asp:TextBox>


            <br>
            <br>

            <asp:Button ID="AddCont_Btn" runat="server" Text="Add Contact" OnClick="AddCont_Btn_Click" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>


        </div>
    </form>
</body>
</html>

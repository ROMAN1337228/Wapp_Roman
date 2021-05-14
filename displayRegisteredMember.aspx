<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayRegisteredMember.aspx.cs" Inherits="WAPP.displayRegisteredMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                    <asp:BoundField DataField="member_phone" HeaderText="member_phone" SortExpression="member_phone" />
                    <asp:BoundField DataField="member_email" HeaderText="member_email" SortExpression="member_email" />
                    <asp:BoundField DataField="member_address" HeaderText="member_address" SortExpression="member_address" />
                    <asp:BoundField DataField="member_gender" HeaderText="member_gender" SortExpression="member_gender" />
                    <asp:BoundField DataField="member_dob" HeaderText="member_dob" SortExpression="member_dob" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Memberdetail]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridserch.aspx.cs" Inherits="collegemanegement.gridserch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 170px;
        }
        .auto-style3
        {
            width: 274px;
        }
        .auto-style4
        {
            width: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="top: 313px; left: 270px; position: absolute; height: 133px; width: 187px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="twepassper" HeaderText="twepassper" SortExpression="twepassper" />
                <asp:BoundField DataField="caregory" HeaderText="caregory" SortExpression="caregory" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:aspConnectionString %>" DeleteCommand="DELETE FROM [student1] WHERE [id] = @original_id AND (([twepassper] = @original_twepassper) OR ([twepassper] IS NULL AND @original_twepassper IS NULL))" InsertCommand="INSERT INTO [student1] ([twepassper]) VALUES (@twepassper)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [twepassper] FROM [student1]" UpdateCommand="UPDATE [student1] SET [twepassper] = @twepassper WHERE [id] = @original_id AND (([twepassper] = @original_twepassper) OR ([twepassper] IS NULL AND @original_twepassper IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_twepassper" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="twepassper" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="twepassper" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_twepassper" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <asp:GridView ID="GridView1" runat="server" style="top: 102px; left: 794px; position: absolute; height: 133px; width: 187px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

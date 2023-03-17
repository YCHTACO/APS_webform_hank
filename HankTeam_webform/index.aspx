<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="hank-team">
                <h1>姓名:<asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox></h1>
            
                <h1>年齡:<asp:TextBox ID="TextBox_age" runat="server"></asp:TextBox></h1>
            
                <h1>生日:<asp:TextBox ID="TextBox_date" runat="server" TextMode="Date"></asp:TextBox></h1>
            
                <asp:Button ID="Button1" runat="server" Text="建立帳號" OnClick="Button1_Click" />
               
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="user_id" >
                    <Columns>
                        <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name" />
                        <asp:BoundField DataField="user_age" HeaderText="年齡" SortExpression="user_age" />
                        <asp:BoundField DataField="user_date" HeaderText="生日" SortExpression="user_date" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  SelectCommand="SELECT * FROM [testTable]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [testTable] WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_age] = @original_user_age) OR ([user_age] IS NULL AND @original_user_age IS NULL)) AND (([user_date] = @original_user_date) OR ([user_date] IS NULL AND @original_user_date IS NULL))" InsertCommand="INSERT INTO [testTable] ([user_name], [user_age], [user_date]) VALUES (@user_name, @user_age, @user_date)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [testTable] SET [user_name] = @user_name, [user_age] = @user_age, [user_date] = @user_date WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_age] = @original_user_age) OR ([user_age] IS NULL AND @original_user_age IS NULL)) AND (([user_date] = @original_user_date) OR ([user_date] IS NULL AND @original_user_date IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_user_id" Type="Int32" />
              <asp:Parameter Name="original_user_name" Type="String" />
              <asp:Parameter Name="original_user_age" Type="Int32" />
              <asp:Parameter DbType="Date" Name="original_user_date" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="user_name" Type="String" />
              <asp:Parameter Name="user_age" Type="Int32" />
              <asp:Parameter DbType="Date" Name="user_date" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="user_name" Type="String" />
              <asp:Parameter Name="user_age" Type="Int32" />
              <asp:Parameter DbType="Date" Name="user_date" />
              <asp:Parameter Name="original_user_id" Type="Int32" />
              <asp:Parameter Name="original_user_name" Type="String" />
              <asp:Parameter Name="original_user_age" Type="Int32" />
              <asp:Parameter DbType="Date" Name="original_user_date" />
          </UpdateParameters>
        </asp:SqlDataSource>

    </form>

     </body>
</html>

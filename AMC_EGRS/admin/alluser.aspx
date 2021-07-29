<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="alluser.aspx.cs" CodeFile="alluser.aspx.cs" Inherits="AMC_EGRS.admin.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table-condensed tr th {
            border: 0px solid #448aff;
            color: white;
            background-color: #448aff;
        }

        .table-condensed, .table-condensed tr td {
            border: 0px solid #000;
        }

        tr:nth-child(even) {
            background: #f8f7ff
        }

        tr:nth-child(odd) {
            background: #fff;
        }

        .editbtn{
            background-color:#448aff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
    <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<i class="fas fa-ban"></i> Cancel' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<i class="fas fa-pen-square"></i>Update' ControlStyle-CssClass=""/>--%>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i> Cancel</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<spam class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>' />
            <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
            <asp:BoundField DataField="user_gender" HeaderText="user_gender" SortExpression="user_gender" />
            <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
            <asp:BoundField DataField="user_mobile" HeaderText="user_mobile" SortExpression="user_mobile" />
            <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            <asp:BoundField DataField="reg_date" HeaderText="reg_date" SortExpression="reg_date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [user_master] WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_gender] = @original_user_gender) OR ([user_gender] IS NULL AND @original_user_gender IS NULL)) AND (([user_email] = @original_user_email) OR ([user_email] IS NULL AND @original_user_email IS NULL)) AND (([user_mobile] = @original_user_mobile) OR ([user_mobile] IS NULL AND @original_user_mobile IS NULL)) AND (([user_password] = @original_user_password) OR ([user_password] IS NULL AND @original_user_password IS NULL)) AND (([reg_date] = @original_reg_date) OR ([reg_date] IS NULL AND @original_reg_date IS NULL))" InsertCommand="INSERT INTO [user_master] ([user_name], [user_gender], [user_email], [user_mobile], [user_password], [reg_date]) VALUES (@user_name, @user_gender, @user_email, @user_mobile, @user_password, @reg_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [user_master]" UpdateCommand="UPDATE [user_master] SET [user_name] = @user_name, [user_gender] = @user_gender, [user_email] = @user_email, [user_mobile] = @user_mobile, [user_password] = @user_password, [reg_date] = @reg_date WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_gender] = @original_user_gender) OR ([user_gender] IS NULL AND @original_user_gender IS NULL)) AND (([user_email] = @original_user_email) OR ([user_email] IS NULL AND @original_user_email IS NULL)) AND (([user_mobile] = @original_user_mobile) OR ([user_mobile] IS NULL AND @original_user_mobile IS NULL)) AND (([user_password] = @original_user_password) OR ([user_password] IS NULL AND @original_user_password IS NULL)) AND (([reg_date] = @original_reg_date) OR ([reg_date] IS NULL AND @original_reg_date IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_user_id" Type="Int32" />
            <asp:Parameter Name="original_user_name" Type="String" />
            <asp:Parameter Name="original_user_gender" Type="String" />
            <asp:Parameter Name="original_user_email" Type="String" />
            <asp:Parameter Name="original_user_mobile" Type="String" />
            <asp:Parameter Name="original_user_password" Type="String" />
            <asp:Parameter Name="original_reg_date" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="user_gender" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="user_mobile" Type="String" />
            <asp:Parameter Name="user_password" Type="String" />
            <asp:Parameter Name="reg_date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="user_gender" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="user_mobile" Type="String" />
            <asp:Parameter Name="user_password" Type="String" />
            <asp:Parameter Name="reg_date" Type="DateTime" />
            <asp:Parameter Name="original_user_id" Type="Int32" />
            <asp:Parameter Name="original_user_name" Type="String" />
            <asp:Parameter Name="original_user_gender" Type="String" />
            <asp:Parameter Name="original_user_email" Type="String" />
            <asp:Parameter Name="original_user_mobile" Type="String" />
            <asp:Parameter Name="original_user_password" Type="String" />
            <asp:Parameter Name="original_reg_date" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


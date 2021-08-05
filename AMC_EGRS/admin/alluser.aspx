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
    <asp:GridView runat="server" CssClass="table table-condensed table-hover"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1">
        <Columns>
            <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />--%>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i> Cancel</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<spam class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>' />

            <asp:BoundField DataField="c_id" HeaderText="c_id" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
            <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
            <asp:BoundField DataField="c_gender" HeaderText="c_gender" SortExpression="c_gender" />
            <asp:BoundField DataField="c_email" HeaderText="c_email" SortExpression="c_email" />
            <asp:BoundField DataField="c_mobile" HeaderText="c_mobile" SortExpression="c_mobile" />
            <asp:BoundField DataField="c_password" HeaderText="c_password" SortExpression="c_password" />
            <asp:BoundField DataField="c_date" HeaderText="c_date" SortExpression="c_date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [citizen_master] WHERE [c_id] = @original_c_id AND (([c_name] = @original_c_name) OR ([c_name] IS NULL AND @original_c_name IS NULL)) AND (([c_gender] = @original_c_gender) OR ([c_gender] IS NULL AND @original_c_gender IS NULL)) AND (([c_email] = @original_c_email) OR ([c_email] IS NULL AND @original_c_email IS NULL)) AND (([c_mobile] = @original_c_mobile) OR ([c_mobile] IS NULL AND @original_c_mobile IS NULL)) AND (([c_password] = @original_c_password) OR ([c_password] IS NULL AND @original_c_password IS NULL)) AND (([c_date] = @original_c_date) OR ([c_date] IS NULL AND @original_c_date IS NULL))" InsertCommand="INSERT INTO [citizen_master] ([c_name], [c_gender], [c_email], [c_mobile], [c_password], [c_date]) VALUES (@c_name, @c_gender, @c_email, @c_mobile, @c_password, @c_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [citizen_master]" UpdateCommand="UPDATE [citizen_master] SET [c_name] = @c_name, [c_gender] = @c_gender, [c_email] = @c_email, [c_mobile] = @c_mobile, [c_password] = @c_password, [c_date] = @c_date WHERE [c_id] = @original_c_id AND (([c_name] = @original_c_name) OR ([c_name] IS NULL AND @original_c_name IS NULL)) AND (([c_gender] = @original_c_gender) OR ([c_gender] IS NULL AND @original_c_gender IS NULL)) AND (([c_email] = @original_c_email) OR ([c_email] IS NULL AND @original_c_email IS NULL)) AND (([c_mobile] = @original_c_mobile) OR ([c_mobile] IS NULL AND @original_c_mobile IS NULL)) AND (([c_password] = @original_c_password) OR ([c_password] IS NULL AND @original_c_password IS NULL)) AND (([c_date] = @original_c_date) OR ([c_date] IS NULL AND @original_c_date IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_c_id" Type="Int32" />
            <asp:Parameter Name="original_c_name" Type="String" />
            <asp:Parameter Name="original_c_gender" Type="String" />
            <asp:Parameter Name="original_c_email" Type="String" />
            <asp:Parameter Name="original_c_mobile" Type="String" />
            <asp:Parameter Name="original_c_password" Type="String" />
            <asp:Parameter Name="original_c_date" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="c_name" Type="String" />
            <asp:Parameter Name="c_gender" Type="String" />
            <asp:Parameter Name="c_email" Type="String" />
            <asp:Parameter Name="c_mobile" Type="String" />
            <asp:Parameter Name="c_password" Type="String" />
            <asp:Parameter Name="c_date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="c_name" Type="String" />
            <asp:Parameter Name="c_gender" Type="String" />
            <asp:Parameter Name="c_email" Type="String" />
            <asp:Parameter Name="c_mobile" Type="String" />
            <asp:Parameter Name="c_password" Type="String" />
            <asp:Parameter Name="c_date" Type="DateTime" />
            <asp:Parameter Name="original_c_id" Type="Int32" />
            <asp:Parameter Name="original_c_name" Type="String" />
            <asp:Parameter Name="original_c_gender" Type="String" />
            <asp:Parameter Name="original_c_email" Type="String" />
            <asp:Parameter Name="original_c_mobile" Type="String" />
            <asp:Parameter Name="original_c_password" Type="String" />
            <asp:Parameter Name="original_c_date" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
   </asp:Content>


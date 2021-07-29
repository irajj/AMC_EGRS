<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="managezone.aspx.cs" CodeFile="managezone.aspx.cs" Inherits="AMC_EGRS.admin.WebForm7" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="zone_id" DataSourceID="SqlDataSource1" CssClass="table table-condensed table-hover">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i>Cancle</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<span class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>'/>
            <asp:BoundField DataField="zone_id" HeaderText="zone_id" InsertVisible="False" ReadOnly="True" SortExpression="zone_id" />
            <asp:BoundField DataField="zone_name" HeaderText="zone_name" SortExpression="zone_name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [zone_master] WHERE [zone_id] = @original_zone_id AND (([zone_name] = @original_zone_name) OR ([zone_name] IS NULL AND @original_zone_name IS NULL))" InsertCommand="INSERT INTO [zone_master] ([zone_name]) VALUES (@zone_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [zone_master]" UpdateCommand="UPDATE [zone_master] SET [zone_name] = @zone_name WHERE [zone_id] = @original_zone_id AND (([zone_name] = @original_zone_name) OR ([zone_name] IS NULL AND @original_zone_name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_zone_id" Type="Int32" />
            <asp:Parameter Name="original_zone_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="zone_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="zone_name" Type="String" />
            <asp:Parameter Name="original_zone_id" Type="Int32" />
            <asp:Parameter Name="original_zone_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

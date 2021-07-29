<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manageward.aspx.cs" CodeFile="manageward.aspx.cs" Inherits="AMC_EGRS.admin.WebForm9" %>

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

        .editbtn {
            background-color: #448aff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="float-right m-b-10">
                    <a href="addward.aspx" class="btn btn-danger"><i class="fa fa-plus-square"></i>&nbsp;Add</a>
                </div>
            </div>
        </div>
    </div>


    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ward_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i> Cancel</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<spam class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>' />

            <asp:BoundField DataField="ward_id" HeaderText="ward_id" InsertVisible="False" ReadOnly="True" SortExpression="ward_id" />
            <asp:BoundField DataField="ward_name" HeaderText="ward_name" SortExpression="ward_name" />
            <asp:BoundField DataField="zone_id" HeaderText="zone_id" SortExpression="zone_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [ward_master] WHERE [ward_id] = @original_ward_id AND (([ward_name] = @original_ward_name) OR ([ward_name] IS NULL AND @original_ward_name IS NULL)) AND [zone_id] = @original_zone_id" InsertCommand="INSERT INTO [ward_master] ([ward_name], [zone_id]) VALUES (@ward_name, @zone_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ward_master]" UpdateCommand="UPDATE [ward_master] SET [ward_name] = @ward_name, [zone_id] = @zone_id WHERE [ward_id] = @original_ward_id AND (([ward_name] = @original_ward_name) OR ([ward_name] IS NULL AND @original_ward_name IS NULL)) AND [zone_id] = @original_zone_id">
        <DeleteParameters>
            <asp:Parameter Name="original_ward_id" Type="Int32" />
            <asp:Parameter Name="original_ward_name" Type="String" />
            <asp:Parameter Name="original_zone_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ward_name" Type="String" />
            <asp:Parameter Name="zone_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ward_name" Type="String" />
            <asp:Parameter Name="zone_id" Type="Int32" />
            <asp:Parameter Name="original_ward_id" Type="Int32" />
            <asp:Parameter Name="original_ward_name" Type="String" />
            <asp:Parameter Name="original_zone_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

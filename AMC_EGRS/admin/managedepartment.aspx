<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="managedepartment.aspx.cs" CodeFile="managedepartment.aspx.cs" Inherits="AMC_EGRS.admin.WebForm5" %>

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
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="float-right m-b-10">
                    <a href="adddepartment.aspx" class="btn btn-danger"><i class="fa fa-plus-square"></i>&nbsp;Add</a>
                </div>
            </div>
        </div>
        <%-- grid start --%>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="dept_id" DataSourceID="SqlDataSource1" CssClass="table table-condensed table-hover">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i>Cancle</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<span class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>' />
                <asp:BoundField DataField="dept_id" HeaderText="dept_id" InsertVisible="False" ReadOnly="True" SortExpression="dept_id" />
                <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [dept_master] WHERE [dept_id] = @original_dept_id AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL))" InsertCommand="INSERT INTO [dept_master] ([dept_name]) VALUES (@dept_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [dept_master]" UpdateCommand="UPDATE [dept_master] SET [dept_name] = @dept_name WHERE [dept_id] = @original_dept_id AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_dept_id" Type="Int32" />
                <asp:Parameter Name="original_dept_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="dept_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dept_name" Type="String" />
                <asp:Parameter Name="original_dept_id" Type="Int32" />
                <asp:Parameter Name="original_dept_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

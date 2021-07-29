<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manageproblems.aspx.cs" CodeFile="manageproblems.aspx.cs" Inherits="AMC_EGRS.admin.WebForm11" %>
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
    <%-- Add btn --%>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">                
                <div class="float-right m-b-10">
                    <a href="addproblems.aspx" class="btn btn-danger"><i class="fa fa-plus-square"></i>&nbsp;Add</a>
                </div>
            </div>
        </div>
    </div>

    <%-- grid view --%>

    <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pro_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i>Cancle</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<span class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>'/>
            <asp:BoundField DataField="pro_id" HeaderText="pro_id" InsertVisible="False" ReadOnly="True" SortExpression="pro_id" />
            <asp:BoundField DataField="problem_name" HeaderText="problem_name" SortExpression="problem_name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [problems_master] WHERE [pro_id] = @original_pro_id AND (([problem_name] = @original_problem_name) OR ([problem_name] IS NULL AND @original_problem_name IS NULL))" InsertCommand="INSERT INTO [problems_master] ([problem_name]) VALUES (@problem_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [problems_master]" UpdateCommand="UPDATE [problems_master] SET [problem_name] = @problem_name WHERE [pro_id] = @original_pro_id AND (([problem_name] = @original_problem_name) OR ([problem_name] IS NULL AND @original_problem_name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_pro_id" Type="Int32" />
            <asp:Parameter Name="original_problem_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="problem_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="problem_name" Type="String" />
            <asp:Parameter Name="original_pro_id" Type="Int32" />
            <asp:Parameter Name="original_problem_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

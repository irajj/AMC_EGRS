<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="~/admin/managefaq.aspx.cs" CodeFile="managefaq.aspx.cs" Inherits="AMC_EGRS.admin.WebForm18" %>

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
                    <a href="addfaq.aspx" class="btn btn-danger"><i class="fa fa-plus-square"></i>&nbsp;Add</a>
                </div>
            </div>
        </div>
    </div>

    <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Faq_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText='<span class="btn btn-danger btn-sm"><i class="fas fa-ban"></i> Cancel</span>' EditText='<span class="btn btn-primary btn-sm"><i class="fas fa-edit"></i>Edit</span>' DeleteText='<span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i>Delete</span>' UpdateText='<spam class="btn btn-primary btn-sm"><i class="fas fa-pen-square"></i>Update</span>' />

            <asp:BoundField DataField="Faq_id" HeaderText="Faq_id" InsertVisible="False" ReadOnly="True" SortExpression="Faq_id" />
            <asp:BoundField DataField="Faq_que" HeaderText="Faq_que" SortExpression="Faq_que" ControlStyle-CssClass="form-control" />
            <asp:BoundField DataField="Faq_ans" HeaderText="Faq_ans" SortExpression="Faq_ans" ControlStyle-CssClass="form-control" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" DeleteCommand="DELETE FROM [faq_master] WHERE [Faq_id] = @original_Faq_id AND (([Faq_que] = @original_Faq_que) OR ([Faq_que] IS NULL AND @original_Faq_que IS NULL)) AND (([Faq_ans] = @original_Faq_ans) OR ([Faq_ans] IS NULL AND @original_Faq_ans IS NULL))" InsertCommand="INSERT INTO [faq_master] ([Faq_que], [Faq_ans]) VALUES (@Faq_que, @Faq_ans)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [faq_master]" UpdateCommand="UPDATE [faq_master] SET [Faq_que] = @Faq_que, [Faq_ans] = @Faq_ans WHERE [Faq_id] = @original_Faq_id AND (([Faq_que] = @original_Faq_que) OR ([Faq_que] IS NULL AND @original_Faq_que IS NULL)) AND (([Faq_ans] = @original_Faq_ans) OR ([Faq_ans] IS NULL AND @original_Faq_ans IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Faq_id" Type="Int32" />
            <asp:Parameter Name="original_Faq_que" Type="String" />
            <asp:Parameter Name="original_Faq_ans" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Faq_que" Type="String" />
            <asp:Parameter Name="Faq_ans" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Faq_que" Type="String" />
            <asp:Parameter Name="Faq_ans" Type="String" />
            <asp:Parameter Name="original_Faq_id" Type="Int32" />
            <asp:Parameter Name="original_Faq_que" Type="String" />
            <asp:Parameter Name="original_Faq_ans" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

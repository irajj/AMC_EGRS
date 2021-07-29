<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addproblems.aspx.cs" CodeFile="addproblems.aspx.cs" Inherits="AMC_EGRS.admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- BACK BTN --%>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="float-right m-b-10">
                    <a href="manageproblems.aspx" class="btn btn-primary"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Back</a>
                </div>
            </div>
        </div>
    </div>

    <%-- ADD SECTION START --%>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="card-title">
                <div class="title">Add Probelms Form</div>
            </div>
        </div>
        <div class="panel-body">
            <div class="form-vertical">
                <div class="form-group">
                    <label>Problem</label>
                    <asp:TextBox ID="txtpro" CssClass="form-control" runat="server" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtpro" runat="server" ErrorMessage="This Field Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>                
            </div>
        </div>
        <div class="panel-footer text-center">
            <asp:LinkButton ID="addproblem" runat="server" CssClass="btn btn-danger" OnClick="addproblem_Click" TabIndex="2"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>            
            <button type="reset" class="btn btn-danger" tabindex="3">
                <i class="fa fa-refresh"></i>Reset
            </button>
        </div>
    </div>  

</asp:Content>

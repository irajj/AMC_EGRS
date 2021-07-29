<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addfaq.aspx.cs" CodeFile="addfaq.aspx.cs"  Inherits="AMC_EGRS.admin.WebForm19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="float-right m-b-10">
                    <a href="managefaq.aspx" class="btn btn-primary"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Back</a>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="card-title">
                <div class="title">FAQ Form</div>
            </div>
        </div>
        <div class="panel-body">
            <div class="form-vertical">
                <div class="form-group">
                    <label>FAQS Question</label>
                    <asp:TextBox ID="txtque" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtque" runat="server" ErrorMessage="please enter FAQ question" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>FAQS Answer</label>
                    <asp:TextBox ID="txtans" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtans" runat="server" ErrorMessage="please enter FAQ answer" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="panel-footer text-center">
            <asp:LinkButton ID="addlink1" runat="server" CssClass="btn btn-danger" OnClick="addlink1_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
            <%--<asp:LinkButton runat="server" ID="lnk1"  OnClick="lnk1_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>--%>
            <%--<a href="managefaq.aspx" class="btn btn-lg">Back to Manage FAQ</a>--%>
            <%--<asp:LinkButton ID="resetlink1" runat="server" CssClass="btn btn-danger" OnClick="resetlink1_Click"><i class="fa fa-refresh" aria-hidden="true"></i>&nbsp;Reset</asp:LinkButton>--%>
            <button type="reset" class="btn btn-danger">
                <i class="fa fa-refresh"></i>Reset
            </button>
        </div>
    </div>

</asp:Content>

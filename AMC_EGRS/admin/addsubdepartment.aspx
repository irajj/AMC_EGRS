<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addsubdepartment.aspx.cs" CodeFile="addsubdepartment.aspx.cs" Inherits="AMC_EGRS.admin.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="float-right m-b-10">
                    <a href="managedepartment.aspx" class="btn btn-primary"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Back</a>
                </div>
            </div>
        </div>
    </div>
    <%-- add subdepartment secrtion dropdown --%>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="card-title">
                <div class="title">Sub Department Form</div>
                <hr />
            </div>
        </div>
        <div class="panel-body">
            <div class="form-vertical">
                <div class="form-group">
                    <label>Choose Department</label>
                    <asp:DropDownList ID="subdepdrop" CssClass="form-control" runat="server"></asp:DropDownList>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtdept" runat="server" ErrorMessage="please enter Department" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <div class="form-vertical">
                <div class="form-group">
                    <label>Sub Department Name</label>

                    <asp:TextBox ID="subdeptext" CssClass="form-control" runat="server"></asp:TextBox>

                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtdept" runat="server" ErrorMessage="please enter Department" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>
        </div>
        <div class="panel-footer text-center">
            <asp:LinkButton ID="subdepsave" runat="server" CssClass="btn btn-danger"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
            <%--<asp:LinkButton runat="server" ID="lnk1"  OnClick="lnk1_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>--%>
            <%--<a href="managefaq.aspx" class="btn btn-lg">Back to Manage FAQ</a>--%>
            <%--<asp:LinkButton ID="resetlink1" runat="server" CssClass="btn btn-danger" OnClick="resetlink1_Click"><i class="fa fa-refresh" aria-hidden="true"></i>&nbsp;Reset</asp:LinkButton>--%>
            <button type="reset" class="btn btn-danger">
                <i class="fa fa-refresh"></i>Reset</button>
        </div>
    </div>

</asp:Content>

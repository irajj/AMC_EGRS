<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addward.aspx.cs" CodeFile="addward.aspx.cs" Inherits="AMC_EGRS.admin.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="float-right m-b-10">
                    <a href="manageward.aspx" class="btn btn-primary"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Back</a>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="card-title">
                <div class="title">Ward Form</div>
            </div>
        </div>
        <div class="panel-body">
            <div class="form-vertical">
                
                <div class="form-group">
                    <label>Select Zone</label>
                    <div class="col-md-12 col-12">
                        <asp:DropDownList ID="dropzone" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="dropzone" runat="server" ErrorMessage="please enter Zone" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Ward Name</label>
                    <asp:TextBox ID="txtward" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtward" runat="server" ErrorMessage="please enter Ward" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="panel-footer text-center">
            <asp:LinkButton ID="savewardbtn" CssClass="btn btn-danger" runat="server" OnClick="savewardbtn_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
            <%--<asp:LinkButton ID="addlink1" runat="server" OnClick="addlink1_Click">Save</asp:LinkButton>--%>            
            <button type="reset" class="btn btn-danger">
                <i class="fa fa-refresh"></i>Reset</button>
        </div>
    </div>

</asp:Content>

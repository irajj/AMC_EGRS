<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addzone.aspx.cs" CodeFile="addzone.aspx.cs" Inherits="AMC_EGRS.admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="float-right m-b-10">
                    <a href="managezone.aspx" class="btn btn-primary"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Back</a>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="card-title">
                <div class="title">Zone Form</div>
            </div>
        </div>
        <div class="panel-body">
            <div class="form-vertical">
                <div class="form-group">
                    <label>Add Zone</label>
                    <asp:TextBox ID="txtzone" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtzone" runat="server" ErrorMessage="This Field Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>                
            </div>
        </div>
        <div class="panel-footer text-center">
            <asp:LinkButton ID="zonesavebtn" runat="server" CssClass="btn btn-danger" OnClick="zonesavebtn_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>            
            <button type="reset" class="btn btn-danger">
                <i class="fa fa-refresh"></i>Reset</button>
        </div>
    </div>
</asp:Content>

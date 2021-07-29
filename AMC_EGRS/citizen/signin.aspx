<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS: Log in</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="container-fluid">
            <div class="align-items-center">
                <div class="container-fluid loginMain pb-0">
                    <div class="row">
                        <div class="loginScreen">
                            <div class="custom-card custom-card-center logBox">
                                <h2>Citizen Login</h2>
                                <div class="custom-card-body">
                                    <div id="signinnform">
                                        <%-- USERNAME --%>
                                        <div class="form-group">
                                            <label for="Username">Email Id</label>
                                            <div class="input-group loginInput">
                                                <asp:TextBox CssClass="form-control" ID="UserSigninname" runat="server"></asp:TextBox>
                                                <span class="input-group-addon dropdown">
                                                    <img class="dropbtn" src="citizenassets/images/icons/ico_user.png">
                                                </span>
                                            </div>
                                        </div>
                                        <%-- PASSWORD --%>
                                        <div class="form-group">
                                            <label for="TempPassword">Password</label>
                                            <div class="input-group loginInput">
                                                <asp:TextBox ID="UsersigninPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                <span class="input-group-addon dropdown">

                                                    <img class="dropbtn" src="citizenassets/images/icons/ico_lock.png">
                                                </span>
                                            </div>
                                            <span class="field-validation-valid text-danger" data-valmsg-for="TempPassword" data-valmsg-replace="true"></span>
                                        </div>
                                        <%-- log in button --%>
                                        <div class="text-center mt-5">

                                            <asp:LinkButton CssClass="btn-login" ID="usersigninsubmit" runat="server" OnClick="usersigninsubmit_Click">Log In&nbsp;<i class="ti-shift-right"></i></asp:LinkButton>
                                        </div>
                                        <%-- forgot section --%>
                                        <div class="text-center loginHelp mt-2">
                                            <a href="forgotpassword.aspx" class="pr-2 border-right">Forgot Password</a>
                                            <%--<a href="/ForgotUsername" class="pl-1">Forgot Username</a>--%>
                                        </div>
                                        <div class="text-center loginHelp mt-2">
                                            <a href="signup.aspx" class="pr-2 border-right">Click here to sign up</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

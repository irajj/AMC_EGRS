<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" CodeFile="forgotpassword.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS: Forgot Password</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- forgot panel --%>
    <asp:Panel ID="forgotpasswordpanel" runat="server" >
        <div class="main-content">
            <div class="container-fluid">
                <div class="align-items-center">
                    <div class="container-fluid loginMain pb-0">
                        <div class="row">
                            <div class="loginScreen">
                                <div class="custom-card custom-card-center logBox">
                                    <h2>Forgot password...?</h2>
                                    <div class="custom-card-body">
                                        <div id="otpemailform">
                                            <%-- USERNAME --%>
                                            <div class="form-group">
                                                <label for="Username">Email Id</label>
                                                <div class="input-group loginInput">
                                                    <asp:TextBox CssClass="form-control" ID="UserForgotEmail" runat="server"></asp:TextBox>
                                                    <span class="input-group-addon dropdown">
                                                        <img class="dropbtn" src="citizenassets/images/icons/ico_user.png">
                                                    </span>
                                                </div>
                                                    <asp:RequiredFieldValidator ValidationGroup="V" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter email address" ControlToValidate="UserForgotEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>

                                            <%-- log in button --%>
                                            <div class="text-center mt-5">
                                                <asp:LinkButton CssClass="btn-login" ID="forgotbtn" runat="server" OnClick="forgotbtn_Click" ValidationGroup="V">Get OTP&nbsp;<i class="ti-shift-right"></i></asp:LinkButton>
                                            </div>
                                            <%-- forgot section --%>
                                            <div class="text-center loginHelp mt-2">
                                                <a href="signin.aspx" class="pr-2 border-right">Back to Login page</a>
                                            </div>
                                            <%--<div class="text-center loginHelp mt-2">
                                            <a href="signup.aspx" class="pr-2 border-right">Click here to sign up</a>
                                        </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <%-- verification panel --%>
    <asp:Panel ID="verifypanel" runat="server" Visible="false">
        <div class="main-content">
            <div class="container-fluid">
                <div class="align-items-center">
                    <div class="container-fluid loginMain pb-0">
                        <div class="row">
                            <div class="loginScreen">
                                <div class="custom-card custom-card-center logBox">
                                    <h2>Verify Your OTP here</h2>
                                    <div class="custom-card-body">
                                        <div id="verifyform">
                                            <%-- USERNAME --%>
                                            <div class="form-group">
                                                <label for="Username">Enter OTP here</label>
                                                <div class="input-group loginInput">
                                                    <asp:TextBox CssClass="form-control" ID="OTpusertxt" runat="server"></asp:TextBox>
                                                    <span class="input-group-addon dropdown">
                                                        <%--<img class="dropbtn" src="citizenassets/images/icons/ico_user.png">--%>
                                                    </span>
                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter OTP" ControlToValidate="OTpusertxt" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                            </div>
                                            <%-- PASSWORD --%>

                                            <%-- log in button --%>
                                            <div class="text-center mt-5">
                                                <asp:LinkButton ID="verifyotp" runat="server" CssClass="btn-login" OnClick="verifyotp_Click" ValidationGroup="A">Verify</asp:LinkButton>
                                            </div>
                                            <%-- forgot section --%>
                                            <div class="text-center loginHelp mt-2">
                                            </div>
                                            <div class="text-center loginHelp mt-2">
                                                <br />
                                                <asp:LinkButton ID="backbtn" CssClass="btn-login" runat="server" OnClick="backbtn_Click">BACK</asp:LinkButton>
                                            
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
    </asp:Panel>

    <%-- change password panel --%>
    <asp:Panel ID="changepassword" runat="server" Visible="false">
        <div class="main-content">
            <div class="container-fluid">
                <div class="align-items-center">
                    <div class="container-fluid loginMain pb-0">
                        <div class="row">
                            <div class="loginScreen">
                                <div class="custom-card custom-card-center logBox">
                                    <h2>Chnage you password</h2>
                                    <div class="custom-card-body">
                                        <div id="passwordform">
                                            <%-- USERNAME --%>

                                            <%-- PASSWORD --%>
                                            <div class="form-group">
                                                <label for="TempPassword">Enter new Password</label>
                                                <div class="input-group loginInput">
                                                    <asp:TextBox ID="userfgpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                    <span class="input-group-addon dropdown">
                                                        <img class="dropbtn" src="citizenassets/images/icons/ico_lock.png">
                                                    </span>
                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Password" ValidationGroup="B" ControlToValidate="userfgpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="TempPassword" data-valmsg-replace="true"></span>
                                            </div>
                                            <%-- CONFIRM PASSWORD --%>
                                            <div class="form-group">
                                                <label for="TempPassword">Confirm Password</label>
                                                <div class="input-group loginInput">
                                                    <asp:TextBox ID="userfgconpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                    <span class="input-group-addon dropdown">
                                                        <img class="dropbtn" src="citizenassets/images/icons/ico_lock.png">
                                                    </span>
                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Confirm password" ValidationGroup="B" ControlToValidate="userfgconpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToValidate="userfgconpassword" ControlToCompare="userfgpassword" ForeColor="Red" ValidationGroup="B"></asp:CompareValidator>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="TempPassword" data-valmsg-replace="true"></span>
                                            </div>
                                            <%-- log in button --%>
                                            <div class="text-center mt-5">
                                                <asp:LinkButton ID="submitpassword" ValidationGroup="B" runat="server" CssClass="btn-login" OnClick="submitpassword_Click">Chnage your password</asp:LinkButton>
                                            </div>
                                            <%-- forgot section --%>
                                            <div class="text-center loginHelp mt-2">
                                            </div>
                                            <%--<div class="text-center loginHelp mt-2">
                                            <a href="signup.aspx" class="pr-2 border-right">Click here to sign up</a>
                                        </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>


</asp:Content>

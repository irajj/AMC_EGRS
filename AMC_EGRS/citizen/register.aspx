<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" CodeFile="register.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>AMC-EGRS: Register here</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
        <div class="card card-info">
            <h4 class="card-title ">Registration/sign up form</h4>
        </div>
        <div class="card-body">
            <%-- forst row for two title --%>
            <div class="row">
                <div class="d-none d-sm-block col-md-6 col-12">
                    <span class="text-primary"><strong>Enter Details</strong></span>
                </div>
                <div class="col-md-6 col-12 text-md-right text-lg-right">
                    <span class="text-primary"><strong>Fields marked with <b class="text-danger">*</b> are mandatory</strong></span>
                </div>
            </div>
            <%-- second row --%>
            <div class="row">
                <div class="col">
                    <hr />
                </div>
            </div>
            <%-- div form start --%>
            <div id="formsignup" class="row">
                <%-- text box --%>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <asp:Label ID="signupnamelaBEL" runat="server" Text="Name" CssClass="col-12 col-md-12 font-weight-bold  required p-0" for="name"></asp:Label>
                        <asp:TextBox ID="UserNameSignup" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="#FF3300" ControlToValidate="UserNameSignup" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%-- male female checkbox --%>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <div class="col-12 col-md-12">
                            <fieldset>
                                <legend class="required">Gender
                                </legend>
                                <asp:RadioButtonList ID="UserGen" runat="server" RepeatDirection="Horizontal" CssClass="Space">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>
                                <%--<asp:CheckBoxList ID="usergender" RepeatDirection="Vertical" RepeatLayout="Flow" runat="server">
                                    <asp:ListItem Text="Male" Value="Male" />
                                    <asp:ListItem Text="FeMale" Value="FeMale" />
                                    <asp:ListItem Text="Other" Value="Other" />
                                </asp:CheckBoxList>--%>
                                <%--<div class="row">
                                    <div class="col-md-4">
                                        <div class="">
                                            <asp:RadioButton GroupName="sex" ID="malebtn" CssClass="Space" Text="Male" runat="server" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:RadioButton GroupName="sex" ID="femalebtn" CssClass="Space" runat="server" Text="Female" />
                                    </div>
                                    <div class="col-md-4">
                                        <asp:RadioButton GroupName="sex" ID="otherbtn" runat="server" CssClass="Space" Text="Other" />
                                    </div>
                                </div>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Select gender" ValidationGroup="signup" ControlToValidate="UserGen" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>
                            </fieldset>

                        </div>
                    </div>
                </div>
                <%-- email --%>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Email" CssClass="col-12 col-md-12 font-weight-bold  required p-0" for="name"></asp:Label>
                        <asp:TextBox ID="usremail" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="signup" ErrorMessage="Please Enter Your Name" ForeColor="#FF3300" ControlToValidate="usremail"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%-- phone numebr --%>
                <div class="col-12 col-md-6">
                    <div class="form-group input-group">
                        <asp:Label ID="Label2" runat="server" Text="Mobile Number" CssClass="col-12 col-md-12 font-weight-bold  required p-0" for="name"></asp:Label>
                        <%--<asp:TextBox ID="TextBox1" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50"></asp:TextBox>--%>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">+91</span>
                        </div>
                        <asp:TextBox TextMode="Phone" ID="usrmobile" aria-label="Username" aria-describedby="basic-addon1" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12 w-75" MaxLength="13"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="#FF3300" ErrorMessage="Please Enter Your Mobile Number" ValidationGroup="signup" ControlToValidate="usrmobile"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%-- password --%>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <asp:Label ID="pslbl" runat="server" Text="password" CssClass="col-12 col-md-12 font-weight-bold  required p-0" for="password"></asp:Label>
                        <asp:TextBox ID="userpswd" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="#FF3300" ErrorMessage="Please Enter Password" ValidationGroup="signup" ControlToValidate="userpswd"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- confirm password --%>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <asp:Label ID="usrcps" runat="server" Text="confirm  password" CssClass="col-12 col-md-12 font-weight-bold  required p-0" for="password"></asp:Label>
                        <asp:TextBox ID="usercpswd" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="#FF3300" ErrorMessage="Please Enter Confirm password" ValidationGroup="signup" ControlToValidate="usercpswd"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Those passwords didn’t match. Try again." ForeColor="#FF3300" ValidationGroup="signup"  ControlToValidate="usercpswd" ControlToCompare="userpswd"></asp:CompareValidator>
                    </div>
                </div>

                <%-- btns --%>
                <div class="col-6 col-md-12 text-center mt-2">

                    <asp:LinkButton ID="ussrregister" runat="server" CssClass="btn-danger usrbtnsubmit"  ValidationGroup="signup" OnClick="ussrregister_Click"><i class="ti-save"></i>&nbsp;Save</asp:LinkButton>
                    <%--<asp:LinkButton ID="usrreset" runat="server" CssClass="btn-danger usrbtnsubmit" OnClick="usrreset_Click"><i class="ti-reload"></i>&nbsp;Reset</asp:LinkButton>--%>
                    
                    <button type="reset" class="btnreset">
                        <i class="ti-reload"></i>&nbsp;Reset</button>

                </div>


            </div>
        </div>
    </div>

</asp:Content>

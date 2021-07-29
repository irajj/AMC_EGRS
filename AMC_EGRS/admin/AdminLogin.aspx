<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" CodeFile="AdminLogin.aspx.cs" Inherits="AMC_EGRS.admin.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link href="assets/pages/waves/css/waves.min.css" rel="stylesheet" />
    <link href="assets/icon/icofont/css/icofont.css" rel="stylesheet" />
    <%-- bootstrap css --%>
    <link href="assets/css/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%-- waves css --%>
    <link href="assets/pages/waves/css/waves.min.css" rel="stylesheet" />
    <%-- themify icon  --%>
    <link href="assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <%-- font awesome css --%>
    <link href="assets/css/font-awesome-n.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <%-- scrollbar css --%>
    <link href="assets/css/style.css" rel="stylesheet" />
    <title>Admin Login Page</title>
</head>

<body themebg-pattern="theme1">
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->

     <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->
                    <form runat="server" method="post" id="adminsigninform" class="md-float-material form-material">
                        <div class="text-center">
                            <img src="assets/imageonline-co-whitebackgroundremoved.png" style="mix-blend-mode: color-burn;" alt="logo.png">
                        </div>
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center">Sign In</h3>
                                    </div>
                                </div>
                                <%-- Admin Textboxs --%>
                                <div class="form-group form-primary">
                                    <asp:TextBox ID="AdminEmail" AutoCompleteType="Disabled" name="email" class="form-control" runat="server" TabIndex="1"></asp:TextBox>
                                    <span runat="server" ID="forck" class="form-bar"></span>
                                    <label runat="server" id="nullname" class="float-label">Your Username here</label>
                                    <asp:RequiredFieldValidator ID="AdminREQ1Uname" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="AdminEmail" ValidationGroup="a" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <%-- admin password box --%>
                                <div class="form-group form-primary">
                                    <asp:TextBox ID="AdminPassword" TextMode="Password" name="password" class="form-control" runat="server" TabIndex="2"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label runat="server" id="nullpassword" class="float-label">Password</label>
                                    <asp:RequiredFieldValidator ID="AdminREQ2Pass" runat="server" ErrorMessage="Pleasse Enter Password" ValidationGroup="a" ControlToValidate="AdminPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-12">
                                        <div class="checkbox-fade fade-in-primary d-">
                                                <label>
                                                    <asp:CheckBox ID="remember" runat="server" />
                                                    <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                    <span class="text-inverse">Remember me</span>
                                                </label>
                                            </div>
                                        <div class="forgot-phone text-right f-right"> 
                                            
                                            <asp:HyperLink ID="ForgotpassHlink" href="Forgotform.aspx" class="text-right f-w-600" runat="server">Forgot Password?</asp:HyperLink>                                            
                                        </div>
                                    </div>


                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <asp:Button ID="SignAd" runat="server" ValidationGroup="a" Text="Sign in" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20" OnClick="SignAd_Click" />
                                    </div>
                                </div>

                                <hr />

                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <%--<asp:Button ID="Button1" runat="server" Text="Sign in" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20" OnClick="SignAd_Click" />--%>
                                        <asp:Button ID="Button1" runat="server"  Text="Go To Citizen page" class="btn btn-success btn-md btn-block waves-effect waves-light text-center m-b-20" OnClick="Button1_Click"  />
                                        <%--<asp:Button ID="GoToClientbtn" runat="server" OnClick="GoToClientbtn_Click"/>--%>
                                    </div>
                                </div>

                                <%-- CREATE ACCOUNT FUNCTION --%>
                                <div class="card-footer py-3 border-0">
                                    <div data-toggle="tooltip" title="To Create this one contact Developer" class="AdminDisFun text-center text-decoration-line-through ">
                                        <span class="disabled">Don't have an account </span>
                                        <a href="#" class="disabled">Create One</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    
                    <!-- end of form -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->

        </div>
        <!-- end of container-fluid -->
    </section>



    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">

                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->
    <!-- Required Jquery -->
    <script src="assets/js/jquery/jquery.min.js"></script>
    <script src="assets/js/jquery-ui/jquery-ui.min.js"></script>
    <script src="assets/js/popper.js/popper.min.js"></script>
    <script src="assets/js/bootstrap/js/bootstrap.min.js"></script>
    <!-- waves js -->
    <script src="assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>
    <script src="assets/js/common-pages.js"></script>
<script src="assets/js/script.js"></script>

</body>

</html>



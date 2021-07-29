<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotform.aspx.cs" Inherits="AMC_EGRS.admin.Forgotform" %>


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
    <title>Admin Forgot Page</title>
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
                    <form runat="server" method="post" id="adminforgetform" class="md-float-material form-material">
                        <div class="text-center">
                            <img src="assets/imageonline-co-whitebackgroundremoved.png" style="mix-blend-mode: color-burn;" alt="logo.png">
                        </div>
                        <div class="auth-box card">
                            <%-- forgot password section start --%>

                            <div class="card-block" runat="server" id="forgotsection">
                                <%-- card header start --%>
                                <div class="row m-b-20">
                                    <div class="col-md-12 text-center">
                                        <h3 class="text-center">Forgot Password?</h3>
                                        <img src="assets/images/forgotimgadmin.png" style="mix-blend-mode: multiply;" height="200" width="200" />
                                        <p>
                                            Enter the email address associated with your account
                                            <br />
                                            we will email you a otp to reset your password
                                        </p>
                                    </div>
                                </div>
                                <%-- card header End --%>

                                <%-- card body start --%>
                                <div class="form-group form-primary form-group form-group-lg ">
                                    <asp:TextBox ID="AdminFgEmail" AutoCompleteType="Disabled" name="email" class="form-control" runat="server" TabIndex="1"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label class="float-label">Your Email Address here</label>
                                    <asp:RequiredFieldValidator ID="ForgetPAsREQ" runat="server" ErrorMessage="Please Enter your email id " ForeColor="Red" ControlToValidate="AdminFgEmail"> </asp:RequiredFieldValidator>

                                </div>
                                <%-- card body End --%>

                                <%-- card footer start --%>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <asp:Button ID="adminOtpSubmit" runat="server" Text="Send OTP" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20" OnClick="adminOtpSubmit_Click" />
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-xl-12 col-md-10">
                                        <p class="text-invers text-center"><a href="AdminLogin.aspx"><b>Back to LoginPage</b></a></p>
                                    </div>

                                </div>
                                <%-- card footer End --%>
                            </div>
                            <%-- forgot password section end --%>


                            <%-- verify password start --%>
                            <div class="card-block" runat="server" id="Verifysectionw">
                                <%-- card header start --%>
                                <div class="row m-b-20">
                                    <div class="col-md-12 text-center">
                                        <h3 class="text-center">Verify Your OTp Here</h3>
                                        <img src="assets/images/happyadmin.png" style="mix-blend-mode: multiply;" height="200" width="200" />
                                        <p>
                                            Enter The varificationcode we just sent you on your email address
                                        </p>
                                    </div>
                                </div>
                                <%-- card header End --%>

                                <%-- card body start : textbox--%>
                                <div class="form-group form-primary">
                                    <asp:TextBox ID="ADVerifyCode" runat="server" AutoCompleteType="Disabled" class="form-control text-center"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label class="float-label">Your OTP here</label>
                                </div>

                                <%-- card body End --%>

                                <%-- card footer start :button--%>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <asp:Button ID="AdVerBtn" class="btn btn-danger btn-md btn-block waves-effect waves-light text-center m-b-20" runat="server" Text="Verify" OnClick="AdVerBtn_Click" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-12 col-md-10">
                                        <p class="text-invers text-center"><a href="AdminLogin.aspx"><b>Back to LoginPage</b></a></p>
                                    </div>

                                </div>
                                <%-- card footer End --%>
                            </div>

                            <%-- verify  password end --%>
                        </div>
                    </form>
                    <!-- end of form -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
        </div>
        <!-- end of row -->
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
    <script src="assets/js/common-pages.js"></script>

</body>

</html>




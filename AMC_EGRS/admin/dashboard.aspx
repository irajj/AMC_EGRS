<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" CodeFile="dashboard.aspx.cs" Inherits="AMC_EGRS.admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/fontawesome.min.css" integrity="sha512-OdEXQYCOldjqUEsuMKsZRj93Ht23QRlhIb8E/X0sbwZhme8eUw6g8q7AdxGJKakcBbv7+/PX0Gc2btf7Ru8cZA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/fontawesome.min.js" integrity="sha512-KCwrxBJebca0PPOaHELfqGtqkUlFUCuqCnmtydvBSTnJrBirJ55hRG5xcP4R9Rdx9Fz9IF3Yw6Rx40uhuAHR8Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/regular.min.js" integrity="sha512-jR9mIF29jOBsgismrZaiPV9H/VNWOpnILyA4MPEPgJFadfbWT0mQ5MnxCMd+JCYdoTuB2n1SkI00XkELU4ETmg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/solid.min.js" integrity="sha512-Qc+cBMt/4/KXJ1F6nNQahXIsgPygHM4S2XWChoumV8qkpZ9oO+gBDBEpOxgbkQQ/6DlHx6cUxa5nBhEbuiR8xw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- dash  board start here --%>
    <div class="page-body">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="float-right m-b-10">
                    <a href="../citizen/home.aspx" target="_blank" class="btn btn-linkedin btn-out"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;GO TO CITIZEN PORTAL SIDE</a>
                </div>
            </div>
        </div>
        <div class="row">

            <!-- Material statustic card start -->
            <div class="col-xl-4 col-md-12">
                <div class="card mat-stat-card">
                    <div class="card-block">
                        <%-- first box first two part (first row) start--%>
                        <div class="row align-items-center b-b-default">
                            <%-- remain part of total complain --%>
                            <div class="col-sm-6 b-r-default p-b-20 p-t-20">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0" >
                                        <i class="fas fa-list  text-c-purple f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                        <asp:Label ID="ToalComplaintlbl" runat="server" Text="10"></asp:Label>

                                        </h5>
                                        <p class="text-muted m-b-0">Total Complaint</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 p-b-20 p-t-20">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="fas fa-pen-fancy text-c-green f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="solvedlbl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Solved Complaint</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- first box first two part (first row) End--%>
                        <%-- first box last two part start second row --%>
                        <div class="row align-items-center">
                            <div class="col-sm-6 p-b-20 p-t-20 b-r-default">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="fas fa-stopwatch text-c-red f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="pandinglbl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Panding Complaint</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 p-b-20 p-t-20">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="far fa-bell text-c-blue f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="ongolbl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Approved Complaint</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- first box last two part End second row --%>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-12">
                <div class="card mat-stat-card">
                    <div class="card-block">
                        <div class="row align-items-center b-b-default">
                            <div class="col-sm-6 b-r-default p-b-20 p-t-20">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="fas fa-project-diagram text-c-purple f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="zonelnl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Zone</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 p-b-20 p-t-20">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="fas fa-sitemap text-c-green f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="wardlbl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Ward</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-sm-6 p-b-20 p-t-20 b-r-default">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="fas fa-building text-c-red f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="departlbl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Department</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 p-b-20 p-t-20">
                                <div class="row align-items-center text-center">
                                    <div class="col-4 p-r-0">
                                        <i class="fas fa-users text-c-purple f-24"></i>
                                    </div>
                                    <div class="col-8 p-l-0">
                                        <h5>
                                            <asp:Label ID="usrlbl" runat="server" Text=""></asp:Label>
                                        </h5>
                                        <p class="text-muted m-b-0">Users</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-12">
                <div class="card mat-clr-stat-card text-white green ">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-3 text-center bg-c-green">
                                <i class="fas fa-star mat-icon f-24"></i>
                            </div>
                            <div class="col-9 cst-cont">
                                <h5>
                                    <asp:Label ID="feedlbl" runat="server" Text=""></asp:Label>
                                </h5>
                                <p class="m-b-0">Feedback Received</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mat-clr-stat-card text-white blue">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-3 text-center bg-c-blue">
                                <i class="fas fa-trophy mat-icon f-24"></i>
                            </div>
                            <div class="col-9 cst-cont">
                                <h5>
                                    <asp:Label ID="faqlbl" runat="server" Text=""></asp:Label>
                                </h5>
                                <p class="m-b-0">Total FAQ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Material statustic card end -->
            <!-- order-visitor start -->


            <!-- order-visitor end -->

            <!--  sale analytics start -->
            
            </div>
            <div class="col-xl-6 col-md-12">
                
            </div>

            <!--  sale analytics end -->

            <!-- Project statustic start -->
            
            <!-- Project statustic end -->
        </div>
    </div>
    <%-- dash  board End here --%>
</asp:Content>

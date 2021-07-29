<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>AMC-EGRS: Home Page</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="container-fluid">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner text-center">
                    <div class="carousel-item active ">
                        <img class="d-inline-block w-75 " src="citizenassets/images/carouselsection/1_abt_ahmd.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-inline-block w-75" src="citizenassets/images/carouselsection/baner-cpgrams_1%20(1).jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-inline-block w-75" src="citizenassets/images/carouselsection/baner-cpgrams_3.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href=" #carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <%-- about start --%>
            <div class="aboutSection"  margin: 10px -15px; background: #efefef;">
                <div class="container-fluid">
                    <div class="col-md-12 mt-2">
                            <h6 class="emailMsg">
                                <asp:Label ID="currentstatus" runat="server" Text="Any Grievance sent by email will not be attended to / entertained. Please lodge your grievance at the website."></asp:Label>
                                
                            <img src="citizenassets/images/flashing_new.gif" width:"50" height="30"/>

                            </h6>                        
                    </div>
                    <div class="row innerSection">
                        <div class="col-md-8 p-0">
                            
                            <div>
                                <h2 id="httag" runat="server">ABOUT EGRS</h2>
                                <div class="text-justify font-size-14 pt-1 pb-0">
                                    <asp:Label ID="spanp" runat="server" Text="Label">
                                         <span class="text-justify"  >
                                        The EGRS is a web based enterprise solution that allows Municipality/Corporation to enhance citizen satisfaction through comprehensive service management and efficient service delivery.<br />
                                        EGRS automates entire complaint process, right from registration to closure. It also enforces service level policies to ensure the complaint gets attended within desired timeline or gets escalated to higher authorities for their attention and intervention.<br />
                                        Citizens can lodge complaints through a call center, website or by visiting a ward office. At call center or ward office, an operator registers a complaint within the system with all necessary details. A complainant can lodge single or multiple complaints during a single call. In all cases, the complainant is given a complaint acknowledgement number.<br />
                                        Once a complaint is registered within the system, it is assigned to a concerned area officer dealing with the reported problem. The system automatically sends an SMS to officer alerting him on the complaint for taking required actions. The officer calls the complainant, if necessary, to seek specific details.<br />
                                        The officer is expected to resolve the complaint within a specified period of time. Once a complaint is resolved, the officer marks the complaint as closed in the system. The citizen receives an SMS confirming the resolution of his/her complaint. If the citizen is not satisfied he/she can request to re-open the complaint, which is then escalated to higher authority.<br />
                                        If the complaint is not resolved and closed within the specified period, the same gets escalated to higher authorities. On repeated failures to resolve the problem, it gets escalated to Dy. Commissioner.<br />
                                    </span>
                                        
                                    </asp:Label> 
                                   
                                    <br />
                                    <span class="font-bold text-info font-italic" id="spanp2" runat="server"><i class="ti-info-alt" ></i>&nbsp;<asp:Label ID="spn2" runat="server" Text="Issues which are not taken up for redress :"></asp:Label></span>
                                    <ul class="mt-2 list-style-none pb-0">
                                    <li class="ml-3"><i class="ti-angle-right"></i>&nbsp;
                                         <asp:Label ID="i1" runat="server" Text="Subjudice cases or any matter concerning judgment given by any court."></asp:Label>
                                        

                                    </li>
                                    <li class="ml-3"><i class="ti-angle-right"></i> &nbsp;
                                        <asp:Label ID="i2" runat="server" Text="Personal and family disputes."></asp:Label>
                                        

                                    </li>
                                    <li class="ml-3"><i class="ti-angle-right"></i> &nbsp;
                                        <asp:Label ID="i3" runat="server" Text="RTI matters."></asp:Label>
                                        

                                    </li>
                                    <li class="ml-3"><i class="ti-angle-right"></i> &nbsp;
                                        <asp:Label ID="i4" runat="server" Text="Anything that impacts upon territorial integrity of the country orfriendly relations with other countries."></asp:Label>
                                        

                                    </li>
                                    <li class="ml-3"><i class="ti-angle-right"></i> &nbsp;
                                        <asp:Label ID="i5" runat="server" Text="Suggestions."></asp:Label>                                        
                                   </li>
                                </ul>
                                </div>
                            </div>

                        </div>
                        <%-- right side content side --%>
                        <div class="col-md-4">
                            <h2 id="leftpanellan" runat="server">Benefits of EGRS</h2>
                            <div class="whatsNew">
                                <ul>
                                    <li>
                                        <span>
                                            <asp:Label ID="lp1" runat="server" Text="Citizens need not go to Ward offices to register complaint"></asp:Label>                                            
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <asp:Label ID="lp2" runat="server" Text="System available round the clock - Call Centre, Website, SMS, Email, IVR, Ward Offices, Mobile Application"></asp:Label>                                            
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <asp:Label ID="lp3" runat="server" Text="Improved communication by way of SMS / Email alerts"></asp:Label>                                            
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <asp:Label ID="lp4" runat="server" Text="EGRS provides data of frequent complaints and average turnaround time for each kind of problem.It helps Municipality/Corporation to focus the areas to improve the services by enhancing the manpower and infrastructure. This also helps Municipality/Corporation to prioritize on their services."></asp:Label>                                            
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <%-- start new --%>
                        <div class="row container-fluid my-2">
                            <div class="col-md-12 ">
                                <hr />
                            <h2 id="center" runat="server">How to register a complaint</h2>
                            </div>
                            <div class="col-md-12">
                        <p style="line-height: 1.4em;">
                            <asp:Label ID="c1" runat="server" Text="A citizen can register complaint(s) at call center, ward office or through website"></asp:Label>
                        </p>
                            </div>
                        </div>
                        <div class="row container-fluid">
                            <%-- first col --%>
                            <div class="col-md-3 col-sm-3">
                                <h6 style="font-size: 16px; font-weight: 700;">
                                <a href="OnlineComplaintRegistration.aspx" style="color: #0aa89e;">
                                    <asp:Label ID="c2" runat="server" Text="To register complaint online through website:"></asp:Label>                                    
                                </a>
                                </h6>
                                <span>
                                    <asp:Label ID="c3" runat="server" Text="Click on the “Online” option of Complaint Registration and enterdetail of your complaint."></asp:Label>
                                </span>
                            </div>
                            <%-- second col --%>

                            <div class="col-md-3 col-sm-3" >
                                <div class="common-content-boxs clearfix">
                            <h6 style="font-size: 16px; font-weight: 700;">

                                <a href="ComplainRegistrationMobile.aspx" style="color: #0aa89e;">
                                    <asp:Label ID="ce4" Text="To register complaint at call center:" runat="server" />
                                </a></h6>
                            <span>
                                <asp:Label ID="ce5" Text="Contact our dedicated call center by dialing 155303 from landline or mobile between
                                24*7 to raise complaint. Municipality/Corporation assures to provide a seamless
                                support." runat="server" />
                            </span></div>
                            </div>
                            <%-- third col --%>
                            <div class="col-md-3 col-sm-3" >
                        <div class="common-content-boxs clearfix">
                            <h6 style="font-size: 16px; font-weight: 700;">
                                <a href="QuickComplainRequest.aspx" style="color: #0aa89e;">
                                    <asp:Label ID="ce6" Text="To register complaint through E-Mail:" runat="server" />
                                </a></h6>
                            <span>
                                <asp:Label ID="ce7" Text="Send your Email with “ Name, Mobile Number, Problem to resolve and Location
                                where the problem is  at amcegrsahmd@gmail.com The call
                                operator will check the email and register the complaint in the system. Operator
                                may contact the citizen in case, information provided is insufficient or any clarification
                                required." runat="server" />
                            </span></div>
                            </div>
                            <%-- fourt col --%>

                            <%--<div class="col-md-3 col-sm-3">
                                <div class="common-content-boxs clearfix">
                            <h6 style="font-size: 16px; font-weight: 700;">
                                <a href="ComplainRegistrationMobile.aspx" style="color: #0aa89e;">To register complaint
                                    through SMS:</a></h6>
                            <span>Send text “AMCCRS NEW” to 54646. A Call Centre operator will call
                                back to take necessary details to register the complaint.</span></div>
                            </div> --%>
                        </div>
                        <%-- third section --%>
                       <div class="col-md-12 col-sm-12">
                        <div class="common-content-div clearfix">
                            <hr />
                            <h2 id="centerunder" runat="server">
                                To register complaint through IVR:
                            </h2>
                            <br>
                            <p>
                                <asp:Label ID="cu1" runat="server" Text="Citizen can register complaint through IVR during non working hours or when all operators are busy attending complaints."></asp:Label>                                
                            </p>
                            <ul>
                                <li>
                                    <asp:Label ID="cu2" runat="server" Text="<b>Step 1 </b>: :Select language – Press 1 for Gujarati, 2 for English or 3 for Hindi"></asp:Label>
                                </li>
                                <li>
                                    <asp:Label ID="cu3" runat="server" Text="<strong>Step – 2 :</strong> Press 1 to continue with IVR or press 2 for callback"></asp:Label>                                    
                                </li>
                                <li>
                                    <asp:Label ID="cu4" runat="server" Text="<strong>Step – 3 :</strong> Tell your Name &amp; press #    "></asp:Label> 
                                </li>
                                <li>
                                    <asp:Label ID="cu5" runat="server" Text="<strong>Step – 4 :</strong> Tell your Mobile Number &amp; press #"></asp:Label>
                                </li>
                                <li>
                                    <asp:Label ID="cu6" runat="server" Text="<strong>Step – 5 :</strong> Tell your Problem to resolve &amp; press #"></asp:Label>                                    
                                </li>
                                <li>
                                    <asp:Label ID="cu7" runat="server" Text="<strong>Step – 6 :</strong> Tell your Location address where the problem is &amp; press #"></asp:Label>

                                </li>
                            </ul>
                            <p>
                                <asp:Label ID="cu8" runat="server" Text="The call center operator will listen to the IVR recorded complaint and register the same in the system. He may contact the citizen in case information provided is insufficient or any clarification required."></asp:Label>                                
                            </p>
                           <hr />
                        </div>
                    </div>
                        <%-- 5th section --%>
                        <div class="row">

                            <div class="col-md-12">
                                <h2 id="footerlan" runat="server">Re-Opening of complaint</h2>
                                <br />
                            </div>
                            <div class="col-md-12">
                                <p>
                                    <asp:Label ID="f1" runat="server" Text="Not satisfied with our previous response?"></asp:Label>                                    
                                </p>
                            </div>
                        </div>
                        <div class="row container-fluid">
                            <div class="col-md-4" >
                                <div class="common-content-boxs clearfix">
                                <h6 style="font-size: 16px; font-weight: 700;">
                                    <a style="color: #0aa89e;">
                                        <asp:Label ID="f2" runat="server" Text="Re-Open complaint through E-Mail:"></asp:Label>
                                    </a></h6>
                                <span>
                                    <asp:Label ID="f3" runat="server" Text="Send your Email with “Mobile Number, Token Number and Reason for reopen “ at “ccrs@ahmedabadcity.gov.in“ The call operator will check the email and reopen the complaint in the system. Operator may contact the citizen in case,information provided is insufficient or any clarification required."></asp:Label>                                    
                                </span></div>
                            </div>
                            <%--<div class="col-md-4" >
                                <div class="common-content-boxs clearfix">
                                <h6 style="font-size: 16px; font-weight: 700;">
                                    <a href="ReopenComplainMobile.aspx" style="color: #0aa89e;">Re-Open Complaint Through
                                        Phone:</a></h6>
                                <span>Call the call centre at 155303 between 24*7 and provide complaint number.</span></div>
                            </div>--%>
                            <%--<div class="col-md-4" >
                                <div class="common-content-boxs clearfix">
                                <h6 style="font-size: 16px; font-weight: 700;">
                                    <a href="ReopenComplainMobile.aspx" style="color: #0aa89e;">Re-Open Through SMS:</a></h6>
                                <span>Send text “AMCCRS REOPEN [Complaint/Token No]” to 54646.</span>
                                <p class="clearfix">
                                    <strong>Example :</strong> AMCCRS REOPEN SWM-0613123456 to 54646</p>
                            </div>
                            </div>--%>                            
                        </div>
                    </div>
                    <%-- one step back at footer --%>
                        <section class="boxSection">
                            <div class="row innerSection text-center">
                                    <div class="col-md-4">
                                        <div class="box box2">
                                            <a href="signup.aspx">
                                                <img src="citizenassets/images/register.png">
                                                <p><span>
                                                    <asp:Label ID="f4" runat="server" Text="Register/Login"></asp:Label>                                                    
                                                   </span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="box box1">
                                            <a href="onlinecomstatus.aspx">
                                                <img src="citizenassets/images/status.png">
                                                <p><span>
                                                    <asp:Label ID="f5" runat="server" Text="View Status"></asp:Label>                                                    
                                                   </span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="box box3">
                                            <a href="contact.aspx">
                                                <img src="citizenassets/images/contact.png">
                                                <p><span>
                                                    <asp:Label ID="f6" runat="server" Text="Contact Us"></asp:Label>                                                    
                                                   </span></p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
          
                        </section>                    
                      </div>
                </div>
            </div>


        </div>
</asp:Content>


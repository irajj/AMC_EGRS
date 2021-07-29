<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS: Contact Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid " >
        <div class="card" >
            <div class="card-header" >
                <h4 class="card-title">Contact us</h4>
            </div>
            <%-- card body --%>
            <div class="card-body" >
                <hr />
                <%-- take column here --%>
                <div class="col-12 col-sm-12 col-lg-12 table-responsive" >
                    <table class="table">
                        <thead>
                            <th colspan="6" class="bg-primary text-center text-white col-md-12">Ahemedabad Municipal Officers</th>
                            <tr>
                                <th>S.No.</th>
                                <th>Name</th>
                                <th>Designation</th>
                                <th>Dealing with grievances related to</th>
                                <th>Phone Number</th>
                                <th>Fax Number</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Shri. MukeshKumar </td>
                                <td>Municipal Comminssioner</td>
                                <td>Mayor</td>
                                <td>25391811</td>
                                <td>25354638</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Mr. Kirit Parmar </td>
                                <td>Mayor </td>
                                <td>Deputy Mayor </td>
                                <td>25329009</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Shri Dineshbhai Makwana</td>
                                <td>Deputy Mayor</td>
                                <td>Officers of all commiteee</td>
                                <td>25354322</td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    <%-- table end --%>
                    <br />
                    <p>
                        Director of EGRS, Department of Administrative Reforms &amp; Public Grievances
                <br>
                        <strong>Ms Swati Parmar</strong><br>
                        EGRS at Ahmdebad<br>
                        23401429
                    </p>
                    <hr />  
                    <p>
                Head of the Department, Department of Administrative Reforms &amp; Public Grievances <br>
                <b> Shri. Vijay Nehra</b><br>
                IAS<br>
                23742546
            </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

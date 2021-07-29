<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" CodeFile="feedback.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS:  Feedback</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">


        <center>
        <div class="card card-info text-justify" style="padding: 10px; margin: 10px; width:1200px; background-color: #C0C0C0;">
            <div class="card-header">
                <h4 class="card-title">Feedback</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label1" runat="server" Text="Email Address. :" CssClass="col-12 col-md-12 font-weight-bold  required p-0"></asp:Label>
                        <asp:TextBox ID="usremailfeed" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your email" ForeColor="Red" ControlToValidate="usremailfeed"></asp:RequiredFieldValidator>
                    <br />
                    </div>
                    <div class="col-md-12">
                        <asp:Label ID="txtrefname" runat="server" Text="Complaint No. :" CssClass="col-12 col-md-12 font-weight-bold  required p-0"></asp:Label>
                        <asp:TextBox ID="usecomfeed" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Complaint number" ControlToValidate="usecomfeed" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <br />
                    </div>
                    <div class="col-md-12">
                        <asp:Label ID="feedback" runat="server" Text="Feedback:" CssClass="col-12 col-md-12 font-weight-bold  required p-0"></asp:Label>
                       <asp:DropDownList ID="dropfeedback" CssClass="form-control" runat="server" >
                                            <asp:ListItem>---Select Complaint Category---</asp:ListItem>
                                            <asp:ListItem>Work Done and Satisfied (સંતોષકારક થયેલ ગયેલ છે.)</asp:ListItem>
                                            <asp:ListItem>Work done but not satisfied (કામ થયેલ છે.પણ સંતોષકારક નથી.)</asp:ListItem>
                                            <asp:ListItem>Work not done (કામ થયેલ નથી.)</asp:ListItem>
                       </asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-md-12">
                        <asp:Label ID="remarks" runat="server" Text="Remarks :" CssClass="col-12 col-md-12 font-weight-bold  required p-0"></asp:Label>                    
                        <asp:TextBox ID="txtremarks" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="250" TextMode="MultiLine"></asp:TextBox>
                        <br />
                    </div>
                    <br />
                    </div>
                    </div>
                    <div class="control-group">
                            <div class="controls">
                                <center>
                                    
                                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info">SUBMIT</asp:LinkButton>--%>
                                        <asp:LinkButton ID="usrfeedsubmit" runat="server" CssClass="btn-danger usrbtnsubmit" OnClick="usrfeedsubmit_Click"  ><i class="ti-save"></i>&nbsp;SUBMIT</asp:LinkButton>

                                        &nbsp;                
                                        <button type="reset" class="btnreset">
                                            <i class="ti-reload"></i>&nbsp;Reset</button>
                                </center>
                            </div>
                        </div>
            </div>
            </center>
        </div>
</asp:Content>

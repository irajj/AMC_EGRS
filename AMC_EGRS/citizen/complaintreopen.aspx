<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="complaintreopen.aspx.cs" CodeFile="complaintreopen.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS:  Complaint Re-open</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">


        <center>
            <asp:Panel ID="reopenpanel" runat="server">
            <div class="card card-info text-justify" style="padding: 10px; margin: 10px; width: 1200px; background-color: #C0C0C0;">
                <div class="card-header">
                    <h4 class="card-title">Complaint Re-Open</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <span id="ContentPlaceHolder1_txtref" class="col-12 col-md-12 font-weight-bold  required p-0" for="password">Email. :</span>
                            <asp:TextBox ID="useremailreopen" runat="server" autocomplete="off" MaxLength="50" class="form-control col-12 col-md-12"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="comreopen" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your email" ControlToValidate="useremailreopen" ForeColor="Red" ></asp:RequiredFieldValidator>

                            <br>
                        </div>
                        <div class="col-md-12 col-12">
                            <span id="ContentPlaceHolder1_tx" class="col-12 col-md-12 font-weight-bold  required p-0" for="password">Complaint No. :</span>
                            <asp:TextBox ID="usernoreopen" runat="server" autocomplete="off" MaxLength="50" class="form-control col-12 col-md-12"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="comreopen" ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter your complaint number" ControlToValidate="usernoreopen" ForeColor="Red"></asp:RequiredFieldValidator>

                            <br>
                        </div>
                        <br>
                    </div>
                    <div class="col-6 col-md-12 text-center mt-2">
                        <asp:LinkButton ID="reopenbtn" runat="server" ValidationGroup="comreopen" CssClass="btn-danger usrbtnsubmit" OnClick="reopenbtn_Click"><i class="ti-unlock"></i>&nbsp;Click here for Re-complaint</asp:LinkButton>
                    </div>

                </div>
            </div>
            </asp:Panel>

            <asp:Panel ID="reopenpanel1" runat="server" Visible="False">
                <div class="card card-info text-justify" style="padding: 10px; margin: 10px; width: 1200px; background-color: #C0C0C0;">
                    <div class="card-body" ">
                        <div>
                            <div class="col-12 col-md-12">
                            <span id="ContentPlaceHolder1_email" class="col-12 col-md-12 font-weight-bold  p-0" for="password">Your Email. -:</span>
                                <asp:Label ID="emaillblreopen" runat="server" Text=""></asp:Label>
                                <div class="float-right">

                            <span id="ContentPlaceHolder1_uniqueno" class="col-12 col-md-12 font-weight-bold  p-0" for="password">Your Complaint number. -:</span>
                                <asp:Label ID="comnumberlblreopen" runat="server" Text=""></asp:Label>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <br />
                            <span id="ContentPlaceHolder1_t" class="col-12 col-md-12 font-weight-bold  required p-0" for="password">Why do you want to Re-Open the complaint. :</span>
                            <br />
                            <asp:TextBox ID="reopentxt" runat="server" TextMode="MultiLine" Rows="3" Columns="10" class="form-control col-12 col-md-12"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Explaint why do you re-open the complaint" ControlToValidate="reopentxt" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <span id="ContentPlaceHolder1_spanimgs" class="col-12 col-md-12 font-weight-bold  required p-0" for="password">You can Add images to explain in details. :</span>
                            <br />
                            <asp:FileUpload ID="reopenfileupload" runat="server" />


                            <br>
                        </div>
                        <div class="col-6 col-md-12 text-center mt-2">
                        <asp:LinkButton ID="usrsubmitreopen" runat="server" CssClass="btn-danger usrbtnsubmit" OnClick="usrsubmitreopen_Click" ><i class="ti-reload"></i>&nbsp;Re-open the Complaint</asp:LinkButton>
                    </div>
                    </div>
                </div>
            </asp:Panel>
        </center>
    </div>
</asp:Content>

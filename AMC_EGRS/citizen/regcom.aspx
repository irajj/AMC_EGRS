<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true"  CodeBehind="regcom.aspx.cs" CodeFile="regcom.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS:  Register Complaint Online</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-overflow-low-xs" style="border-radius: 5px; background-color: #C0C0C0;">
        <div class="widget-top-title-2 container container-palette" style="background-color: #C0C0C0">
            <div class="color-secondary">
                <div class="bg-mask">
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-12 col-md-12">
                                <h1>Complaint Register</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container " style="background-color: #C0C0C0">
            <%--container-overflow-low-xs--%>
            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="widget box box-fill widget-form form-main" id="form2">
                        <%--<div class="widget-header vert-line-r-l vert-line-primary m-0 p-0">
                        <h3>Register Complaint</h3>
                    </div>--%>
                        <hr />
                        <div class="widget-content form-additional">
                            <%-- Complaint details --%>
                            <div class="control-group">
                                <h4>Online Complaint registration</h4>
                                
                                <div class="control-group">
                                    <label class="control-label">Select Ward</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="dropward2" CssClass="form-control" runat="server">
                                            <asp:ListItem Text="---please select ward---" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Select Ward" ForeColor="Red" ControlToValidate="dropward2" InitialValue="---please select ward---" ValidationGroup="regcom"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Problem</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="droppro2" CssClass="form-control" runat="server">
                                            
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Select Problem" ForeColor="Red" InitialValue="---select problem---" ValidationGroup="regcom" ControlToValidate="droppro2"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <%-- Contact person details --%>
                            <div class="control-group mt-5">
                                <hr />
                                <h4 class="">Contact Person Details</h4>
                                <div class="control-group ">
                                    <label class="control-label">Citizen Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="please enter name" ForeColor="Red" ValidationGroup="regcom"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Citizen Mobile Number</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtcontno"  CssClass="form-control" runat="server" maxlength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtcontno" runat="server" ErrorMessage="please enter your contact number" ForeColor="Red" ValidationGroup="regcom"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontno" ErrorMessage="Contact isn't in right format" ForeColor="Red" ValidationExpression="\d{10,14}" ValidationGroup="regcom"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Email-Id</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email isn't in right format" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="regcom"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Address</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your Address" ControlToValidate="txtaddress" ForeColor="Red" ValidationGroup="regcom"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <%-- Upload Document/Images --%>
                            <div class="control-group mt-5">
                                <hr />
                                <h4>Upload Document/Images</h4>
                                <div class="row">
                                    <div class="col-12 col-md-12">
                                        <div class="card ">
                                            <div class="card-header">
                                                <h3 class="card-title bg-danger">Photo અને Signature Upload કરવા માટેની અગત્યની સુચનાઓ : -
                                                </h3>
                                            </div>
                                            <div class="" style="padding: 1px">
                                                <div class="table-responsive">
                                                    (i) Photo સ્કેન કરીને JPG ફોર્મેટમાં અપલોડ કરવો.
								<br>
                                                    (ii)  Photo ની Size 2MB થી વધારે રાખવી નહિ.
								<br>
                                                    (iii) જો photo ની Size 2MB થી વધી જાયતો Scanner ના DPI Resolution
								ના સેટીંગ બદલીને ફરીથી સ્કેન કરવુ .
								

                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="input-group">
                                        <div class="col-12 col-md-6">
                                            <label class="control-label">Title</label>

                                            <span>To upload photo </span>
                                            <asp:TextBox ID="Txttitle" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                            <asp:Button ID="btnfileupload" runat="server" Text="UPLOAD"  />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />

                            <div class="control-group">

                                <div class="controls mb-3">
                                    <center>
                                        <asp:LinkButton ID="usrsubmit" runat="server" ValidationGroup="regcom" CssClass="btn-danger usrbtnsubmit" OnClick="usrsubmit_Click" ><i class="ti-save"></i>&nbsp;Save</asp:LinkButton>
                                        <button type="reset" class="btnreset">
                                            <i class="ti-reload"></i>&nbsp;Reset</button>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

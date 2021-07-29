<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="onlinecomstatus.aspx.cs" CodeFile="onlinecomstatus.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS: Complaint Status
        </title>

    <style>
        .table-condensed tr th {
            border: 0px solid #6F0047;
            color: white;
            background-color: #6F0047;
        }

        .table-condensed, .table-condensed tr td {
            border: 0px solid #000;
        }

        tr:nth-child(even) {
            background: #f8f7ff
        }

        tr:nth-child(odd) {
            background: #fff;
        }

        .editbtn {
            background-color: #448aff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <center>
            <div class="card card-info text-justify" style="padding: 10px; margin: 10px; width: 1200px; background-color: #C0C0C0;">
                <div class="card-header">
                    <h4 class="card-title">Complaint Status Online</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="Label1" runat="server" Text="Email ID.:" CssClass="col-12 col-md-12 font-weight-bold  required p-0"></asp:Label>
                            <asp:TextBox ID="useremailtxt" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter email" ControlToValidate="useremailtxt"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="txtrefid" runat="server" Text="Complaint No. :" CssClass="col-12 col-md-12 font-weight-bold  required p-0" for="password"></asp:Label>
                            <asp:TextBox ID="usercomno" AutoCompleteType="Disabled" runat="server" CssClass="form-control col-12 col-md-12" MaxLength="50" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter complaint" ControlToValidate="usercomno"></asp:RequiredFieldValidator>

                            <br />
                        </div>
                        <br />
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <center>
                                <asp:LinkButton ID="usrsubmit" runat="server" CssClass="btn-danger usrbtnsubmit" OnClick="usrsubmit_Click"><i class="ti-search"></i>&nbsp;Search</asp:LinkButton>
                                <button type="reset" class="btnreset">
                                    <i class="ti-reload"></i>&nbsp;Reset</button>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </div>
    <center>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-12">

                    <div class="float-right m-b-10">
                    <asp:LinkButton ID="closeusrcom" runat="server" CssClass="btn-danger usrbtnsubmit" OnClick="closeusrcom_Click" Visible="False" ><i class="ti-close"></i>&nbsp;Search</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="cuniqueno" HeaderText="cuniqueno" SortExpression="cuniqueno" />
                            <asp:BoundField DataField="cpemail" HeaderText="cpemail" SortExpression="cpemail" />
                            <asp:BoundField DataField="cpname" HeaderText="cpname" SortExpression="cpname" />
                            <asp:BoundField DataField="ctitle" HeaderText="ctitle" SortExpression="ctitle" />
                            <asp:BoundField DataField="cproblem" HeaderText="cproblem" SortExpression="cproblem" />
                            <asp:BoundField DataField="cstatus" HeaderText="cstatus" SortExpression="cstatus" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" SelectCommand="SELECT [cuniqueno], [cpemail], [cpname], [ctitle], [cproblem], [cstatus] FROM [complaint_master] WHERE ([cuniqueno] = @cuniqueno)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="usercomno" Name="cuniqueno" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </center>

</asp:Content>

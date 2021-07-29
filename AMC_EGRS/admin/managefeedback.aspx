<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="managefeedback.aspx.cs" CodeFile="managefeedback.aspx.cs" Inherits="AMC_EGRS.admin.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table-condensed tr th {
            border: 0px solid #448aff;
            color: white;
            background-color: #448aff;
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

        .editbtn{
            background-color:#448aff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover"
 runat="server" AutoGenerateColumns="False" DataKeyNames="fid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
            <asp:BoundField DataField="femail" HeaderText="femail" SortExpression="femail" />
            <asp:BoundField DataField="fcomnumber" HeaderText="fcomnumber" SortExpression="fcomnumber" />
            <asp:BoundField DataField="fcategory" HeaderText="fcategory" SortExpression="fcategory" />
            <asp:BoundField DataField="fremarks" HeaderText="fremarks" SortExpression="fremarks" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" SelectCommand="SELECT * FROM [feedback_master]"></asp:SqlDataSource>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/citizen.Master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="AMC_EGRS.citizen.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>AMC-EGRS: FAQ Page</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-overflow-low-xs section">
        <div class="">
            <div class="box-fill box">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="widget">
                            <div class="widget-header vert-line-r-l vert-line-primary">
                                <h2>FIND YOUR ANSWER</h2>
                            </div>
                            <div class="widget-content panel-group panel-content property_content_position" id="accordionThree">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordionThree" href='#collapse30<%#Eval("Faq_id") %>' class="collapsed">
                                                        <p><%#Eval("Faq_que") %></p>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id='collapse30<%#Eval("Faq_id") %>' class="panel-collapse collapse" aria-expanded="false" role="definition">
                                                <div class="panel-body">
                                                    <p><%#Eval("Faq_ans") %></p>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>

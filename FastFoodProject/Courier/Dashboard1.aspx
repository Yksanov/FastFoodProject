<%@ Page Title="" Language="C#" MasterPageFile="~/Courier/Courier.Master" AutoEventWireup="true" CodeBehind="Dashboard1.aspx.cs" Inherits="FastFoodProject.Courier.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-inner-content">
        <div class="col-md-6 col-xl-3">
            <div class="card widget-card-1">
                <div class="card-block-small">
                    <i class="icofont icofont-users-social bg-c-blue card1-icon"></i>
                    <span class="text-c-pink f-w-600">Клиенты</span>
                    <h4><% Response.Write(Session["user"]); %> </h4>
                    <div>
                        <span class="f-left m-t-10 text-muted">
                            <a href="Client.aspx"><i class="text-c-pink f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

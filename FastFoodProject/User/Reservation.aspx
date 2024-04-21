<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="FastFoodProject.User.Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- book section -->
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
                <h2>Booking</h2>
                <h2>Book a table</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Ваше имя"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="И всё же, как к вам обращаться?" ControlToValidate="txtName"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Номер телефона"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Пожалуйста, чтобы забронировать столик необходимо указать телефон." ControlToValidate="txtPhone"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ваш адрес электронной почты" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Требуется электронная почта" ControlToValidate="txtEmail"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:DropDownList ID="ddlPersons" runat="server" CssClass="form-control nice-select wide" AutoPostBack="true">
                                <asp:ListItem Text="Выберите количество" Value="" Disabled="true" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1">1 Гость</asp:ListItem>
                                <asp:ListItem Value="2">2 Гостя</asp:ListItem>
                                <asp:ListItem Value="3">3 Гостя</asp:ListItem>
                                <asp:ListItem Value="4">4 Гостя</asp:ListItem>
                                <asp:ListItem Value="5">5 Гостей</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvPersons" runat="server" InitialValue="" ErrorMessage="Пожалуйста, выберите количество человек для бронирования столика." ControlToValidate="ddlPersons" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div>
                            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date" placeholder="Выберите дату"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Пожалуйста, чтобы забронировать столик, необходимо указать дату." ControlToValidate="txtDate" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div class="btn_box">
                            <asp:Button ID="btnSubmit" runat="server" Text="Заказать" CssClass="btn btn-warning rounded-pill pl-4 pr-4 text-white"
                                OnClick="btnSubmit_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end book section -->

</asp:Content>

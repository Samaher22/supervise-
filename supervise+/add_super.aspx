<%@ Page Title="" Language="C#" MasterPageFile="~/supervise.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="add_super.aspx.cs" Inherits="supervise_.add_super" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl py-5 bg-primary hero-header mb-5">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center text-start">
                    <h1 class="text-white animated zoomIn">Add supervisor</h1>
                    <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                </div>
            </div>
        </div>
    </div>
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="section-title position-relative text-center mb-5 pb-2 wow fadeInUp" data-wow-delay="0.1s">
                        <h2 class="mt-2">Make your study more specific</h2>
                    </div>
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">

                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="Name1" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <label for="name">Name</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="email1" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="email" required></asp:TextBox>
                                        <label for="email">University Email</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="email1" ErrorMessage="Email is Required Field"
                                            ForeColor="#030637"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="email1" ErrorMessage="Email is not in correct format"
                                            ForeColor="#030637"
                                            ValidationExpression="\w+([-+.']\w+)*@taibahu.edu.sa"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                 <div class="col-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="pass" TextMode="Password" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Password" required></asp:TextBox>
                                        <label for="name">Password</label>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Confirm" required></asp:TextBox>
                                        <label for="name">Confirm Password</label>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                                            ControlToCompare="pass" ControlToValidate="TextBox4"
                                            ErrorMessage="Password Mismatch" ForeColor="#030637"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="rank" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <label for="name">Rank</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="count" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <label for="name">Group Count</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="bg1" runat="server" TextMode="MultiLine" CssClass="form-control border-1  w-200 p-4" placeholder="Confirm" required></asp:TextBox>
                                        <label for="name">Background</label></div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="phone" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" TextMode="Phone" placeholder="Phone No" required></asp:TextBox>
                                        <label for="name">Phone Number</label>
                                         </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:RadioButtonList ID="gender" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="male">Male</asp:ListItem>
                                            <asp:ListItem Value="female">Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <label for="name">Gender</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="int1" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" TextMode="Phone" placeholder="Phone No" required></asp:TextBox>
                                        <label for="name">Interset</label>
                                    </div>
                                </div>
                                <br />
                                <div class="col-12">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                        Text="Regiset" CssClass="btn btn-primary w-100 py-3" />
                                </div>
                                <br />
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:Label ID="Label1" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

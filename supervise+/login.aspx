<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="supervise_.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-xxl py-5 bg-primary hero-header mb-5">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center text-start">
                      <h1 class="text-white animated zoomIn">Login</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                   </div>
            </div>
        </div>
    </div>
        <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="section-title position-relative mb-4 pb-2">
                        <h2 class="mt-2">Login to your profile</h2>
                    </div>
                    <div class="row g-3">
                        <div class="col-sm-8">
                            <div class="form-floating">
                                <asp:TextBox ID="TextBox1" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" placeholder="email" autocomplete="on"></asp:TextBox>
                                <label for="name">Email</label>
                            </div>
                        </div>
                            <br />
                        <div class="col-sm-8">
                            <div class="form-floating">
                                <asp:TextBox ID="TextBox2" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                <label for="name">Password</label>
                            </div>
                        </div>
                        <br />
                        <div class="col-sm-8 position-relative mb-4 pb-2">
                        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Login" CssClass="btn btn-primary rounded-pill w-100 py-2 px-4 ms-3 d-none d-lg-block" />
                        </div>
                        <div class="col-sm-8">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <br />
                        </div>
                        <div class="col-sm-8 section-title position-relative mb-4 pb-2">
                            <h2 class="mt-2">You don't have an account?</h2>
                            <br />
                        </div>
                        <div class="col-sm-8 position-relative mb-4 pb-2">
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary rounded-pill py-2 px-4 ms-3 d-none d-lg-block" runat="server" OnClick="LinkButton1_Click">Register</asp:LinkButton>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img class="img-fluid wow zoomIn" data-wow-delay="0.5s" src="img/login.png">
                </div>
            </div>
        </div>
    </div>
        <!-- About End -->

</asp:Content>

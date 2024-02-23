<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="register.aspx.cs" Inherits="supervise_.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl py-5 bg-primary hero-header mb-5">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center text-start">
                    <h1 class="text-white animated zoomIn">Register</h1>
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
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <label for="name">University_Id</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="email" required></asp:TextBox>
                                        <label for="email">University Email</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="TextBox2" ErrorMessage="Email is Required Field"
                                            ForeColor="#030637"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="TextBox2" ErrorMessage="Email is not in correct format"
                                            ForeColor="#030637"
                                            ValidationExpression="\w+([-+.']\w+)*@taibahu.edu.sa"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Password" required></asp:TextBox>
                                        <label for="name">Password</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Confirm" required></asp:TextBox>
                                        <label for="name">Confirm Password</label>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                                            ControlToCompare="TextBox3" ControlToValidate="TextBox4"
                                            ErrorMessage="Password Mismatch" ForeColor="#030637"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" TextMode="Phone" placeholder="Phone No" required></asp:TextBox>
                                        <label for="name">Phone Number</label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="TextBox5" ErrorMessage="Phone no is not in correct Format"
                                            ForeColor="#030637" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:RadioButtonList ID="RadioButtonList4" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="male">Male</asp:ListItem>
                                            <asp:ListItem Value="female">Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <label for="name">Gender</label>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" TextMode="Phone" placeholder="Phone No" required></asp:TextBox>
                                        <label for="name">GPA</label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                            ControlToValidate="TextBox7" ErrorMessage="GPA is not in correct Format"
                                            ForeColor="#030637" ValidationExpression="^[1-9]\d*(\.\d+)?$"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="col-6">
                                    <div class="form-floating">
                                        <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="true">Yes</asp:ListItem>
                                            <asp:ListItem Value="false">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <label for="name">Are you complete 90 Hours?</label>
                                    </div>
                                </div>
                                <br />
                                <div class="col-6">
                                    <div class="form-floating">
                                        <asp:RadioButtonList ID="RadioButtonList2" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="true">Yes</asp:ListItem>
                                            <asp:ListItem Value="false">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <label for="name">Are you complete Web2?</label>
                                    </div>
                                </div>
                                <br />
                                <div class="col-6">
                                    <div class="form-floating">
                                        <asp:RadioButtonList ID="RadioButtonList3" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="true">Yes</asp:ListItem>
                                            <asp:ListItem Value="false">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <label for="name">Are you complete Project Management?</label>
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

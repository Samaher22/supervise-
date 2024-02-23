<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="send_req.aspx.cs" Inherits="supervise_.send_req" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl py-5 bg-primary hero-header mb-5">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center text-start">
                    <h1 class="text-white animated zoomIn">send a request to a Supervise</h1>
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
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="sup_name" DataValueField="sup_Id" AutoPostBack="false"></asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:supervise %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT sup_Id, sup_name FROM supervisor WHERE (g_count < 5)"></asp:SqlDataSource>
                                        <label for="name">Select a Supervisor</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="pj_title" DataValueField="gp_Id"></asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:supervise %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT gp_Id, pj_title, year, pj_scope, pj_descrp, pj_idea, student_gh FROM [Group] WHERE (student_gh = @name)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="n" Name="name"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <label for="name">Select a Project</label>
                                    </div>
                                </div>
                                <br />
                                <div class="col-12">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                        Text="send a request" CssClass="btn btn-primary w-100 py-3" />
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

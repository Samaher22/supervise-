<%@ Page Title="" Language="C#" MasterPageFile="~/supervise.Master" AutoEventWireup="true" CodeBehind="supervise.aspx.cs" Inherits="supervise_.supervise1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl bg-primary hero-header">
        <div class="container px-lg-5">
            <div class="row g-5 align-items-end">
                <div class="col-lg-6 text-center text-lg-start">
                    <h1 class="text-white mb-4 animated slideInDown">SuperVise Page</h1>
                    <h4 class="text-white pb-3 animated slideInDown">Welcome SV: Dr.</h4>
                </div>
                <div class="col-lg-6 text-center text-lg-start">
                    <img class="img-fluid animated zoomIn" src="img/hero.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="mx-auto text-uppercase mb-5 pb-2 text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Supervisor Groups</h1>
                </div>
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <div class=" row g-4 text-center">
                            <div class=" col-12 ">
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table" DataKeyNames="gp_Id">
                                        <Columns>
                                            <asp:BoundField DataField="gp_Id" HeaderText="gp_Id" ReadOnly="True" InsertVisible="False" SortExpression="gp_Id"></asp:BoundField>
                                            <asp:BoundField DataField="pj_title" HeaderText="pj_title" SortExpression="pj_title"></asp:BoundField>
                                            <asp:BoundField DataField="pj_scope" HeaderText="pj_scope" SortExpression="pj_scope"></asp:BoundField>
                                            <asp:BoundField DataField="student_gh" HeaderText="student_gh" SortExpression="student_gh"></asp:BoundField>
                                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>

                                        </Columns>
                                        <HeaderStyle CssClass="table-header" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:supervise %>' SelectCommand="SELECT [Group].gp_Id, [Group].pj_title, [Group].pj_scope, [Group].student_gh, [Group].status FROM [Group] INNER JOIN supervisor ON [Group].sup_id = supervisor.sup_Id WHERE (supervisor.sup_name = @name)">

                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="n" Name="name"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div><div class="col-12">
                                <div class="form-floating">
                                    <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click"
                                        Text="Add a new Supervise" CssClass="btn btn-primary w-100 py-3" />
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- Contact End -->
</asp:Content>

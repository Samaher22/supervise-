<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="viewgr.aspx.cs" Inherits="supervise_.viewgr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl bg-primary hero-header">
        <div class="container px-lg-5">
            <div class="row g-5 align-items-end">
                <div class="col-lg-6 text-center text-lg-start">
                    <h1 class="text-white mb-4 animated slideInDown">Student Page </h1>
                    <h5 class="text-white pb-3 animated slideInDown">Welcome to main page </h5>
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
                            
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table" DataKeyNames="gp_Id">
                                        <Columns>
                                            <asp:BoundField DataField="gp_Id" HeaderText="gp_Id" ReadOnly="True" InsertVisible="False" SortExpression="gp_Id"></asp:BoundField>
                                            <asp:BoundField DataField="pj_title" HeaderText="pj_title" SortExpression="pj_title"></asp:BoundField>
                                            <asp:BoundField DataField="pj_scope" HeaderText="pj_scope" SortExpression="pj_scope"></asp:BoundField>
                                            <asp:BoundField DataField="pj_idea" HeaderText="pj_idea" SortExpression="pj_idea"></asp:BoundField>
                                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                                        </Columns>
                                        <HeaderStyle CssClass="table-header" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:supervise %>' SelectCommand="SELECT [gp_Id], [pj_title], [pj_scope], [pj_idea], [status] FROM [Group] WHERE ([student_gh] = @student_gh)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="n" Name="student_gh" Type="String"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div><div class="col-12">
                                <div class="form-floating">

                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                        Text="Send a request to Supervise" CssClass="btn btn-primary w-100 py-3" />
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

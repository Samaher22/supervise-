<%@ Page Title="" Language="C#" MasterPageFile="~/supervise.Master" AutoEventWireup="true" CodeBehind="udgroup.aspx.cs" Inherits="supervise_.udgroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl bg-primary hero-header">
        <div class="container px-lg-5">
            <div class="row g-5 align-items-end">
                <div class="col-lg-6 text-center text-lg-start">
                    <h1 class="text-white mb-4 animated slideInDown">GP Page</h1>
                    <h4 class="text-white pb-3 animated slideInDown">Welcome GP: Shahad</h4>
                </div>
                <div class="col-lg-6 text-center text-lg-start">
                    <img class="img-fluid animated zoomIn" src="img/hero.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="container-xxl py-5">
        <div class="container px-lg-2">
            <div class="row justify-content-center">
                <div class="col-12">
                        <div class="section-title position-relative text-center mb-5 pb-2 wow fadeInUp" data-wow-delay="0.1s">
                            <h6 class="position-relative d-inline text-primary ps-4">Update</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                                <div class=" row g-4 text-center">
                                    <div class=" col-12 ">
                                        <div class="form-floating">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catid" AutoPostBack="True"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycourse %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                                                DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table">
                                                <Columns>
                                                    <asp:BoundField DataField="cname" HeaderText="course name" SortExpression="cname"></asp:BoundField>

                                                    <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="img/{0}"
                                                        HeaderText="Image">
                                                        <ControlStyle Height="125px" />
                                                        <ItemStyle Height="125px" />
                                                    </asp:ImageField>
                                                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="upcour.aspx?id={0}" Text="Update" HeaderText="Update"></asp:HyperLinkField>
                                                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="delcour.aspx?id={0}" Text="Delete" HeaderText="Delete"></asp:HyperLinkField>

                                                </Columns>
                                                <HeaderStyle CssClass="table-header" />
                                            </asp:GridView>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mycourse %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM course WHERE (catid = @catid) ">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="catid" Type="Decimal"></asp:ControlParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
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

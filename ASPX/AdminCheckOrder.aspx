<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminCheckOrder.aspx.cs" Inherits="MangAtongsPrototype.ASPX.AdminCheckOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table, th, td {
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col" style="margin-top: 20px;">
                <p class="brandhead cent">Order Details</p>
            </div>

        </div>
        <div class="col-1"></div>
        <div class="card col">
            <div class="card-body">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="card col">
                        <div class="card-body receiptbody">
                            <%-- Add necessary repeater details/code here --%>
                            <table style="padding: 10px">
                                <tr>
                                    <th colspan="2">Order Details</th>
                                </tr>
                                <tr>
                                    <td>Order ID:</td>
                                    <td>
                                        <asp:Label runat="server" ID="OrderID" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Order Date:</td>
                                    <td>
                                        <asp:Label runat="server" ID="OrderDate" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Payment Method:</td>
                                    <td>
                                        <asp:Label runat="server" ID="PaymenMethod" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Total Price:</td>
                                    <td>
                                        <asp:Label ID="totalPrice" runat="server" Text=""></asp:Label></td>
                                </tr>
                            </table>
                            <br />
                            <table style="padding: 10px">
                                <tr>
                                    <td colspan="2"><strong>Customer Details </strong></td>
                                </tr>
                                <tr>
                                    <td>Name: </td>
                                    <td>
                                        <asp:Label runat="server" ID="FullName" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Address: </td>
                                    <td>
                                        <asp:Label runat="server" ID="Street" Text=""></asp:Label>
                                        <asp:Label runat="server" ID="City" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Contact No.: </td>
                                    <td>
                                        <asp:Label runat="server" ID="Contact" Text=""></asp:Label></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-1"></div>
                </div>
                <hr />

                <div class="row">
                    <div class="col">
                        <asp:Repeater ID="PrintOrderItems" runat="server">
                            <HeaderTemplate>
                                <div class="brandhead justify-content-center align-items-center">
                                    <div class="row justify-content-center align-items-center">
                                        <div class="col-sm-4 justify-content-center align-items-center cent">
                                            Item Names
                                        </div>
                                        <div class="col-sm-4 justify-content-center align-items-center cent">
                                            Item Quantity
                                        </div>
                                        <div class="col-sm-4 justify-content-center align-items-center cent">
                                            Prices
                                        </div>
                                    </div>
                                </div>
                                <br />
                            </HeaderTemplate>
                            <ItemTemplate>

                                <div class="container-fluid mynav">
                                    <div class="row text-center cart-style" style="padding-top: 10px; padding-bottom: 10px;">
                                        <div class="col-4 my-auto">
                                            <span class="card-title small justify-content-center align-items-center"><%#DataBinder.Eval(Container,"DataItem.ProductName")%></span><br />
                                        </div>

                                        <div class="col-4 my-auto">
                                            <small>Quantity:
                                            <asp:Label ID="QuantityBox" CssClass="cent" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.OrderItemQuantity")%>' />
                                            </small>

                                        </div>

                                        <div class="col-4 my-auto">
                                            <span class="productprice justify-content-center align-items-center">P<%#DataBinder.Eval(Container,"DataItem.OrderItemPrice")%>.00</span>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <SeparatorTemplate>
                            </SeparatorTemplate>
                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-2 my-auto justify-content-center align-items-center">
                        <span class="small">Order Status:</span>
                    </div>
                    <div class="col">
                        <div class="card-body">
                            <asp:DropDownList class="form-control" ID="OrderStatus" runat="server">
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                <asp:ListItem Value="Canceled">Canceled</asp:ListItem>
                                <asp:ListItem Value="Returned">Returned</asp:ListItem>
                                <asp:ListItem Value="Shipped">Shipped</asp:ListItem>
                                <asp:ListItem Value="Completed">Completed</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-2 my-auto">
                        <asp:LinkButton runat="server" ID="UpdateOrder" OnClick="UpdateItem_Click">
							<button type="button" class="btn btn-block btn-outline-success">Update</button>
                        </asp:LinkButton>
                        <asp:LinkButton runat="server" ID="BackButton" OnClick="Back_Click">
							<button type="button" class="btn btn-block btn-outline-danger">Go Back</button>
                        </asp:LinkButton>
                    </div>

                    <div class="col-1"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

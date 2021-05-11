<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="MangAtongsPrototype.ASPX.AdminOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Grid {
            border: solid 2px Tan;
            Width: 100%;
            vertical-align: top; 
            height: 10%; 
            overflow: auto; 
            width:100%;
        }

        .GridHeader {
            font-weight: bold;
            background-color: #FFCCCC;
            text-align: center;
        }

        .Grid td {
            border: solid 3px #000000;
            margin: 3px 3px 3px 3px;
            font-family: Arial;
            padding: 5px 5px 5px 5px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col" style="margin-top: 20px;">
                <p class="brandhead cent">Orders</p>
            </div>

        </div>

        <div class="row">
            <div class="col-1"></div>


            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-2 my-auto">
                            </div>
                            <div class="col text-center my-auto form-group">
                                <div class="input-group mb-3">
                                    <asp:TextBox runat="server" ID="itemSearch" CssClass="form-control mynav" aria-label="Search" aria-describedby="SearchButton" placeholder="Input Product ID to Search/Select"></asp:TextBox>
                                    <div class="input-group-append">
                                        <asp:Button runat="server" CssClass="btn btn-info button-size" ID="searchID" Text="Search" OnClick="SearchItem_Click" />
                                        <span> </span>
                                        <asp:Button runat="server" ID="backButton" Text="Go Back" CssClass="btn btn-danger button-size" OnClick="Back_Click" />
                                    </div>

                                </div>
                            </div>
                            <div class="col-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="card col overflow-auto">
                                <div class="card-body ">
                                    <h5 class="card-title">List of Orders</h5>
                                    <asp:DataGrid ID="OrderDataGrid" runat="server" CssClass="Grid" PageSize="12" AllowPaging="true" PagerStyle-Mode="NumericPages" PagerStyle-PageButtonCount="5" OnPageIndexChanged="Grid_Change">
                                        <HeaderStyle CssClass="GridHeader"></HeaderStyle>
                                    </asp:DataGrid>
                                </div>
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <hr />

                        <div class="card-footer">
                            <div class="row cent">
                                <div class="col">
                                    <asp:LinkButton runat="server" ID="LinkButton1" OnClick="ViewOrder_Click">
							                    <button type="button" class="btn btn-warning button-size" style="height: 100%; width: 70%">View Order</button>
                                    </asp:LinkButton>
                                </div>
                                <div class="col">
                                    <asp:LinkButton runat="server" ID="AllButton" OnClick="AllOrders_Click">
						                        <button type="button" class="btn btn-danger button-siz " style="height: 100%; width: 70%">All Orders</button>
                                    </asp:LinkButton>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-1">
            </div>

        </div>

    </div>
</asp:Content>

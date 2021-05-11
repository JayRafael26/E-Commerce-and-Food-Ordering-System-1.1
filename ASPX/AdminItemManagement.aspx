<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminItemManagement.aspx.cs" Inherits="MangAtongsPrototype.ASPX.AdminItemManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Grid {
            border: solid 2px Tan;
            width: 100%;
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
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mons">

        <div class="row">
            <div class="col-3">
            </div>
            <div class="col" style="margin-top: 20px;">
                <p class="brandhead cent">Items Management</p>
            </div>

        </div>

        <div class="row">
            <div class="col-3">
                <div class="card">
                    <div class="card-body">
                        <p class="card-title" style="font-size: 2.3vmin;">Navigation</p>
                        <div class="btn-group-vertical">

                            <asp:LinkButton runat="server" ID="AllProducts" OnClick="AllProducts_Click">
							    <button type="button" class="btn btn-link sidebar">All Products</button>
                            </asp:LinkButton>

                            <asp:LinkButton runat="server" ID="ChickenButton" OnClick="Chicken_Click">
							    <button type="button" class="btn btn-link sidebar">Chicken</button>
                            </asp:LinkButton>

                            <asp:LinkButton runat="server" ID="BeefButton" OnClick="Beef_Click">
							    <button type="button" class="btn btn-link sidebar">Beef</button>
                            </asp:LinkButton>

                            <asp:LinkButton runat="server" ID="OthersButton" OnClick="Others_Click">
							    <button type="button" class="btn btn-link sidebar">Others</button>
                            </asp:LinkButton>

                        </div>

                    </div>
                </div>
            </div>

            <div class="col-9">
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
                                        <span></span>
                                        <asp:Button runat="server" ID="backButton" Text="Go Back" CssClass="btn btn-danger button-size" OnClick="Back_Click" />
                                    </div>

                                </div>
                            </div>
                            <div class="col-2"></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="card col overflow-auto">
                                <div class="card-body vertical-align top; height: 152px; overflow:auto; width:800px;">
                                    <h5 class="card-title">Items List</h5>
                                    <asp:DataGrid ID="DataGrid1" runat="server" CssClass="Grid">
                                        <HeaderStyle CssClass="GridHeader"></HeaderStyle>
                                    </asp:DataGrid>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row cent">
                                <div class="col">
                                    <a href="AdminAddItem.aspx">
                                        <button type="button" class="btn btn-success button-size" style="height: 100%;">Add Item</button></a>
                                </div>
                                <div class="col">
                                    <asp:LinkButton runat="server" ID="LinkButton1" OnClick="UpdateItem_Click">
							                    <button type="button" class="btn btn-warning button-size" style="height: 100%;">Update Item</button>
                                    </asp:LinkButton>
                                </div>
                                <div class="col">
                                    <asp:Button runat="server" Text="Remove Item" CssClass="btn btn-danger button-size" ID="DeleteButton" style="height: 100%;" OnClick="DeleteItem_Click">
                                    </asp:Button>
                                </div>
                            </div>

                        </div>

                        <hr />
                    </div>
                </div>
            </div>
        </div>

        <%--Modal for Function Confirmation--%>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <div class="modal fade" id="AdminItemManagementModal" tabindex="-1" aria-labelledby="AdminItemManagementModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="AdminItemManagementModalLabel">Add to Cart</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <asp:Label ID="firstPhrase" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="lastPhrase" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button runat="server" ID="Proceed" CssClass="btn btn-success" Text="Proceed" data-dismiss="modal" UseSubmitBehavior="false" OnClick="Proceed_Click"></asp:Button>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
    </div>
</asp:Content>

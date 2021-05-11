<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminUpdateItem.aspx.cs" Inherits="MangAtongsPrototype.ASPX.AdminUpdateItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:TextBox class="form-control" ID="hold" runat="server" Visible="false" />
    </div>
    <div class="container-fluid mons">
        <p class="brandhead cent" style="margin-top: 20px">Update Item</p>
        <div class="row">
            <div class="col-2"></div>

            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-1"></div>
                            <div class="card col-4">
                                <%-- 		
					<img class="card-img-top" src="#" alt="item image"/>		
					temp. disabled until decide to output aswell, needs table column with image values. (not necessary?)  -mikwal	--%>
                                <div class="card-body form-group">
                                    <label for="ItemImage">Image file input</label>
                                    <asp:FileUpload class="form-control-file" ID="ItemImage" runat="server" accept=".png,.jpg,.jpeg"/>
                                </div>
                            </div>

                            <div class="card col overflow-auto">
                                <div class="card-body form-group">
                                    <label for="ItemDescription">Item Description</label>
                                    <asp:TextBox class="form-control" ID="itemDescription" runat="server" TextMode="MultiLine" MaxLength="100" Rows="5" Columns="20" />
                                    <asp:RequiredFieldValidator ID="desc" runat="server" ControlToValidate="itemDescription" ErrorMessage="please input an description" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <div class="row">
                            <div class="col-1"></div>
                            <div class="form-group col">
                                <label for="itemName">Name</label>
                                <asp:TextBox class="form-control" ID="itemName" runat="server" />
                                <asp:RequiredFieldValidator ID="name" runat="server" ControlToValidate="itemName" ErrorMessage="please input an item name" ForeColor="Red" Display="Dynamic" />
                            </div>

                            <div class="col-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="form-group col">
                                <label for="itemPrice">Price</label>
                                <asp:TextBox class="form-control" ID="itemPrice" runat="server" />
                                <asp:RequiredFieldValidator ID="price" runat="server" ControlToValidate="itemPrice" ErrorMessage="please input a price" ForeColor="Red" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator"
                            runat="server" ControlToValidate="itemPrice"
                            Display="Dynamic" Text="* Must only be numbers <br>"
                            ValidationExpression="^([0-9])*$" ForeColor="Red" />
                            </div>

                            <div class="col-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="form-group col">
                                <label for="itemQty">Quantity</label>
                                <asp:TextBox class="form-control" ID="itemQty" runat="server" />
                                <asp:RequiredFieldValidator ID="qty" runat="server" ControlToValidate="itemQty" ErrorMessage="please input the quantity" ForeColor="Red" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                            runat="server" ControlToValidate="itemQty"
                            Display="Dynamic" Text="* Must only be numbers <br>"
                            ValidationExpression="^([0-9])*$" ForeColor="Red" />
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <div class="row">
                            <div class="col-1"></div>
                            <div class="form-group col">
                                <label for="ctgID">Category ID (1 - Chicken, 2 - Beef, 3 - Others)</label>
                                <asp:DropDownList class="form-control" ID="ctgID" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <hr />
                        <div class="row">
                            <div class="col-2"></div>
                            <div class="col">
                                <asp:LinkButton runat="server" ID="CancelButton" CssClass="btn btn-danger button-size" OnClick="CancelButton_Click" Style="width: 100%; height: 100%">Cancel/Back</asp:LinkButton>
                            </div>

                            <div class="col">
                                <asp:LinkButton runat="server" ID="update" OnClick="UpdateItem_Click">
						            <button type="button" class="btn btn-success button-size" style="width: 100%; height: 100%">Update</button>
                                </asp:LinkButton>
                            </div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-2">
            </div>
            <%--Modal for Function Confirmation--%>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <div class="modal fade" id="UpdateItem" tabindex="-1" aria-labelledby="UpdateItemLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="UpdateItemLabel">Update Item Status</h5>
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

    </div>

    <%--string asdf = "";
        if (Session["sid"] != null)
        {
            asdf = Session["sid"].ToString();
        }--%>


    <%-- edit under here --%>
</asp:Content>

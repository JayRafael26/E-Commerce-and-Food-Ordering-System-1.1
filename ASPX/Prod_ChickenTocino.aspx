<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Prod_ChickenTocino.aspx.cs" Inherits="MangAtongsPrototype.Prod_ChickenTocino" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="container-fluid" style="padding-bottom: 10px">
            <div class="row">
                <div class="col-3"></div>

                <%--Breadcrumb for easier navigation--%>
                <div class="col">
                    <nav aria-label="breadcrumb" style="padding-top: 10px;">
                        <ol class="breadcrumb mynav">
                            <li class="breadcrumb-item"><a href="HomePage.aspx">Home</a></li>
                            <li class="breadcrumb-item"><a href="ProductsPage.aspx">Products</a></li>
                            <li class="breadcrumb-item"><a href="ChickenPage.aspx">Chicken Products</a></li>
                            <li class="breadcrumb-item active" aria-current="#">Chicken Tocino</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>

        <div class="row">
            <%--Side Navigation/Accordion--%>
            <div class="col-3">
                <div class="container-fluid">
                    <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <a href="ChickenPage.aspx">
                                        <button class="btn btn-link btn-block text-left med" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            Chicken
                                        </button>
                                    </a>
                                </h2>
                            </div>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body sidebar">
                                    <a href="#section1">Processed Chicken</a><br />
                                    <a href="#section2">Raw Chicken</a>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h2 class="mb-0">
                                    <a href="BeefPage.aspx">
                                        <button class="btn btn-link btn-block text-left collapsed med" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Beef
                                        </button>
                                    </a>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body sidebar">
                                    <a href="#">Processed Beef</a><br />
                                    <a href="#">Raw Beef</a>
                                </div>

                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <a href="OtherProductsPage.aspx">
                                        <button class="btn btn-link btn-block text-left collapsed med" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            Other Products
                                        </button>
                                    </a>
                                </h2>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body sidebar">
                                    <a href="#">Sukang Larahan</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <%--Product Info--%>
            <div class="col mons">
                <div class="container-fluid">
                    <div class="row row-cols-1" style="margin: 0px;">
                        <div class="col-sm-12 col-lg-6 my-auto">
                            <img src="../images/chickentocino2.jpg" class="img-fluid " />
                        </div>
                        <div class="col-sm-12 col-lg-6 text-center">
                            <div class="card text-center">
                                <div class="card-header">
                                    Chicken <i class="fas fa-drumstick-bite"></i> 
                                </div>
                                <div class="card-body mynav">
                                    <p class="card-title med">Chicken Tocino</p>
                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                    <div class="card-footer">
                                        Price per Pack: P<span class="productprice">150.00</span>

                                        <div class="row" style="padding-top: 10px;">
                                        <div class="col cent">
                                             <a href="ChickenPage.aspx">
                                                <button class="btn btn-info mynav" type="button" name="item"><i class="fas fa-arrow-left"></i> Back</button>
                                            </a>
                                        </div>
                                        <div class="col cent">
                                            <div class="input-group inline-group">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-outline-secondary btn-minus">
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                </div>
                                                <input class="form-control quantity text-center" min="0" name="quantity" value="1" type="number">
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-secondary btn-plus">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col cent">
                                           <button class="btn btn-warning" type="submit" name="item">Add to Cart <i class="fa fa-cart-plus"></i></button>
                                        </div>
                                    </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>

        </div>
</asp:Content>

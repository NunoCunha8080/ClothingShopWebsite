<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VesteBem.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Slider Begin -->
    <section class="hero-slider">
        <div class="hero-items owl-carousel">
            <div class="single-slider-item set-bg" data-setbg="Images/slider-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a  class="primary-btn">See More</a>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="single-slider-item set-bg" data-setbg="Images/slider-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a  class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg="Images/slider-3.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a  class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Slider End -->

    <!-- Features Section Begin -->
    <section class="features-section spad">
        <div class="features-ads">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src="Images/icons/f-delivery.png" >
                            <h4>Envio Rapido </h4>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads second">
                            <img src="Images/icons/coin.png" >
                            <h4>100% Devolucao </h4>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads">
                            <img src="Images/icons/chat.png" >
                            <h4>Seporte Online 24/7</h4>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features Box -->
        <div class="features-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single-box-item first-box">
                                    <img src="Images/f-box-1.jpg" >
                                    <div class="box-text">
                                        <span class="trend-year">2020 Party</span>
                                        <h2>Jewelry</h2>
                                        <span class="trend-alert">Trend Allert</span>&nbsp;
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-box-item second-box">
                                    <img src="Images/f-box-2.jpg" >
                                    <div class="box-text">
                                        <span class="trend-year">2020 Trend</span>
                                        <h2>Footwear</h2>
                                        <span class="trend-alert">Bold & Black</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="single-box-item large-box">
                            <img src="Images/f-box-3.jpg" >
                            <div class="box-text">
                                <span class="trend-year">2020 Party</span>
                                <h2>Collection</h2>
                                <div class="trend-alert">Trend Allert</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Features Section End -->

    <!-- Latest Product Begin -->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Ultimos Produtos</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="*">Tudo</li>
                            <li data-filter=".dresses">Vestidos<li data-filter=".shoes">Sapatos</li>
                            <li data-filter=".accesories">Acessorios</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" id="product-list">
                <div class="col-lg-3 col-sm-6 mix all dresses bags">
                    <div class="single-product-item">
                        <figure>
                            <a ><img src="Images/produtos/img-8.jpg" alt=""></a>
                            <div class="p-status">novo</div>
                        </figure>
                        <div class="product-text">
                            <h6>Green Dress with details</h6>
                            <p>22€</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all dresses bags">
                    <div class="single-product-item">
                        <figure>
                            <a ><img src="Images/produtos/img-7.jpg" alt=""></a>
                        </figure>
                        <div class="product-text">
                            <h6>Yellow Maxi Dress</h6>
                            <p>25€</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all accesories">
                    <div class="single-product-item">
                        <figure>
                            <a ><img src="Images/produtos/img-12.jpg" alt=""></a>
                            <div class="p-status">novo</div>
                        </figure>
                        <div class="product-text">
                            <h6>Brincos</h6>
                            <p>7€</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all shoes">
                    <div class="single-product-item">
                        <figure>
                            <a ><img src="Images/produtos/img-11.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>Sapatos Altos</h6>
                            <p>35€</p>
                        </div>
                    </div>
                </div>
<%--                <div class="col-lg-3 col-sm-6 mix all dresses shoes">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="img/products/img-5.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>Green Dress with details</h6>
                            <p>22€</p>
                        </div>
                    </div>
                </div>--%>
<%--                <div class="col-lg-3 col-sm-6 mix all accesories bags">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="img/products/img-6.jpg" alt=""></a>
                            <div class="p-status sale">sale</div>
                        </figure>
                        <div class="product-text">
                            <h6>Yellow Maxi Dress</h6>
                            <p>25€</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all dresses bags">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="img/products/img-7.jpg" alt=""></a>
                        </figure>
                        <div class="product-text">
                            <h6>One piece bodysuit</h6>
                            <p>19€</p>
                        </div>
                    </div>
                </div>--%>
<%--                <div class="col-lg-3 col-sm-6 mix all accesories bags">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="img/products/img-8.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>Blue Dress with details</h6>
                            <p>35€</p>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </section>
    <!-- Latest Product End -->

    <!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 offset-lg-1">
                    <div class="lookbok-left">
                        <div class="section-title">
                            <h2>VB-2020<br />#lookbook</h2>
                        </div>
                        <p>A hashtag #lookbook foi criada para exibir a coleção de fotografias compiladas para promover modelo, fotógrafos, estilos, estilistas ou linha de roupas da VesteBem. 
                            A #lookbook dá aos nossos clientes idéias sobre como personalizar as nossas roupas ou mostrar quais são as nossas últimas modas.
                            A VesteBem tambem tem parceria com alguns digital influencers que vão divulgar a hashtag para te ajudar a na moda VesteBem.
                            Oferecendo também dicas das melhores coleções para cada estação. 
                            </p>
                        <a href="https://www.instagram.com/explore/tags/lookbook/" class="primary-btn look-btn">Veja Mais</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="lookbok-pic">
                        <img src="Images/lookbok.jpg" alt="">
                        <div class="pic-text">fashion</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Lookbok Section End -->

    <!-- Logo Section Begin -->
    <div class="logo-section spad">
        <div class="logo-items owl-carousel">
            <div class="logo-item">
                <img src="Images/logos/logo-1.png" alt="">
            </div>
            <div class="logo-item">
                <img src="Images/logos/logo-2.png" alt="">
            </div>
            <div class="logo-item">
                <img src="Images/logos/logo-3.png" alt="">
            </div>
            <div class="logo-item">
                <img src="Images/logos/logo-4.png" alt="">
            </div>
            <div class="logo-item">
                <img src="Images/logos/logo-5.png" alt="">
            </div>
        </div>
    </div>
    <!-- Logo Section End -->
</asp:Content>

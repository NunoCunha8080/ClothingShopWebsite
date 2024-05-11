<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="VesteBem.Email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Contacte-nos<span>.</span></h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->   
    
    <!-- Contact Section Begin -->
    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    
                    <div class="contact-form">
                        <div class="row">
                            <div class="col-lg-6">

                                <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" runat="server"/>
                            </div>                           
                            <div class="col-lg-12">


                                <input name="email" type="text" id="email" class="validate[required,custom[email]] feedback-input"  runat="server" placeholder="E-mail"/>

                                <textarea placeholder="Mensagem" id="comment" runat="server"></textarea>
                            </div>
                            <div class="col-lg-12 text-right">                        
                                <button type="submit" runat="server" value="SEND" id="botao" onserverclick="botao_ServerClick">Send message</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="contact-widget">
                        <div class="cw-item">
                            <h5>Localização</h5>
                            <ul>
                                <li>Av. 5 de Outubro 18, 4520-162  </li>
                                <li>Santa Maria da Feira, Porto</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>Telefone</h5>
                            <ul>
                                <li>256 363 865</li>

                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>E-mail</h5>
                            <ul>
                                <li>vestebem2020@gmail.com</li>
                                <li>www.VesteBem.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="map">
                <div class="row">
                    <div class="col-lg-12">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3014.258610853034!2d-8.546164685095957!3d40.93199903206502!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x42135f6fb1c39d76!2sPreferida-ind%C3%BAstria%20E%20Com%C3%A9rcio%20De%20Embalagens%20Lda!5e0!3m2!1spt-PT!2spt!4v1583402935198!5m2!1spt-PT!2spt" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Section End -->
</asp:Content>

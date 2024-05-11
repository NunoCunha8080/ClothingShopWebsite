<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="VesteBem.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Veste Bem - LogIn</title>
    	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta charset="UTF-8" />
	<meta name="keywords"
		content="Trendz Login Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link rel="stylesheet" href="../css/style.login.css" type="text/css" media="all" />
</head>
<body>
<%--    <form id="form1" runat="server">--%>
        <div>
            <section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<h1>JUNTOS INOVAMOS O TEU ESTILO</h1>
				<!-- if logo is image enable this   
					<a class="logo" href="index.html">
					  <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
					</a> 
				-->
				<div class="d-grid forms23-grids">
					<div class="form23">
                        <%--						<div class="main-bg">
							<h6 class="sec-one"></h6>
						</div>--%>
						<div class="bottom-content">
							<form id="form2" runat="server">
                                <asp:Literal ID="litStatus" runat="server"></asp:Literal>
                                <br />
                                <asp:TextBox ID="txtUserName" class="input-form"  runat="server" BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox>
                                <asp:TextBox ID="txtPassword"  class="input-form" type="password" runat="server" BackColor="White"></asp:TextBox>
                                <button runat="server" OnserverClick="Unnamed_ServerClick" class="loginhny-btn btn" >Login</button>
								<a href="../Home.aspx"><button type="button" class="loginhny-btn btn">Cancelar</button></a>
							
							<p>Ainda nao e membro? <a href="Conta/Registar.aspx">Junte-se Agora!</a></p>
						    </form>
                        </div>
					</div>
				</div>
               
				<div class="w3l-copy-right text-center">
                    <%--<p>© 2020 Trendz Login Form. All rights reserved | Design by
						<a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>--%>
				</div>
			</div>
		</div>
	</section>
        </div>
<%--    </form>--%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- 수정필요 icon 뭘로할지? -->
	<link rel="icon" href="img/favicon.png" type="image/png">


	<title>야매샵</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="resources/shoppingMall/css/bootstrap.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/linericon/style.css">
	<link rel="stylesheet" href="resources/shoppingMall/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="resources/shoppingMall/css/style.css">
	<link rel="stylesheet" href="resources/shoppingMall/css/responsive.css">
	
	<!-- 모달에 필요한 css,js (우석오빠가 준 첫번째 링크는 헤더가 망가지므로 제외함) -->
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300,500,700&amp;subset=korean" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	<!-- 합쳐지고 최소화된 최신 CSS -->
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style>
/* 헤더 망가지는부분 고치기 */
#categoryBox, #searchBox {
	height : 80px;
}
.header_area .navbar .icons  {
	height : 80px;
	padding : 0;
}
.nav>li>a:hover {
	background-color : transparent !important;
}
/* 헤더 망가지는 부분 고치기 */

@media ( min-width : 1601px) {
	.col-lg-7 {
		-ms-flex: 0 0 68%;
		flex: 0 0 68%;
		max-width: 68%
	}
	.col-lg-5 {
		-ms-flex: 0 0 32%;
		flex: 0 0 32%;
		max-width: 32%
	}
}
@media ( max-width : 1600px) {
	.col-lg-7 {
		-ms-flex: 0 0 73%;
		flex: 0 0 73%;
		max-width: 73%
	}
	.col-lg-5 {
		-ms-flex: 0 0 27%;
		flex: 0 0 27%;
		max-width: 27%
	}
}
/* 폰트 : 나눔바른체 */
@font-face {
	font-family: 'NanumBarunpen';
	font-weight: normal;
	src: local(NanumBarunpen);
	src: url("resources/shoppingMall/fonts/nanumbarunpenR.eot");
	src: url("resources/shoppingMall/fonts/nanumbarunpenR.woff") format("woff"),
		url("resources/shoppingMall/fonts/nanumbarunpenR.woff2") format("woff2");
}
@font-face {
	font-family: 'NanumBarunpen';
	font-weight: bold;
	src: local(NanumBarunpen);
	src: url("resources/shoppingMall/fonts/nanumbarunpenB.eot");
	src: url("resources/shoppingMall/fonts/nanumbarunpenB.woff") format("woff"),
		url("resources/shoppingMall/fonts/nanumbarunpenB.woff2") format("woff2");
}
body {
	font-family: NanumBarunpen, sans-serif;
}

/* 일반 검색 모달창, 상세 검색 모달창 */
.search_Modal, .searchBig_Modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 100; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}
/* 일반 검색 모달창 내용 */
.search_Content {
	background-color: #fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 20%; /* Could be more or less, depending on screen size */
}
/* 상세 검색 모달창 내용 */
.searchBig_Content {
	background-color: #fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}

/* 민구 - Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 100%; /* Could be more or less, depending on screen size */
}

/* The Close Button 스판 태그로 넣어주는 클로우즈 버튼*/
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}
.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
/* 모달창 투명도 */
#search, #searchBig {
	opacity: 0.9;
}

.submenu {
	width: 80px;
}
.submenu>a {
	width: 80px;
	text-align: center;
}
#submenu_name {
	font-size: 30px;
	font-weight: bold;
}

/* 의정 - 카트넣어줘야함 */
/* 장바구니 미니카트 */
.miniCart {
/* 	width : 350px; */
	position : fixed;
	top : 0; right : 0; bottom : 0; width : 0;
	background-color : white;
	z-index : 200;
	overflow : hidden;
	transition: 0.4s;
/* 	display : none; */
}
/* miniCart_header */
.miniCart_header {
	width : 100%;
	height :10%;
	z-index : 201;
	background-color : #2F2E2E;
	color : #FFFFFF;
	padding : 25px 0;
	text-align : center;
}
.miniCart_header h1 {
	font-weight : bold;
}
.miniCart_header .closebtn {
	position : absolute;
	font-size : 36px !important;
	top : 20px;
	right : 20px;
}

/* miniCart_content */
.miniCart_content {
	width : 100%;
	height :75%;
	z-index : 201;
	background-color : white;
 	padding : 25px; 
	flex-direction : column;
 	overflow: auto;
}
.miniCart_content ul {
	flex : 1;
	overflow : auto;
	width : 100%;
	padding-left : 0;
}
.miniCart_content li {
	padding-top : 5px;
 	padding-bottom : 0;
	margin-top : 0;
	margin-bottom : 20px;
	display : flex !important;
}
.miniCart_content li a {
	width : 110px;
	height : 100px;
	padding-left : 0 !important;
	margin-right : 10px;
	display : inline-block;
}
.item_img {
	width : 100%;
	height : 100%;
}
.item_info {
	clear : both;
	position : relative;
	min-height : 100px;
	width : 150px !important;
	display : inline-block;
}
.item_info .item-name,
.item_info .item-price {
	margin-top : 0;
	margin-bottom : 4px;
	float : none;
	line-height : 1.8em;
}
.item_info .item-name {
	font-size : 18px;
	font-weight : bold;
	word-break : break-word;
	color : #605E5E;
}
.item_info .item-price {
	font-size : 15px;
}
.item_info .item-quantity {
	font-size : 14px;
	font-weight : bold;
	float : left;
}
.remove-item {
	background-color : transparent;
	color : black;
	transition : opacity .3s;
	cursor : pointer;
	padding : 0;
	border : 0;
	position : absolute;
	display : inline-block;
}
.miniCart_total {
	width : 100%;
	height : 5%;
	z-index : 201;
	background-color : white; /*#EAD6BD;*/
 	padding : 0 30px; 
}
.miniCart_footer {
	width : 100%;
	height : 10%;
	z-index : 201;
	background-color : white; /*#EAD6BD;*/
 	padding : 10px 24px 15px; 
}
.miniCart_footer #view_cart_btn {	/* view cart 버튼 */
	width : 100%;
	height : 100%;
 	background-color : #2F2E2E;
	color : white !important;
	cursor : pointer;
	font-size : 25px !important;
	text-align : center;
	padding-top : 11px !important;
 	display : inherit;
 	font-weight : bold;
}

#curtain {
	left : 0;  top:0; 
	width : 100%; height:100%;
	display : none;
	opacity : 0.6;
	position : fixed;
	background: #000;
	animation : fadein .2s;
	z-index : 100;
	overflow : auto;
}

/* 민구 */
.myPageTop {
	min-width: 80%;
	text-align: center;
	border-bottom: 1px solid #e5e5e5;
	font-size: 17px;
}
.myPageTop li {
	padding: 20px 70px;
	display: inline-block;
}
#banner_mypage {
	min-height: 270px;
}
.section-top-border {
	padding-top: 0px;
}
.menu {
	color: #999;
}
.pricing-table .plan {
	margin: 5px;
	border-radius: 5px;
	text-align: center;
	background-color: #f3f3f3;
	-moz-box-shadow: 0 0 6px 2px #b0b2ab;
	-webkit-box-shadow: 0 0 6px 2px #b0b2ab;
	box-shadow: 0 0 6px 2px #b0b2ab;
}
.plan {
	text-align: center;
	padding: 0px;
	color: #ff;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
}
.plan-name-bronze {
	padding: 20px;
	color: #333333;
	background-color: #665D1E;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
	height: 150px;
}
.plan-name-silver {
	padding: 20px;
	color: #333333;
	background-color: #C0C0C0;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
	height: 150px;
}
.plan-name-gold {
	padding: 20px;
	color: #333333;
	background-color: #e0f0e3;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
	height: 150px;
}
.pricing-table-bronze {
	padding: 46px;
	color: #fff;
	background-color: #f89406;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
}
.pricing-table .plan .plan-name span {
	font-size: 20px;
}
.pricing-table .plan ul {
	list-style: none;
	margin: 0;
	-moz-border-radius: 0 0 5px 5px;
	-webkit-border-radius: 0 0 5px 5px;
	border-radius: 0 0 5px 5px;
}
.pricing-table .plan ul li.plan-feature {
	padding: 15px 10px;
	border-top: 1px solid #c5c8c0;
}
.pricing-three-column {
	margin: 0 auto;
	width: 80%;
}
.pricing-variable-height .plan {
	float: none;
	margin-left: 2%;
	vertical-align: bottom;
	display: inline-block;
	zoom: 1;
	*display: inline;
}
.plan-mouseover .plan-name {
	background-color: #4e9a06 !important;
}
.btn-plan-select {
	padding: 8px 25px;
	font-size: 18px;
}
.areaBox {
	padding: 20px 20px 0px 20px;
	max-width: 1200px;
	margin: 0 auto;
}
.myOrderBox {
	float: none;
	width: auto;
	margin-right: 0;
}
.myOrderCon {
	border: 1px solid #e6e6e6;
	background: #fff;
	padding: 30px;
}
.areaBox row {
	width: 1200px;
	margin: 0 auto;
}
.order_now {
	color: #222;
	display: block;
	font-size: 30px;
	font-family: 'inniB';
	padding-bottom: 15px;
	text-align: center;
}
.order_now::after {
	position: absolute;
	left: 0;
	top: 10px;
	content: '';
	display: block;
	width: 1px;
	height: 53px;
	background: #e6e6e6;
}
*, h5, span {
	font-weight: bold;
}
/* .modal-dialog.modal-fullsize { */
/* 	width: 100%; */
/* 	height: 100%; */
/* 	margin: 0; */
/* 	padding: 0; */
/* } */

/* .modal-content.modal-fullsize { */
/* 	height: auto; */
/* 	min-height: 100%; */
/* 	border-radius: 0; */
/* } */
</style>

<script>	//민구
	$(document).ready(function() {
		$('.container-fluid').each(function() {

			var highestBox = 0;

			$('.col-sm-3', this).each(function() {

				if ($(this).height() > highestBox)
					highestBox = $(this).height();
			});

			$('.col-sm-3', this).height(highestBox);

		});
	});
</script>
</head>

<body>
	<!-- ========================== 모달  ========================== -->
	<!-- 1. 일반 검색   -->
	<div id="search" class="search_Modal">
		<div class="search_Content">
			<span class="close">&times;</span>
			<h2 align="center">일 반 검 색</h2>
			<br />
			<form id="search_Form">
				<div class="form-group">
					<input type="text" class="form-control" id="search_name"
						placeholder="검색할 상품명을 적어주세요." /><br />
				</div>
				<br /> <input type="submit" class="btn btn-info btn-block"
					id="search_submit_btn" value="검색" />
			</form>
		</div>
	</div>

	<!-- 2.상세 검색  (모달) -->
	<div id="searchBig" class="searchBig_Modal">
		<div class="searchBig_Content">
			<span class="close">&times;</span>	<!-- X버튼 -->
			<h2 align="center">상 세 검 색</h2>
			<br />
			<form id="searchBig_Form">
				<table style="width:100%; font-size:17px;">
					<tr>
						<th style="width:20%;"></th>
						<th style="width:20%;"></th>
						<th style="width:20%;"></th>
						<th style="width:20%;"></th>
						<th style="width:20%;"></th>
					</tr>
					<!-- 포지션 -->
					<tr>
						<th><label for="position">포지션</label></th>&emsp;
						<td><input type="checkbox" name="position" id="1루수"/><label for="1루수"><span></span>1루수</label>&nbsp;</td>
						<td><input type="checkbox" name="position" id="2루수"/><label for="2루수"><span></span>2루수</label>&nbsp;</td>
						<td><input type="checkbox" name="position" id="3루수"/><label for="3루수"><span></span>3루수</label>&nbsp;</td>
						<td><input type="checkbox" name="position" id="유격수"/><label for="유격수"><span></span>유격수</label>&nbsp;</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" name="position" id="포수"/><label for="포수"><span></span>포수</label>&nbsp;</td>
						<td><input type="checkbox" name="position" id="투수"/><label for="투수"><span></span>투수</label>&nbsp;</td>
						<td><input type="checkbox" name="position" id="외야수"/><label for="외야수"><span></span>외야수</label>&nbsp;</td>
						<td></td>
					</tr>
					<!-- 좌투/우투 -->
					<tr>
						<th><label for="hand">좌/우</label></th>
						<td colspan="2"><input type="checkbox" name="hand" id="left_checkbox" /><label for="left_checkbox"><span></span>좌투(오른손 착용)</label></td>
						<td colspan="2"><input type="checkbox" name="hand" id="right_checkbox" /><label for="right_checkbox"><span></span>우투(왼손 착용)</label></td>
					</tr>
					<!-- 브랜드 -->
					<tr>
						<th><label for="brand">브랜드</label></th>
						<td><input type="checkbox" name="brand" id="mizuno" /><label for="mizuno"><span></span>Mizuno</label></td>
						<td><input type="checkbox" name="brand" id="wilson" /><label for="wilson"><span></span>Wilson</label></td>
						<td><input type="checkbox" name="brand" id="adidas" /><label for="adidas"><span></span>Adidas</label></td>
						<td><input type="checkbox" name="brand" id="nike" /><label for="nike"><span></span>Nike</label></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" name="brand" id="morimoto" /><label for="morimoto"><span></span>Morimoto</label></td>
						<td><input type="checkbox" name="brand" id="descente" /><label for="descente"><span></span>Descente</label></td>
						<td colspan="2"><input type="checkbox" name="brand" id="underarmour" /> <label for="underarmour"><span></span>UnderArmour</label></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" name="brand" id="brett" /><label for="brett"><span></span>Brett</label></td>
						<td><input type="checkbox" name="brand" id="fila" /> <label for="fila"><span></span>FILA</label></td>
						<td><input type="checkbox" name="brand" id="asics" /> <label for="asics"><span></span>Asics</label></td>
						<td></td>
					</tr>
				</table><br>
				<input type="submit" class="btn btn-info btn-block" id="searchBig_submit_btn" value="검색">				
			</form>
		</div>
	</div>

	<!-- 3.장바구니  -->
	<div id="curtain"></div>

	<div class="miniCart" id="miniCart">
		<!-- header -->
		<div class="miniCart_header">
			<h1>C A R T</h1>
			<a href="#none" class="closebtn" onclick="closeCart()" style="color:#6c757d;">&times;</a>
		</div>
								
		<!-- content -->
		<div class="miniCart_content">
			<ul class="miniCart_list">
				<li class="miniCart_item">
					<!-- 상품 이미지 부분 -->
					<a href="/goods_info">
						<img class="item_img" src="resources/shoppingMall/img/product/single-product/s-product-6.JPG">
					</a>
					<!-- 상품 정보 부분 -->
					<div class="item_info">
						<!-- 상품명 -->
						<div id="item-name" class="item-name">
							나는 글러브
						</div>
						<!-- 상품 가격 -->
						<div class="item-price">
							<span>100,000원</span>
						</div>
						<!-- 상품 수량 -->
						<div class="item-quantity">
							수량 : <span>1</span>			
						</div>
					</div>
				</li>
				<li class="miniCart_item">
					<a href="/goods_info">
						<img class="item_img" src="resources/shoppingMall/img/product/single-product/s-product-6.JPG">
					</a>
					<div class="item_info">
						<div id="item-name" class="item-name">
							나는 글러브
						</div>
						<div class="item-price">
							<span>100,000원</span>
						</div>
						<div class="item-quantity">
							수량 : <span>1</span>			
						</div>
					</div>
				</li>
				<li class="miniCart_item">
					<a href="/goods_info">
						<img class="item_img" src="resources/shoppingMall/img/product/single-product/s-product-6.JPG">
					</a>
					<div class="item_info">
						<div id="item-name" class="item-name">
							나는 글러브
						</div>
						<div class="item-price">
							<span>100,000원</span>
						</div>
						<div class="item-quantity">
							수량 : <span>1</span>			
						</div>
					</div>
				</li>
				<li class="miniCart_item">
					<a href="/goods_info">
						<img class="item_img" src="resources/shoppingMall/img/product/single-product/s-product-6.JPG">
					</a>
					<div class="item_info">
						<div id="item-name" class="item-name">
							나는 글러브
						</div>
						<div class="item-price">
							<span>100,000원</span>
						</div>
						<div class="item-quantity">
							수량 : <span>1</span>			
						</div>
					</div>
				</li>
				<li class="miniCart_item">
					<a href="/goods_info">
						<img class="item_img" src="resources/shoppingMall/img/product/single-product/s-product-6.JPG">
					</a>
					<div class="item_info">
						<div id="item-name" class="item-name">
							나는 글러브
						</div>
						<div class="item-price">
							<span>100,000원</span>
						</div>
						<div class="item-quantity">
							수량 : <span>1</span>			
						</div>
					</div>
				</li>
			</ul>
		</div>
		<!-- total -->
		<div class="miniCart_total" style="display:flex;">
			<h2 style="color:black; font-weight:bold;">총 상품금액  : </h2>&emsp;&emsp;<h2 style="color:black; font-weight:bold;">155,000원</h2>
		</div>
		<!-- footer -->
		<div class="miniCart_footer">
			<a id="view_cart_btn" href="/cart">
				V i e w &emsp; C a r t
			</a> 
		</div>
	</div>

	<!-- ========================= end 모달 & 장바구니  ======================= -->

	<!--================Header Menu Area =================-->
	<header class="header_area" style="height : 120px;">	<!--top+main -->
		<div class="top_menu row m0">
			<div class="container-fluid">
				<div class="float-left"></div>
				<div class="float-right">
					<ul class="right_side">
						<li>
							<a href="/mypage">	<!-- MyPage -->
								마이 페이지
							</a>
						</li>
						<li>
							<a href="/community_main">	<!-- Community -->
								커뮤니티
							</a>
						</li>
						<li>
							<a href="/faq">	<!-- Contact Us -->
								고객센터
							</a>
						</li>
						<li>	
							<a href="/cart">
								장바구니
							</a>
						</li>
					</ul>
				</div>

			</div>
		</div>
		
		<div class="main_menu" style="height:80px;">
			<nav class="navbar navbar-expand-lg navbar-light" style="height:80px; margin:0;">
				<div class="container-fluid" style="height:80px;">
					<!-- Brand and toggle get grouped for better mobile display -->
					<!-- shop_main 경로  + 로고 파일 -->
					<a class="navbar-brand logo_h" href="/shopping_main">
						<img src="resources/shoppingMall/img/logo.png" alt="" style="visibility : hidden">	<!-- 일단 로고 안보이게 -->
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					 aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent" style="height:80px !important;">
						<div class="row w-100">
							<!-- 상품 카테고리 탭 -->
							<div class="col-lg-7 pr-0" id="categoryBox">
								<ul class="nav navbar-nav center_nav pull-right">
									<!-- 서브메뉴1 글러브 -->
									<!-- li태그 자체에 onclick이벤트를 줘야 페이지이동 합니다.(a href는 이동이 안됨) -->
									<li class="nav-item submenu dropdown" onclick="javascript: location.href='/goods_list'">
										<a href="#none" id="submenu_name" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">글러브</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">글러브 카테1</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">글러브 카테2</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">글러브 카테3</a></li>
										</ul>
									</li>
									
									<!-- 서브메뉴2 배트 -->
									<li class="nav-item submenu dropdown" onclick="javascript: location.href='/goods_list'">
										<a href="#none" id="submenu_name" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" >배트</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">배트 카테1</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">배트 카테2</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">배트 카테3</a></li>
										</ul>
									</li>
									
									<!-- 서브메뉴3 유니폼 -->
									<li class="nav-item submenu dropdown" onclick="javascript: location.href='/goods_list'">
										<a href="#none" id="submenu_name" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">유니폼</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">유니폼 카테1</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">유니폼 카테2</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">유니폼 카테3</a></li>
										</ul>
									</li>
									
									<!-- 서브메뉴4 야구화 -->
									<li class="nav-item submenu dropdown" onclick="javascript: location.href='/goods_list'">
										<a href="#none" id="submenu_name" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">야구화</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">야구화 카테1</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">야구화 카테2</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">야구화 카테3</a></li>
										</ul>
									</li>
									
									<!-- 서브메뉴5 야구공 -->
									<li class="nav-item submenu dropdown" onclick="javascript: location.href='/goods_list'">
										<a href="#none" id="submenu_name" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">야구공</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">야구공 카테1</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">야구공 카테2</a></li>
											<li class="nav-item">
												<a class="nav-link" href="/goods_list">야구공 카테3</a></li>
										</ul>
									</li>
								</ul>
							</div>

							<!-- 검색 탭 -->
							<div class="col-lg-5" id="searchBox">
								<ul class="nav navbar-nav navbar-right right_nav pull-right" style="height:80px;">
									<li class="nav-item">	<!-- 돋보기 : 상품명으로 검색 -->
										<a href="#none" class="icons" id="search_btn">
											<i class="fa fa-search" aria-hidden="true"></i>
										</a>
									</li>
									<li class="nav-item">	<!-- 플러스 : 상세검색(모달) -->
										<a href="#none" class="icons" id="searchBig_btn">
											<i class="fa fa-plus" aria-hidden="true"></i>
										</a>
									</li>
									<li class="nav-item">	<!-- 장바구니 -->
										<a href="#none" class="icons" id="cart_btn">
											<i class="lnr lnr-cart" aria-hidden="true"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =======================-->
	
	<!--================start Home Banner Area =================-->
	<section class="banner_area" id="banner_mypage">
		<div class="banner_inner d-flex align-items-center" style="background-color:white;">
			<div class="container-fluid">
				<div class="banner_content text-center">
					<h2 style="color: #777777;">My Page</h2>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->
	
	<!--================ Start menu bar ======================= -->
	<div class="whole-wrap">
		<div class="container-fluid">
			<div class="section-top-border">
				<ul class="myPageTop">
					<li><a href="/mypage" class="menu">마이페이지</a></li>
					<li><a href="/order_status" class="menu">주문/배송</a></li>
					<li><a href="/mypost" class="menu">내가 남긴 글</a></li>
					<li><a href="/modify_info" class="menu">회원 정보 수정</a></li>
				</ul>
			</div>
		</div>
	</div>
		<!-- ================ End menu bar ========================= -->
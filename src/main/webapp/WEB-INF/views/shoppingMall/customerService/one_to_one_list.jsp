<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/shopping_header.jsp"%>

<style>
body {
	font-weight: bold;
	font-size: 17px;
}

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th,
	.table>thead>tr>td, .table>thead>tr>th {
	padding: 20px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 1px solid #ddd;
}

.order_details_table {
	padding: 0px 30px 0px 30px;
	background: white;
}

a {
	color: #777777;
}
</style>
</head>
<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center"
			style="background-color: #70e270;">
			<div class="container">
				<div class="banner_content text-center">
					<h2 style="color: white;">고객센터</h2>
					<div class="page_link">
						<a href="/shopping_main" style="color: white;">Home</a> <a
							href="/one_to_one_list" style="color: white;">1대1 문의</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->
	<div class="button-group-area mt-40" style="margin-bottom: 30px;">
		<a href="/faq_list.do" class="genric-btn primary e-large"
			style="background: #024137; margin-left: 30%; padding: 6px 60px; font-size: 30px; font-weight: bold;">FAQ</a>
		<a href="/onetoonelist.do" class="genric-btn primary e-large"
			style="background: #024137; margin-left: 21%; padding: 6px 60px; font-size: 30px; font-weight: bold;">1:1문의</a>
	</div>
	<div class="container">
		<div class="order_details_table" style="margin-top: 10px;">
			<div class="table-responsive" style="height: 49px">
				<table class="table">
					<thead>
						<tr style="background: #9FC197; height: 49px;">
							<th scope="col"
								style="width: 15%; font-weight: bold; text-align: center; height: 49px; padding-bottom: 0px; padding-top: 0px; vertical-align: middle;">번호</th>
							<th scope="col"
								style="width: 15%; font-weight: bold; text-align: center; height: 49px; padding-bottom: 0px; padding-top: 0px; vertical-align: middle;">카테고리</th>
							<th scope="col"
								style="width: 40%; font-weight: bold; text-align: center; height: 49px; padding-bottom: 0px; padding-top: 0px; vertical-align: middle;">제목</th>
							<th scope="col"
								style="width: 15%; font-weight: bold; text-align: center; height: 49px; padding-bottom: 0px; padding-top: 0px; vertical-align: middle;">날짜</th>
						</tr>
					</thead>
					
					<c:forEach items="${list}" var="OnetoOne">
						<tr>
							<td><c:out value="${OnetoOne.ONE_ONE_NUM}" /></td>
							<td><c:out value="${OnetoOne.ONE_ONE_CATEGORY}" /></td>
							<td><a class='move' href='<c:out value="${OnetoOne.ONE_TITLE}"/>'>
									<c:out value="${OnetoOne.CONTENTS}" />
							</a></td>
							<td><c:out value="${OnetoOne.SYSDATE}" /></td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<table class="paging_area"
		style="width: 1200px; margin-left: auto; margin-right: auto;">
		<tr>
			<td><a href="#writing_modal" class="genric-btn default radius"
				data-toggle="modal" style="font-weight: bold; font-size: 17px;">글쓰기</a></td>
			<td><nav class="cat_page mx-auto"
					aria-label="Page navigation example">
					<ul class="pagination" style="float: right;">

						<c:if test="${pageMaker.prev}">
							<li class="page-item"><a class="page-link"
								href="${pageMaker.startPage -1}"> <i
									class="fa fa-chevron-left" aria-hidden="true"></i>
							</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="page-item ${pageMaker.pag.pageNum == num ? "active":""} ">
								<a class="page-link" href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="page-item"><a class="page-link"
								href="${pageMaker.endPage +1 }"> <i
									class="fa fa-chevron-right" aria-hidden="true"></i></a></li>
						</c:if>

					</ul>
				</nav>
				
				<form id='actionForm' action="/onetoonelist.do" method='get'>
					<input type='hidden' name='pageNum'value='${pageMaker.pag.pageNum}'>
					 <input type='hidden' name='amount' value='${pageMaker.pag.amount}'>
					 <input type='hidden' name='type' value='<c:out value="${pageMaker.pag.type}"/>'>
					 <input type='hidden' name='keyword' value='<c:out value="${pageMaker.pag.keyword}"/>'>
				</form></td>
		
			<td class="search_area" style="float: right;">

				<div class="input-group" style="width: 80%; float: right;">

					<form id='searchForm' action="/faq_list.do" method='get'
						style="width: 400px; text-align: right">

						<select name='type' style="width: 110px;">

							<option value=""
								<c:out value="${pageMaker.pag.type == null?'selected':''}" />>--</option>

							<option value="T"
								<c:out value="${pageMaker.pag.type eq 'T'?'selected':''}" />>제목</option>

							<option value="C"
								<c:out value="${pageMaker.pag.type eq 'C'?'selected':''}" />>내용</option>

							<option value="TC"
								<c:out value="${pageMaker.pag.type eq 'TC'?'selected':''}" />>제목
								or 내용</option>

						</select>
						
						<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.pag.pageNum}"/>' />
						
						<input type='hidden' name='amount' value='<c:out value="${pageMaker.pag.amount}"/>' />
						
						<input type="text" name='keyword' class="form-control" placeholder="글 검색" style="display: inline; 
						width: 148px; padding-top: 0; padding-bottom: 5px" value='<c:out value="${pageMaker.pag.keyword}"/>' />
						
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" style="width: 50px; display: inline;">
								<i class="lnr lnr-magnifier"></i>
							</button>
						</span>
					</form>
				</div>
			</td>
		</tr>
	</table>

	<!-- ===============모달 Area ==================== -->
	<!-- 글쓰기 모달 -->
	<div class="modal fade" id="writing_modal" tabindex="-1" role="dialog"
		aria-labelledby="writing_modal_label" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width: 30%; margin: 8% auto;">
				<div class="modal-header">
					<h2 class="text-black" style="font-weight: bold">글쓰기</h2>
					<span class="close" data-dismiss="modal">&times;</span>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-11">
							<form>
								<div class="form-group row">
									<div class="col-md-6">
										<label for="subject" class="text-black">제목 <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="subject" name="subject">
									</div>
									<div class="col-md-6">
										<label for="category" class="text-black">카테고리 <span
											class="text-danger">*</span></label>
										<div class="left_dorp">
											<select class="sorting" name="one_to_one_category">
												<option value="header">말머리를 선택하세요</option>
												<option value="order_or_delivery">주문/배송</option>
												<option value="about_product">상품관련</option>
												<option value="about_payment">결제관련</option>
												<option value="other">기타</option>
											</select>
										</div>
									</div>
									<div class="col-md-10">
										<label for="content" class="text-black mt-10">내용 <span
											class="text-danger">*</span></label>
										<div>
											<textarea class="single-textarea" placeholder="글 내용을 작성해주세요."
												onfocus="this.placeholder = ''" style="margin-bottom: 10px"></textarea>
										</div>
									</div>
									<div class="col-md-6">
										<label for="content" class="text-black">첨부파일</label>
										<div>
											<input type="file" id="file" name="file">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer" align="center">
					<button type="button" class="genric-btn danger radius"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="genric-btn default radius">등록</button>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../include/shopping_footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
	/* 	$(document).on('click', '#btnSearch', function(e){
	 e.preventDefault();
	 var url = "${pageContext.request.contextPath}/serviceSearch";
	 url = url + "?searchType=" + $("select[name='searchType']").val();
	 alert($("select[name='searchType']").val())
	 url = url + "&keyword=" + $('#keyword').val();
	 location.href = url;
	 console.log(url);

	 });	
	 */
	$(function() {
		$.ajax({
			url : "serviceSearch",
			data : {
				'searchType' : 'user_id',
				'keyword' : '${user_id}'
			},
			success : function(result) {
				$("#result").html(result);
			},
			error : function() {
				alert('실패');
			}
		});
	});
</script>


<style>
table {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}
</style>

<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<h3>고객센터</h3>
	<div id="center">
		<div class="well" , style="width: 30%; height: 150px; float: left;">
			<h1>QnA</h1>
			<p>1:1 고객상담</p>
		</div>
		<div class="well" , style="width: 70%; height: 150px; float: left;">
			<div id="faqBtn">
				<a href="serviceMain.jsp"><h4>FAQ</h4></a>
			</div>
			<div id="qnaBtn">
				<a href="serviceList.jsp"><h4>QnA</h4></a>
			</div>
			<div id="NoticeBtn">
				<a href="serviceNoticeList"><h4>Notice</h4></a>
			</div>
			<% if( session.getAttribute("user_id") != null) { %>
			<div id="myBtn">
				<a href="serviceMyQuestion.jsp"><h4>내 문의사항</h4></a>
			</div>
			<% } %>
		</div>
</div>
<hr>

<!-- 검색  -->

<div id="result"></div>

</div>
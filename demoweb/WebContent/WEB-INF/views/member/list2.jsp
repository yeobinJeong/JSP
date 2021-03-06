<%@page import="com.demoweb.dto.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
    <title></title>
    <link rel="Stylesheet" href="/demoweb/styles/default.css" />
</head>
<body>

    <div id="pageContainer">
    	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
       	
        <div id="content">
        	<br /><br />
        	<div style='text-align:center'>
        		[&nbsp;<a href="registerform.action">사용자 등록</a>&nbsp;]
        	</div>
        	<br /><br />
        	
        	<%-- 테이블을 만들고 조회한 (데이터를 출력) --%>
        	<% List<Member> members = 
        	  	(List<Member>)request.getAttribute("members"); %>
        	
        	
        	<table text-align="center" border="1" align="center" width="700px">
        	<% for(Member member : members) { %>
        		<tr style="height:30px;background-color: hotpink;text-align:center;padding:5px">
        			<td style="width: 80px">아이디 </td>
        			<td style="width: 150px">이메일</td>
        			<td style="width: 80px">사용자구분 </td>
        			<td style="width: 80px">활성화여부</td>
        			<td style="width: 80px">등록일자 </td>
        		</tr>
        		<tr style="height:30px;">
        			<td style="padding:5px">
        			<a href = "detail.action?memberid=<%= member.getMemberId() %>"><%= member.getMemberId() %></a>
        			</td>
        			<td style="padding:5px"> <%= member.getEmail() %></td>
        			<td style="padding:5px"><%= member.getUserType() %></td>
        			<td style="padding:5px"> <%= member.isActive() %></td>
        			<td style="padding:5px"><%= member.getRegDate() %></td>
        		</tr>
			<% } %>
        	</table>
    

        </div>
    </div>
    
</body>
</html>










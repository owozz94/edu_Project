<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
  <thead>
    <tr>
      <th scope="col">��ȣ</th>
      <th scope="col">����</th>
      <th scope="col">���̵�</th>
      <th scope="col">�ۼ���</th>
      <th scope="col">��ȸ��</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="list" items="${list}">
    <tr>
      <th scope="row">${list.post_num}</th>
     <td> <a href="/getPost?num=${list.post_num}">${list.post_title}</a></td>
      <td>${list.mi_id}</td>
      <td>${list.post_date}</td>
      <td>${list.post_count}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
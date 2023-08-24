<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../temp/bootStrap.jsp"></c:import>

<style type="text/css"></style>
</head>
<body>
<table>
<thead>
   <tr>
      <th rowspan="2"></th>
      <th>kto.productDTO.productName 결제상태</th>
      
   </tr>
    <tr>
      <th></th>
      <th>${kto.payState}</th>
   </tr>
  </thead>
   <tbody>
      <tr>
       <td>예약자</td>
       <td>${kto.memberDTO.name}</td>
      </tr>
       <tr>
       <td>결제 수단</td>
       <td></td>
      </tr>
      <tr>
       <td colspan="2">사용시간</td>
       <td>${kto.bookDTO.startTime}</td>
      </tr>
      <tr>
       <td></td>
       <td>${kto.bookDTO.endTime}</td>
      </tr>
       <tr>
       <td>결제 날짜</td>
       <td>${kto.payDate}</td>
      </tr>
      <tr>
       <td>결제 금액</td>
       <td>${kto.payAmount}</td>
      </tr>
   </tbody>

</table>

<!-- Button trigger modal -->
<button id="btnHome" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  환불하기
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">환불 요청</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="data-refund" data-refund-payNum="${kto.payNum}" data-refund-amount="${kto.payAmount}" data-refund-orderNum="${kto.orderNum}">
        환불 사유를 입력해주세요
      <input class="form-control" name="reason" id="reason">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="btn">환불하기</button>
      </div>
    </div>
  </div>
</div>

<script src="/resources/js/refund.js"></script>
</body>
</html>
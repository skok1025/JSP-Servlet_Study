<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% GregorianCalendar now = new GregorianCalendar(); %>
<%= String.format("%TY�� %Tm�� %Td��", now, now,now) %>
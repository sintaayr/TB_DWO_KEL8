<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/fp_adventureworks2?user=root&password=" catalogUri="/WEB-INF/adw3.xml">

select {[Measures].[TotalPenjualan]} ON COLUMNS,
  {([customer].[All customer],[salesterritory].[All salesterritory],[salesorderheader].[All salesorderheader])} ON ROWS
from [penjualan]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query DWOADW1 using Mondrian OLAP</c:set>

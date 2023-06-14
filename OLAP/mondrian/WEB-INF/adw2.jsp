<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/fp_adventureworks?user=root&password=" catalogUri="/WEB-INF/adw2.xml">

select {[Measures].[total_penjualan]} ON COLUMNS,
  {([salesorderdetail].[All salesorderdetail],[product].[All product],[productsubcategory].[All productsubcategory])} ON ROWS
from [bestsellingproduct]

</jp:mondrianQuery>

<c:set var="title01" scope="session">Query Addventureworks using Mondrian OLAP</c:set>

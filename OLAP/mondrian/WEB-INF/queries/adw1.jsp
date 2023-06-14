<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dw_adw?user=root&password=" catalogUri="/WEB-INF/adw1.xml">

select {[Measures].[Revenue]} ON COLUMNS,
  {([SpecialOffer].[All SpecialOffer],[SalesOrder].[All SalesOrder],[Customer].[All Customer],[Product].[All Product])} ON ROWS
from [SpecialOfferRevenue]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query Addventureworks using Mondrian OLAP</c:set>

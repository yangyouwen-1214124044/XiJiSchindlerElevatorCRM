<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/html-table.tld" prefix="table" %>
<link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
<script language="javascript" src="<html:rewrite forward='calendarJS'/>"></script>
<style type="text/css">
<!--
body {
	background-color: #F4F2F2;
	margin: 0px;
}
body,td,th {
	font-family: Arial, Helvetica, sans-serif, 宋体;
	font-size:9pt;
}
.title_h{font-family: Arial, Helvetica, sans-serif,黑体;
    font-size:12pt;
	font-weight:bold;}
.title_h1{font-family: Arial, Helvetica, sans-serif,宋体;
    font-size:9pt;
	font-weight:bold;
	text-align:center;
	background-color:#ADC6E7;
	line-height:20px;}
.title_h2{font-family: Arial, Helvetica, sans-serif,宋体;
    font-size:9pt;
	font-weight:bold;
	text-align:center;
	background-color:#F0F8FF;
	line-height:20px;}
.title_h3{font-family: Arial, Helvetica, sans-serif,宋体;
    font-size:9pt;
	text-align:center;
	line-height:20px;}		
.title_h4{font-family: Arial, Helvetica, sans-serif,宋体;
    font-size:9pt;
	text-align:center;
	font-weight:bold;
	line-height:20px;
	color:#666;}
-->
</style>
<html:errors/>
<br>
	<html:form action="/messageAction.do?method=toSearchRecord">
	
	<table width="600" align="center">
	<tr>
	<td><div align="center"><b>西继迅达（许昌）电梯有限公司信息公布栏</b></div></td>
	</tr>
    <%int i=1;%>
    <logic:iterate id="message" name="messageList">
    <tr bgcolor="#FFFFFF" class="title_h3">
    	<td align="left" nowrap title="<bean:write name="message" property="promulgatecontent"/>"><b><%=i%>:</b>&nbsp;&nbsp;<bean:write name="message" property="promulgatecontent"/></td>
    </tr>	
    <%i++;%>
    </logic:iterate>
    </table>
    </html:form>
    	
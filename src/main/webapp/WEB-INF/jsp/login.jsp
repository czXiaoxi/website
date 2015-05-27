<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>迷你小网站</title>
</head>
<body>
	<c:if test="${!empty error}">
    	<font color="red"><c:out value="${error}"/></font>
	</c:if>
	<form action="<c:url value="/shoppingcart/information"/>" ><!-- method="post" -->
		<div align="center">
        	<p>&nbsp;</p>
        	<p><font color="#3300FF"><b>欢迎来到小希小店</b></font></p>
      	</div>
        <table width="500" border="0"  align="center">
          <tr align="center" valign="top">
            <td colspan="2"> <em><strong>登入</strong></em>
            	&nbsp;&nbsp; 
            </td>
          </tr>
          <tr>
            <td width="25%"><strong>用户名: </strong></td>
            <td width="75%">
              <input type="text" name="userName" size="30" maxlength="30">
              <a href="/website/user/register">没有注册?</a>
            </td>
          </tr>
          <tr>
             <td><strong>密码:</strong></td>
             <td>
             	<input type="password" name="password" size="30" maxlength="30">
             </td>
          </tr>
           <tr>
               <td>&nbsp; &nbsp;</td>
           </tr>
           <tr>
           <td>&nbsp;</td>
               <td>
       		        <input type="submit" value="确认">
                    <input type="reset" value="重置">
               </td>
            </tr>
     	</table>
	</form>
</body>
</html>

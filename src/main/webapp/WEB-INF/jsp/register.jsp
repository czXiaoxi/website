<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
<!--     <style type="text/css">
      .style36 {font-family: Verdana, Arial, Helvetica, sans-serif}
      .style37 {font-size: 9pt}
      .style39 {
      font-family: Verdana, Arial, Helvetica, sans-serif;
      font-size: 9pt;
      font-weight: bold;
      }
      .style1 { font-size: 7ex;
      font-weight: bold;
      color: #FF0000;
      font-style: italic;
      }
    </style> -->
    <!-- <script language="JavaScript" type="text/JavaScript">

    function validate()
    {
      var userName=document.user.userName.value;
      var password=document.user.password.value;
      var confirm=document.user.confirm.value;
      var phoneNumber=document.user.phoneNumber.value;
      var address=document.user.address.value;


      if(userName.length==0)
      {
        alert("请输入用户名！");
        document.user.userName.focus();
        return false;
      }
      else if(password.length==0)
      {
        alert("请输入密码！");
        document.user.password.focus();
        return false;
      }
      /* else if(confirm.length==0)
      {
        alert("请输入确认密码");
        document.user.confirm.focus();
        return false;
      }
      else if(password!=confirm)
      {
        alert("两次密码输入不一致，请重新输入！");
        document.user.password.focus();
        return false;
      }
 */
      else if(address.length==0)
      {
        alert("请输入address!");
        document.user.address.focus();
        return false;
      }
      else
      {
        return true;
      }
    }
    </script> -->
    </head>

    <body>
      <div align="center">
        <p>&nbsp;</p>
        <p><font color="#3300FF"><b>欢迎来到小希小店</b></font></p>
      </div>
      <form action="<c:url value="/user/registeruser"/>" method="post" name="user" onSubmit="return validate();">
        <table width="500" border="0" align="center">
          <tr align="center" valign="top">
            <td colspan="2"> <em><strong>注册</strong></em>
            	&nbsp;&nbsp; 
            </td>
          </tr>
          <tr>
            <td width="25%"><strong>用户名: </strong></td>
            <td width="75%">
              <input name="userName" type="text" id="userName" size="30" maxlength="30">
              <a href="/website/user/login">登入？</a>
              </td>
          </tr>
          <tr>
             <td><strong>密码:</strong></td>
             <td>
             	<input name="password" type="password" id="password" size="30" maxlength="30">
             </td>
          </tr>
          <tr>
              <td><strong>密码确认: </strong></td>
              <td>
              	<input name="userId" type="password" id="userId" size="30" maxlength="30">
              </td>
          </tr>
          <tr>
              <td><strong>地址: </strong></td>
              <td class="style39">
              	<input name="address" type="text" id="address" size="30" maxlength="30">
              </td>
           </tr>
           <tr>
              <td><strong>电话: </strong></td>
              <td class="style39">
              	<input name="phoneNumber" type="text" id="phoneNumber" size="30" maxlength="30"">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%-- 로그인 전 : form 태그가 나오며, <br>
     로그인 후 : My account 페이지로 넘어감 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>

<% String ctxPath = request.getContextPath(); %>

<!-- Required meta tags : 반응형 웹 쓸래 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS : 부트스트랩 쓸래 => 얘만 있어도 될 것 같긴한데... 흠 -->
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/bootstrap-4.6.0-dist/css/bootstrap.min.css" > 

<!-- 직접 만든 CSS 쓸래 -->
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/style.css" />

<!-- Optional JavaScript : jQuery 쓸래 -->
<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="<%= ctxPath%>/bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js" ></script> 


<style type="text/css">

	
	table#loginTbl {
      	width: 100%;
      	margin-top: 50px;
      	margin-bottom: 50px;
      	text-align: center;
   	}
   
   	table#loginTbl #th {
   		font-weight: bold;
      	font-size: 30pt;
      	text-align: center;
      	height: 30px;
      	letter-spacing: 10px;
   	}
   
   	table#loginTbl td {
      	line-height: 35px;
      	width: 200px;
      	
   	}
   	
   	.text-input__label {

    	top: 0;
    	bottom: 0;
    	margin: auto;
    	height: 1.5em;
        -webkit-transform: translateY(0);
    	-ms-transform: translateY(0);
    	transform: translateY(0);
    	-webkit-transition: all 200ms;
    	-o-transition: all 200ms;
    	transition: all 200ms;
    	z-index: 1;
    }
    
    .p2 {
    	line-height: 10px;
    	letter-spacing: 0;
    	font-family: 'courier', arial, sans-serif;
    	font-weight: normal;
    	color: black;
   	    font-size: 12px;
    }
    
    .underline {
    	text-decoration: underline;
	}
    
    .is-active {
    	-webkit-transform: translateY(-130%);
    	-ms-transform: translateY(-130%);
    	transform: translateY(-130%);
    	font-size: 12px;
    	padding: 0 4px;
    }

</style>

<!-- !jQuery 쓸래! (성명은 필수 입력사항임을 나타내기 위해) -->
<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
	
		
	});

</script>

</head>
<body>
<div class="container mt-5 mx-auto bg-white">
	<form id="loginFrm" name="loginFrm">
		<table id="loginTbl">
	    	<thead>
	           <tr>
	               <th id="th" style="margin-bottom: 50px;">LOGIN</th>
	           </tr>
	        </thead>
	         
	        <tbody>
	           <tr>
	               <td>
		               <label class="text-input__label p2 is-active" > ID </label>
		               <input type="text" id="loginUserid" name="userid" size="30" class="box " autocomplete="off" placeholder = "ID" />
		           </td> <%-- autocomplete : 이전 입력했던 기록들 보여주기 --%>
	           </tr>   
	           <tr>
	               <td>
	               	   <!-- <label class="text-input__label p2 is-active" > Password </label> -->
	               	   <input type="password" id="loginPwd" name="pwd" size="30" class="box" placeholder = "PASSWORD"/>
	               </td>
	           </tr>
	           <tr>
	               <td colspan="2" align="center" style="padding: 10px;">
	               	   <input type="checkbox" id="saveid" name="saveid" /><label for="saveid"> &nbsp;id save </label><br>
	                   <button style="font-weight:bold;" size="30" type="button" id="btnSubmit" class="btn btn-warning">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CONTINUE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
	           	   </td>
	           </tr>
	      
	           <%-- === 아이디 찾기, 비밀번호 찾기 === --%>
	           <tr>
	               <td id="userid_pwd_find" class="p2" colspan="2" align="center">
	                   <a class="p2 underline" style="cursor: pointer;" >Forget your id?</a> 
	                   <a class="p2 underline" style="cursor: pointer;" >Forget your passward?</a> 
	                   <br>
	               	   "Don't have an account?" 
	               	   <a class="p2 underline" style="cursor: pointer;" href="<%= ctxPath%>/mosco_register2.jsp">Register now.</a>
	               </td>
	           </tr>  
	        </tbody>
	    </table>
	</form>
</div>	
		
</body>
</html>	
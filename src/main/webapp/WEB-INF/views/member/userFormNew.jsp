<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <!DOCTYPE html>
 <html>
 <head>

 <script src="${pageContext.request.contextPath}/static/js/code.jquery.com_jquery-3.7.1.min.js">
 </script>

     <meta charset="UTF-8">
     <title>Your Title Here</title>
     <style>
         .fieldError {
             color: #bd2130;
         }
     </style>

     <script>
        function checkErrorMessage() {
                    var errorMessage = "${errorMessage}";
                    if (errorMessage !== "") {
                        alert(errorMessage);
                    }
                }
     </script>

</script>
    <script type="text/javascript">
        function sendNumber(){
                $("#mail_number").css("display","block");
                $.ajax({
                    url:"/user/mail",
                    type:"post",
                    dataType:"json",
                    data:{"email" : $("#email").val()},
                    success: function(data){
                        alert("인증번호 발송");
                        $("#Confirm").attr("value",data);
                    },
                    error:function(request, status, error){
                      		      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            }

            function confirmNumber(){
                var number1 = $("#number").val();
                var number2 = $("#Confirm").val();

                if(number1 == number2){
                    alert("인증되었습니다.");
                }else{
                    alert("번호가 다릅니다.");
                }
            }
    </script>


 </head>
 <body onload="checkErrorMessage();">
     <form action="/user/new" role="form" method="post" modelAttribute="userFormDto" name="frm1">
         <div class="form-group">
             <label for="name">이름</label>
             <input type="text" id="name" name="name" class="form-control" placeholder="이름을 입력해주세요">
             <c:if test="${not empty requestScope['org.springframework.validation.BindingResult.userFormDto']}">
                 <p class="fieldError">${requestScope['org.springframework.validation.BindingResult.userFormDto'].getFieldError('name').getDefaultMessage()}</p>
             </c:if>
         </div>
         <div class="form-group">
             <label for="email">이메일주소</label>
             <input type="email" id="email" name="email" class="form-control" placeholder="이메일을 입력해주세요">
             <c:if test="${not empty requestScope['org.springframework.validation.BindingResult.userFormDto']}">
                 <p class="fieldError">${requestScope['org.springframework.validation.BindingResult.userFormDto'].getFieldError('email').getDefaultMessage()}</p>
             </c:if>
             <div>
                <button type="button" id="sendBtn" name="sendBtn" onclick="sendNumber()">인증번호 발송</button>
             </div>
         </div>

         <div id="mail_number" name="mail_number" style="display: none">
              <input type="text" name="number" id="number" style="width:250px; margin-top: -10px" placeholder="인증번호 입력">
              <button type="button" name="confirmBtn" id="confirmBtn" onclick="confirmNumber()">이메일 인증</button>
              <input type="text" id="Confirm" name="Confirm" style="display: none" value="">
         </div>
         <div class="form-group">
             <label for="password">비밀번호</label>
             <input type="password" id="password" name="password" class="form-control" placeholder="비밀번호 입력">
             <c:if test="${not empty requestScope['org.springframework.validation.BindingResult.userFormDto']}">
                 <p class="fieldError">${requestScope['org.springframework.validation.BindingResult.userFormDto'].getFieldError('password').getDefaultMessage()}</p>
             </c:if>
         </div>
         <div class="form-group">
             <label for="address">주소</label>
             <input type="text" id="address" name="address" class="form-control" placeholder="주소를 입력해주세요">
             <c:if test="${not empty requestScope['org.springframework.validation.BindingResult.userFormDto']}">
                 <p class="fieldError">${requestScope['org.springframework.validation.BindingResult.userFormDto'].getFieldError('address').getDefaultMessage()}</p>
             </c:if>
         </div>
         <div style="text-align: center">
             <button type="submit" class="btn btn-primary" onclick="location.href='/user/login'">회원가입</button>
         </div>
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
     </form>


 </body>
 </html>
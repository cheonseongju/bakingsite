(function() {
    $("#checkEmail").on("click", function(){
        $.ajax({
                   type : "POST",
                   url : "user/login/mailConfirm",
                   data : {
                      "email" : $email.val()
                   },
                   success : function(data){
                      alert("해당 이메일로 인증번호 발송이 완료되었습니다. \n 확인부탁드립니다.")
                      console.log("data : " + data);
                      chkEmailConfirm(data, $emailconfirm, $emailconfirmTxt);
                   }
        });
    });
function chkEmailConfirm(data, $emailconfirm, $emailconfirmTxt){
     		$("#emailconfirm").on("keyup", function(){
     			if (data != $emailconfirm.val()) {
     				emconfirmchk = false;
     				$emailconfirm.html("<span id='emconfirmchk'>인증번호가 잘못되었습니다</span>")
     				$("#emconfirmchk").css({
     					"color" : "#FA3E3E",
     					"font-weight" : "bold",
     					"font-size" : "10px"

     				})
     			} else {
     				emconfirmchk = true;
     				$emailconfirm.html("<span id='emconfirmchk'>인증번호 확인 완료</span>")

     				$("#emconfirmchk").css({
     					"color" : "#0D6EFD",
     					"font-weight" : "bold",
     					"font-size" : "10px"

     				})
     			}
     		});
     	};

})();
//    $.checkEmail.click(function() {
//        $.ajax({
//           type : "POST",
//           url : "user/login/mailConfirm",
//           data : {
//              "email" : $memail.val()
//           },
//           success : function(data){
//              alert("해당 이메일로 인증번호 발송이 완료되었습니다. \n 확인부탁드립니다.")
//              console.log("data : " + data);
//              chkEmailConfirm(data, $emailconfirm, $emailconfirmTxt);
//           }
//        });
//     });
//     function chkEmailConfirm(data, $emailconfirm, $emailconfirmTxt){
//     		$emailconfirm.on("keyup", function(){
//     			if (data != $emailconfirm.val()) {
//     				emconfirmchk = false;
//     				$emailconfirm.html("<span id='emconfirmchk'>인증번호가 잘못되었습니다</span>")
//     				$("#emconfirmchk").css({
//     					"color" : "#FA3E3E",
//     					"font-weight" : "bold",
//     					"font-size" : "10px"
//
//     				})
//     			} else {
//     				emconfirmchk = true;
//     				$emailconfirm.html("<span id='emconfirmchk'>인증번호 확인 완료</span>")
//
//     				$("#emconfirmchk").css({
//     					"color" : "#0D6EFD",
//     					"font-weight" : "bold",
//     					"font-size" : "10px"
//
//     				})
//     			}
//     		});
//     	};
//
//

function loginCheck(){
  let loginForm = document.loginForm;
  let user_id = document.getElementById('user-id').value; 
  let user_pw = document.getElementById('user-pw').value; 

  if(user_id==""){
    alert("아이디를 입력해주세요.");
  }else if(user_pw==""){
    alert("비밀번호를 입력해주세요.");
  }else{
    loginForm.submit();
  }
}
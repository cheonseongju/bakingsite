package com.example.baking.controller;

import com.example.baking.details.PrincipalDetails;
import com.example.baking.dto.UserFormDto;
import com.example.baking.entity.Users;
import com.example.baking.repository.UserRepository;
import com.example.baking.service.MailService;
import com.example.baking.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class UsersController {
    @Autowired
    private UserRepository repository;

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;


    @GetMapping(value="/new")
    public String memberForm(UserFormDto userFormDto, Model model ) {
        model.addAttribute("userFormDto", userFormDto);
        return "member/userFormNew";
    }

    @PostMapping(value="/new")
    public String userForm(@Valid UserFormDto userFormDto, BindingResult bindingResult, Model model) {

        if(bindingResult.hasErrors()) {
            model.addAttribute("userFormDto",userFormDto);
            return "member/userFormNew";
        }

        try {
            Users users = Users.createUser(userFormDto, passwordEncoder);
            userService.saveUser(users);
            System.out.println("@@@@@ 입력한거 저장되는지확인하기" + users);
        }catch(IllegalStateException e) {
            model.addAttribute("errorMessage", e.getMessage());
            return "member/userFormNew";
        }

        return "redirect:/";
    }

    @GetMapping("/login")
    public String loginUser() {
        return "member/login";
    }

    @GetMapping("/login/error")
    public String loginError(Model model) {
        model.addAttribute("loginErrorMsg", "아이디 또는 비밀번호를 확인해주세요.");
        return "member/login";
    }

    @Autowired
    private final MailService mailService;

    @ResponseBody
    @PostMapping("/mail")
    public String MailSend(String email){
        int number = mailService.sendMail(email);

        String num = "" + number;

        return num;
    }

    // !!!! OAuth로 로그인 시 이 방식대로 하면 CastException 발생함
    @GetMapping("/form/loginInfo")
    @ResponseBody
    public String formLoginInfo(Authentication authentication, @AuthenticationPrincipal PrincipalDetails principalDetails){

        PrincipalDetails principal = (PrincipalDetails) authentication.getPrincipal();
        String member = principal.getUsername();
        System.out.println(member);

        String user1 = principalDetails.getUsername();
        System.out.println(user1);

        return member.toString();
    }


    @GetMapping("/oauth/loginInfo")
    @ResponseBody
    public String oauthLoginInfo(Authentication authentication, @AuthenticationPrincipal OAuth2User oAuth2UserPrincipal){
        OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
        Map<String, Object> attributes = oAuth2User.getAttributes();
        System.out.println(attributes);
        // PrincipalOauth2UserService의 getAttributes내용과 같음

        Map<String, Object> attributes1 = oAuth2UserPrincipal.getAttributes();
        // attributes == attributes1

        return attributes.toString();     //세션에 담긴 user가져올 수 있음
    }


    @GetMapping("/loginInfo")
    @ResponseBody
    public String loginInfo(Authentication authentication, @AuthenticationPrincipal PrincipalDetails principalDetails){
        String result = "";

        PrincipalDetails principal = (PrincipalDetails) authentication.getPrincipal();
        if(principal.getName() == null) {
            result = result + "Form 로그인 : " + principal;
        }else{
            result = result + "OAuth2 로그인 : " + principal;
        }
        return result;
    }

}

package com.example.baking.controller;

import com.example.baking.dto.UserFormDto;
import com.example.baking.entity.Users;
import com.example.baking.service.MailService;
import com.example.baking.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class UsersController {
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

}

package com.example.baking.security;

import com.example.baking.service.PrincipalOauth2UserService;
import com.example.baking.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class SecurityConfig {
    @Autowired
    UserService userService;
    @Autowired
    private PrincipalOauth2UserService principalOauth2UserService;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
        http
                .formLogin()
                .loginPage("/user/login")
                .defaultSuccessUrl("/")
                .usernameParameter("email")
                .failureUrl("/user/login/error")
                .and()
                .logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/user/logout"))
                .logoutSuccessUrl("/")
                .and()                                  // OAuth
                .oauth2Login()
                .defaultSuccessUrl("/")
                .userInfoEndpoint()                     // OAuth2 로그인 성공 후 가져올 설정들
                .userService(principalOauth2UserService)  // 서버에서 사용자 정보를 가져온 상태에서 추가로 진행하고자 하는 기능 명시
                .and()
                .csrf().disable();

        return http.build();
    }
//    비밀번호를 데이터베이스에 그대로 저장했을 경우, 데이터베이스가 해킹당하면 고객의 회원 정보가 그대로 노출 된다.
//    이를 해결하기 위해  BCryptPasswordEncoder의 해쉬 함수를 이용해 비밀번호를 암호화하여 저장
//    BCryptPasswordEncoder를 빈으로 등록하여 사용
    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
}

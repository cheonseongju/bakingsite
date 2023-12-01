package com.example.baking.service;

import com.example.baking.details.PrincipalDetails;
import com.example.baking.entity.Users;
import com.example.baking.repository.UserRepository;
import com.example.baking.role.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {

        OAuth2User oAuth2User = super.loadUser(userRequest);

        String provider = userRequest.getClientRegistration().getRegistrationId();   //google
        String providerId = oAuth2User.getAttribute("sub");
        String name = provider+ "_" + providerId;
        // 사용자가 입력한 적은 없지만 만듬

        String uuid = UUID.randomUUID().toString().subString(0, 7);
        String password = bCryptPasswordEncoder.encode("패스워드"+ uuid);
        // 사용자가 입력 한 적읍 없지만 만들어줌

        String email = oAuth2User.getAttribute("email");
        Role role = Role.SOCIAL;

        Users byUsername = userRepository.findByEmail(email);

        // DB에 없는 사용자라면 회원가입 처리
        if (byUsername == null) {
            byUsernmae = Users.oauth2Register()
                    .password(password).email(email).role(role)
                    .provider(provider).providerId(providerId)
                    .build();
            userRepository.save(byUsername);
        }
        return new PrincipalDetails(byUsername, oAuth2User.getAttributes());
    }
}

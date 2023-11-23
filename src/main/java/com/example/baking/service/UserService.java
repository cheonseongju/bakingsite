package com.example.baking.service;

import com.example.baking.entity.Users;
import com.example.baking.repository.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@Transactional
@RequiredArgsConstructor
public class UserService implements UserDetailsService {

    private final UserRepository userRepository;

    public Users saveUser(Users users) {
        validateDuplicateUser(users);
        return userRepository.save(users);
    }

    //이미 가입된 회원일 경우 예외처리
    private void validateDuplicateUser(Users users) {
        Users findUsers = userRepository.findByEmail(users.getEmail());

        if(findUsers != null) {

            throw new IllegalStateException("이미 가입된 회원입니다.");
        }
    }
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Users users = userRepository.findByEmail(email);
        if(users == null){
            throw new UsernameNotFoundException(email);
        }
        return User.builder()
                .username(users.getEmail())
                .password(users.getPassword())
                .roles(users.getRole().toString())
                .build();
    }
}

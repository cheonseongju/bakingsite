package com.example.baking.repository;

import com.example.baking.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<Users, Long> {

    //회원가입시 중복된 회원이 있는지 검사하기 위해서 이메일로 회원을 검사할 수 있도록 쿼리 메서드를 작성
    Users findByEmail(String email);
}

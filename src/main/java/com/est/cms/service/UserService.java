package com.est.cms.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    public boolean isValidUser(Long id) {
        return id > 0;
    }
}

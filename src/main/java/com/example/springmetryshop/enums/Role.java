package com.example.springmetryshop.enums;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    MANAGER, ADMIN, CLIENT, USER;

    @Override
    public String getAuthority() {
        return name();
    }
}

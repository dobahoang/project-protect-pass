package com.kma.at16.service;


import org.springframework.security.core.userdetails.UserDetailsService;

import com.kma.at16.entity.User;
import com.kma.at16.user.CrmUser;

public interface UserService extends UserDetailsService {

	public User findByUserName(String userName);

	public void save(CrmUser crmUser);
}

package com.kma.at16.dao;

import com.kma.at16.entity.User;

public interface UserDao {

    public User findByUserName(String userName);
    
    public void save(User user);
    
}

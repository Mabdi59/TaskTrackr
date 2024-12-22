package com.mohamedabdi.dao;

import com.mohamedabdi.model.RegisterUserDto;
import com.mohamedabdi.model.User;

import java.util.List;

public interface UserDao {

    List<User> getUsers();

    User getUserById(int id);

    User getUserByUsername(String username);

    User createUser(RegisterUserDto user);
}

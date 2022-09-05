package com.kma.at16.dao;

import com.kma.at16.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
	
}

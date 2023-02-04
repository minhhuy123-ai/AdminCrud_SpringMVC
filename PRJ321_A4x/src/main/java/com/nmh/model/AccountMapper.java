package com.nmh.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AccountMapper implements RowMapper<Account> {
	@Override
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account acc = new Account();
		acc.setUsr(rs.getString(1));
		acc.setPwd(rs.getString(2));
		acc.setRole(rs.getInt(3));
		acc.setName(rs.getString(4));
		acc.setAddress(rs.getString(5));
		acc.setPhone(rs.getString(6));
		return acc;
	}

	
	
}

package com.nmh.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.nmh.model.Account;
import com.nmh.model.AccountMapper;

public class AccountDAOImpl implements AccountDAO {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public void setDataSource(DataSource ds) {
		this.dataSource = ds;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	@Override
	public void create(String name, String mail, String password, String address, String phone) {
		String SQL = "insert into Account values (?,?,?,?,?,?)";
		try {
			jdbcTemplateObject.update(SQL, mail, password, 0, name, address, phone);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return;
	}

	@Override
	public Account getAccount(String mail) {
		String SQL = "Select * from Account where [user_mail] = ?";
		try {
			Account acc = jdbcTemplateObject.queryForObject(SQL, new Object[] { mail }, new AccountMapper());
			return acc;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return null;
	}

	@Override
	public List<Account> listAccounts() {
		String SQL = "Select * from Account where [account_role] = 0";
		try {
			List <Account> accounts = jdbcTemplateObject.query(SQL, new AccountMapper());
			return accounts;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return null;
	}

	@Override
	public void delete(String mail) {
		String SQL = "delete from Account where [user_mail] = ?";
		try {
			jdbcTemplateObject.update(SQL, mail);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return;
	}

	@Override
	public void update(String name, String password, String address, String phone, String mail) {
		String SQL = "update Account set [password] = ?, [user_name] = ?, [user_address] = ?, [user_phone] = ? where [user_mail] = ?";
		try {
			jdbcTemplateObject.update(SQL, password, name, address, phone, mail);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return;
	}

	@Override
	public Account login(String mail, String password) {
		String SQL = "Select * from Account where [user_mail] = ? and password = ?";
		try {
			List<Account> accounts = jdbcTemplateObject.query(SQL,  new Object[] {mail, password}, new AccountMapper());
			if(accounts.isEmpty()) {
				return null;
			}else {
				return accounts.get(0);	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		
		return null;
	}

	@Override
	public String getSurName(String fullName) {
		String surName = "";
		for(int i = fullName.indexOf(" ") + 1; i < fullName.length(); i++){
			surName  = surName  + fullName.charAt(i);
		}
		return surName;
	}



}











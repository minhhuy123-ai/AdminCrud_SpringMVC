package com.nmh.dao;

import java.util.List;

import javax.sql.DataSource;

import com.nmh.model.Account;

public interface AccountDAO {
	/**
	 * This is the method to be used to initialize database resources ie.
	 * connection.
	 */
	public void setDataSource(DataSource ds);
	
	/**
	 * This is the method to be used to log in the Account table.
	 */
	public Account login(String mail, String password);
	
	/**
	 * This is the method to be used to get surname from fullname.
	 */
	public String getSurName(String fullName);
	
	/**
	 * This is the method to be used to create a record in the Account table.
	 */
	public void create(String name, String mail, String password, String address, String phone);

	/**
	 * This is the method to be used to list down a record from the Account table
	 * corresponding to a passed user_mail.
	 */
	public Account getAccount(String mail);

	/**
	 * This is the method to be used to list down all the records from the Account
	 * table.
	 */
	public List<Account> listAccounts();

	/**
	 * This is the method to be used to delete a record from the Account table
	 * corresponding to a passed user_mail.
	 */
	public void delete(String mail);

	/**
	 * This is the method to be used to update a record into the Account table.
	 */
	public void update(String name, String password, String address, String phone, String mail);

}












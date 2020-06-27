package com.queries;

public class Queries {
	
	public static final String SAVE = "insert into emp_tbl(NAME, AGE, MOBILE_NO, MAIL_ID) values(?,?,?,?)";
	public static final String UPDATE = "update emp_tbl set name=?,age=?,mobile_no=?,mail_id=? where id=?"; 
	public static final String DELETE = "delete from emp_tbl where id=?";
	public static final String GETLIST = "select * from emp_tbl";
}

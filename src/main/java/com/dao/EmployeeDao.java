package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.connection.ConnectionEx;
import com.dto.EmployeeDto;
import com.queries.Queries;

public class EmployeeDao {
	PreparedStatement st;
	ConnectionEx link = new ConnectionEx();

	public int saveEmployee(EmployeeDto employee) throws ClassNotFoundException, SQLException {
		Connection con = link.getConnection();

		st = con.prepareStatement(Queries.SAVE);
		st.setString(1, employee.getName());
		st.setInt(2, employee.getAge());
		st.setString(3, employee.getMobileNo());
		st.setString(4, employee.getMailId());
		int result = st.executeUpdate();
		return result;

	}

	public int updateEmployee(EmployeeDto employee)
			throws ClassNotFoundException, SQLException {
		Connection con = link.getConnection();

		st = con.prepareStatement(Queries.UPDATE);

		st.setString(1, employee.getName());
		st.setInt(2, employee.getAge());
		st.setString(3, employee.getMobileNo());
		st.setString(4, employee.getMailId());
		st.setInt(5, employee.getId());
		int result = st.executeUpdate();
		return result;

	}

	public int deleteEmployee(EmployeeDto  employee) throws ClassNotFoundException, SQLException {

		Connection con = link.getConnection();

		st = con.prepareStatement(Queries.DELETE);
		st.setInt(1,employee.getId());
		int rs = st.executeUpdate();
		return rs;
	}

	public ArrayList<EmployeeDto> getEmployeeList() throws SQLException, ClassNotFoundException {
		
		ArrayList<EmployeeDto> employeeList = new ArrayList<EmployeeDto>();
		
		Connection con = link.getConnection();
		
		st = con.prepareStatement(Queries.GETLIST);
		ResultSet rs = st.executeQuery();
		while (rs.next()) {

			EmployeeDto empolyee = new EmployeeDto();
			
			empolyee.setId(rs.getInt(1));
			empolyee.setName(rs.getString(2));
			empolyee.setAge(rs.getInt(3));
			empolyee.setMobileNo(rs.getString(4));
			empolyee.setMailId(rs.getString(5));
			employeeList.add(empolyee);
		}
		return employeeList;
	}
}

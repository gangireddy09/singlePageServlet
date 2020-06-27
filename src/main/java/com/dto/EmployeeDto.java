package com.dto;

public class EmployeeDto {

	private Integer  id;
	private String name;
	private Integer age;
	private String mailId;
	private String mobileNo;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	@Override
	public String toString() {
		return "EmployeeDto [id=" + id + ", name=" + name + ", age=" + age
				+ ", mailId=" + mailId + ", mobileNo=" + mobileNo + "]";
	}
}

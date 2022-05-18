package gofly.entities;

import java.math.BigInteger;

public class UserEntity {
	
	private Integer userId;
	
	private String name;
	
	private String userName;
	
	private String city;
	
	private String email;
	
	private BigInteger phoneNumber;

	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public BigInteger getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(BigInteger phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "\nUserEntity : [userId=" + userId + ", name=" + name + ", userName=" + userName + ", city=" + city
				+ ", email=" + email + ", phoneNumber=" + phoneNumber + "]\n";
	}
	
}

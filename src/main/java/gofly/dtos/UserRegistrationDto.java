package gofly.dtos;

import java.math.BigInteger;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import gofly.annotations.CustomValidation;
import gofly.entities.User;

public class UserRegistrationDto {
	
	@Pattern(regexp = "[a-zA-Z ]*", message = "your name should only contain alphabets")
	@NotBlank(message = "name cannot be left blank")
	@Size(min = 0 , max = 25 , message = "name should be less than 25 character long")
	private String name ;
	
	
	@Pattern(regexp = "[a-z]+[a-zA-Z0-9]*", message = "first character should be lowercase | only alphanumerical characters are allowed")
	@Size(min = 5 , max = 12, message = "username should be between 5 to 12 characters")
	private String userName ;
	
	@Pattern(regexp = "[a-zA-Z]*")
	@NotBlank
	private String city ="Delhi";
	
	@Email(message = "please enter a valid email address")
	@NotBlank
	private String email = "test@gmail.com";
	
	@Digits(message = "please enter a valid phone number", fraction = 0, integer = 10)
	@CustomValidation(min = 10 , max = 10 , message="Phone number should be exactly 10 digits long")
	private BigInteger phoneNumber = new BigInteger("8700008709");
	
	
	@Pattern(regexp = "[a-zA-Z0-9#$@_]*" , message = "password can contain -> alphanumerics and #@_$ character")
	@Size(min = 6 , max = 12 , message = "password should be between 6 to 12 characters long")
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
	
	//utility 
	public static void createUserFromDto(UserRegistrationDto dto, User user) {
		user.setName(dto.getName());
		user.setUserName(dto.getUserName());
		user.setCity(dto.getCity());
		user.setPassword(dto.getPassword());
		user.setEmail(dto.getEmail());
		user.setPhoneNumber(dto.getPhoneNumber());
	}

	
}

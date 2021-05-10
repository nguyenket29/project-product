package com.hau.ketnguyen.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserDTO extends BaseDTO<UserDTO> {
	@NotNull(message = "Not Empty !")
	@Size(min = 3, max = 20, message = "Username doesn't match !")
	private String username;

	@NotNull(message = "Not Empty !")
	@Size(min = 10, max = 30, message = "Fullname doesn't match !")
	private String fullname;

	@NotNull(message = "Not Empty !")
	private String email;

	@Pattern(regexp = "^[0-9]{6}", message = "Length must be 6")
	private String password;

	@Pattern(regexp = "^[0-9]{6}", message = "Length must be 6")
	private String confirmPassword;

	private int status;

	private Long roleId;

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/*
	 * (?=\\S+$) không cho phép khoảng trắng trong toàn bộ chuỗi (?=.*[0-9]) một chữ
	 * số phải xuất hiện ít nhất một lần (?=.*[a-z]) một chữ cái thường phải xuất
	 * hiện ít nhất một lần .{8,} ít nhất 8 ký tự
	 */
}

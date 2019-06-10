package com.com.dto;

public class MemberVO {
	private String userid;
	private String userpw;
	private String username;
	private String useraddress;

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ",userpw=" + userpw + ",username=" + username + ",useraddress=" + useraddress + "]";
	}
}

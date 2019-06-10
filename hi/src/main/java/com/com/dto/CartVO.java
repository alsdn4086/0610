package com.com.dto;

import java.util.Date;

public class CartVO {
	private int cartnum;
	private String userid;
	private int prodnum;
	private int cartstock;
	private Date adddate;
	public int getCartnum() {
		return cartnum;
	}
	public void setCartnum(int cartnum) {
		this.cartnum = cartnum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getProdnum() {
		return prodnum;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public int getCartstock() {
		return cartstock;
	}
	public void setCartstock(int cartstock) {
		this.cartstock = cartstock;
	}
	public Date getDate() {
		return adddate;
	}
	public void setDate(Date date) {
		this.adddate = date;
	}
	
}

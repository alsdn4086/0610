package com.com.dto;

import java.util.Date;

public class ProductVO {
	private String prodnum;
	private String prodname;
	private String catecode;
	private String prodprice;
	private String prodstock;
	private String proddes;
	private String prodimg;
	private String proddate;

	public String getProdnum() {
		return prodnum;
	}
	public void setProdnum(String prodnum) {
		this.prodnum = prodnum;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getCatecode() {
		return catecode;
	}
	public void setCatecode(String catecode) {
		this.catecode = catecode;
	}
	public String getprodprice() {
		return prodprice;
	}
	public void setprodprice(String prodprice) {
		this.prodprice = prodprice;
	}
	public String getProdstock() {
		return prodstock;
	}
	public void setProdstock(String prodstock) {
		this.prodstock = prodstock;
	}
	public String getProddes() {
		return proddes;
	}
	public void setProddes(String proddes) {
		this.proddes = proddes;
	}
	public String getProdimg() {
		return prodimg;
	}
	public void setProdimg(String prodimg) {
		this.prodimg = prodimg;
	}
	public String getProddate() {
		return proddate;
	}
	public void setProddate(String proddate) {
		this.proddate = proddate;
	}
}

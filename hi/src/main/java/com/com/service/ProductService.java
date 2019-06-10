package com.com.service;

import java.util.ArrayList;
import java.util.List;

import com.com.dto.CartVO;
import com.com.dto.CartlistVO;
import com.com.dto.ProductVO;

public interface ProductService {
	//상품리스트
	public ProductVO prodlist(String prodnum) throws Exception;
	
	//카트담기
	public void addcart(CartVO cart) throws Exception;
	
	public List<CartlistVO> cartlist(String userid) throws Exception;
}

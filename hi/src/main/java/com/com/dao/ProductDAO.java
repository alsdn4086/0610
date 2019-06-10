package com.com.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.com.dto.CartVO;
import com.com.dto.CartlistVO;
import com.com.dto.ProductVO;


public interface ProductDAO {
	//상품리스트
	public ProductVO prodlist(String prodnum) throws Exception;
	
	//카트담기
	public void addcart(CartVO cart) throws Exception;
	
	//카트 리스트
	public List<CartlistVO> cartlist(String userid) throws Exception;
}
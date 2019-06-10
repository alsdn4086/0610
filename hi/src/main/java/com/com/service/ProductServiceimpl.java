package com.com.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.com.dao.ProductDAO;
import com.com.dto.CartVO;
import com.com.dto.CartlistVO;
import com.com.dto.ProductVO;

@Service("ProductService")
public class ProductServiceimpl implements ProductService {

	@Resource(name="ProductDAO")
	private ProductDAO dao;
	//상품 리스트
	@Override
	public ProductVO prodlist(String prodnum) throws Exception {
		return dao.prodlist(prodnum);
	}
	//카트담기
	@Override
	public void addcart(CartVO cart) throws Exception{
		dao.addcart(cart);
	}
	//카트 리스트
	@Override
	public List<CartlistVO> cartlist(String userid) throws Exception{
		return dao.cartlist(userid);
	}
}

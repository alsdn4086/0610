package com.com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.com.dto.CartVO;
import com.com.dto.CartlistVO;
import com.com.dto.ProductVO;

@Repository("ProductDAO")
public class ProductDAOimpl implements ProductDAO {
	@Inject
	private SqlSession sql;

	//상품리스트
	@Override
	public ProductVO prodlist(String prodnum) throws Exception {
		return (ProductVO)sql.selectOne("product.prodlist",prodnum);
	}

	//카트담기
	@Override
	public void addcart(CartVO cart) throws Exception {
		sql.insert("cart.addcart", cart); 
		
	}
	//카트 리스트
	@Override
	public List<CartlistVO> cartlist(String userid) throws Exception{
			return sql.selectList("cart.cartlist", userid);
	}
}

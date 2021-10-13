package com.thr.i1.product;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thr.i1.util.Pager;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	
	//카테고리별 list, pagination, 검색
	public List<ProductDTO> getList(ProductDTO productDTO, Pager pager) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("product", productDTO);
		map.put("pager", pager);
		Long totalCount = productDAO.getCount(productDTO);
		pager.setTotalCount(totalCount);
		pager.makeNum();
		pager.makeRow();
		
		return productDAO.getList(map);
	}
	
	//제품 상세 페이지
	public ProductDTO getSelect(ProductDTO productDTO) throws Exception {
		return productDAO.getSelect(productDTO);
	}

}

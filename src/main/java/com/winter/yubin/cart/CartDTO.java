package com.winter.yubin.cart;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartDTO {
	
	private String username;  // 회원 아이디
	private Long productNum; // 상품 번호
}
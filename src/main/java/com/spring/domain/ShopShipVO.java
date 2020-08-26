package com.spring.domain;

import lombok.Data;

@Data
public class ShopShipVO {
	private int shipid;     // 배송지 인덱스
    private String userid;  // 유저
    private String shiptitle; // 배송지 제목 
    private String zipNo;        // 우편 번호
    private String roadAddrPart1;  // 도로주소명
    private String addrDetail;     // 상세주소 1
    private String roadAddrPart2;  // 상세주소 2
}
 
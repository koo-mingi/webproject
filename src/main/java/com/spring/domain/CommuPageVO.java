package com.spring.domain;

import lombok.Getter;

@Getter
public class CommuPageVO {
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int total;
	private CommuCriteria coCri; // pageNum, amount
	
	public CommuPageVO(CommuCriteria coCri, int total) {
		this.coCri = coCri;
		this.total = total;
		
		// 끝나는 페이지 계산
		endPage = (int)(Math.ceil(coCri.getPageNum()/5.0))*5;
		// 시작 페이지 계산
		startPage = this.endPage-4;
		
		// 끝나는 페이지가 10개가 안될 수 도 있기 때문에
		// 실제로 끝나는 페이지 구하기
		int realEnd = (int)(Math.ceil((total/1.0) / coCri.getAmount()));
		if(realEnd < this.endPage) {
			endPage = realEnd;
		}
		this.prev = startPage > 1;
		this.next = endPage < realEnd;
	}
}

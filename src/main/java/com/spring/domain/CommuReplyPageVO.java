package com.spring.domain;

import java.util.List;

import lombok.Data;

@Data
public class CommuReplyPageVO {
	private int totalRep;
	private List<CommuReplyVO> listRep;
}

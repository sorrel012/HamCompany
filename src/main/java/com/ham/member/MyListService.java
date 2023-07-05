package com.ham.member;

import java.util.List;

import com.ham.domain.MyHReviewDTO;

public interface MyListService {

	List<MyHReviewDTO> llist(String id);

	String lcomment(String hr_seq);

}

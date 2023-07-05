package com.ham.mapper;

import java.util.List;

import com.ham.domain.MyHReviewDTO;

public interface MyListMapper {

	List<MyHReviewDTO> llist(String id);

	String lcomment(String hr_seq);

}

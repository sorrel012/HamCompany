package com.ham.member;

import java.util.List;

import com.ham.domain.MyHReviewDTO;
import com.ham.domain.MySpeakMDTO;

public interface MyListService {

	List<MyHReviewDTO> llist(String id);

	String lcomment(String hr_seq);

	List<MySpeakMDTO> slist(String id);

	String scomment(String sm_seq);

}

package com.ham.member;

import java.util.List;

import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;

public interface MyPortfolioService {

	void add(MyPortfolioDTO dto, List<String> files);

	List<MyPortfolioDTO> list(String id);

	List<MyPortfolioDTO> edit(String p_seq);

	void update(MyPortfolioDTO dto, List<String> files);

	List<MyPGalleryDTO> gallerylist(String p_seq);

	void delFile(String name);

	void delete(String p_seq);

}

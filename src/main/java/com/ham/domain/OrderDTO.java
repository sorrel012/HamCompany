package com.ham.domain;

import lombok.Data;

@Data
public class OrderDTO {
	private String p_seq;
	private String p_name;
	private String p_tel;
	private String p_address;
	private String p_address_detail;
	private String p_memo;
	private String p_email;
	private String p_regdate;
	private String o_seq;
	private String o_confirm;
	private String o_confdate;
	private String er_seq;
	private String er_regdate;
	private String er_content;
	private String er_rate;
	private String mk_seq;
	private String ja_seq;
	private String m_id;
	private String fd_seq;
	private String ja_salary;
	private String ja_begindate;
	private String ja_enddate;
	private String fd_name;
	private String b_id;
	private String b_email;
	private String b_num;
}

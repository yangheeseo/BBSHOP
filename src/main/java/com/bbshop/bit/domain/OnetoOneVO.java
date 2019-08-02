package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OnetoOneVO {
	
	private Long ONE_ONE_NUM;
	private String ONE_CATEGORY;
	private String ONE_TITLE;
	private String ONE_CONTENTS;
	private String ONE_FILE;
	private Date REGDATE;
	private Long USER_KEY;
	private Long SEQ;
	private Long LEV;
	private Long DEP;
}

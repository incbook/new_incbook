package com.incbook.project.domain.pagecriteria;

import com.incbook.project.service.AnnouncementService;

public class BoardCriteria {
	private int page;
	private int pagesize;

	public BoardCriteria() {
		this.page = 1;
		this.pagesize = AnnouncementService.pagesize;
	}

	public void setPage(int page) {

		if (page > 0) {
			this.page = page;
		} else {
			this.page = 1;
		}
	}

	public void setPagesize(int pagesize) {
		if (pagesize <= 0 || pagesize > 10000) {
			this.pagesize = 10;
			return;
		}
		this.pagesize = pagesize;
	}

	public int getPage() {
		return page;
	}

	public int getPageStart() {
		return (this.page - 1) * pagesize;
	}

	public int getPagesize() {
		return this.pagesize;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", pagesize=" + pagesize + "]";
	}

}

package com.test.pojo;

public class Page {
	private int start;//开始页数
	private int count;//当前也记录数
	private int total;//总记录数
	private String param;//参数
	
	private final static int defaultcount=5;//默认本页数目

	public Page() {
		count=defaultcount;
	}
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}

	public Page(int start, int count) {
		super();
		this.start = start;
		this.count = count;
	}
    /**
     * 判断是否有前一页
     * @return
     */
	public boolean isHasPreviouse() {
		if(start==0) {
			return  false;
		}else {
			return true;
		}
	}
	/**
	 * 判断是否有后一页
	 */
	public boolean isHasNext() {
		if(start==getLast()) {
			return false;
		}else {
			return true;
		}
	}
	
	public int getTotalPage() {
		int totalPage;
		if(0==total%count) {
			totalPage=total/count;
		}else {
			totalPage=total/count+1;
		}
		if(0==totalPage) {
			totalPage=1;
		}
		return totalPage;
	} 
	
	public int getLast() {
		int last;
		if(0==total%count) {
		 last=total-count;
		}else {
		  last=total-total%count;	
		}
		last=last<0?0:last;
		return last;
	}
}

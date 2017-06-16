package com.enginee.util;

public class TaskCount {
	//总任务数
	private Long totalCount;
	//过期任务数
	private Long pastCount;
	//完成任务数
	private Long finishCount;
	//进行任务数
	private Long NowCount;
	public Long getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Long totalCount) {
		this.totalCount = totalCount;
	}
	public Long getPastCount() {
		return pastCount;
	}
	public void setPastCount(Long pastCount) {
		this.pastCount = pastCount;
	}
	public Long getFinishCount() {
		return finishCount;
	}
	public void setFinishCount(Long finishCount) {
		this.finishCount = finishCount;
	}
	public Long getNowCount() {
		return NowCount;
	}
	public void setNowCount(Long nowCount) {
		NowCount = nowCount;
	}
}

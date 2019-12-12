package com.nt.dto;

import java.io.Serializable;

public class CustomerDTO implements Serializable {
	private String name;
	private String addrs;
	private float pAmt;
	private  float rate;
	private  float time;
	private  float intrAmt;
	private float finalAmt;
	public CustomerDTO() {
		System.out.println("CustomerDTO::0-param constructor");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddrs() {
		return addrs;
	}
	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}
	public float getpAmt() {
		return pAmt;
	}
	public void setpAmt(float pAmt) {
		this.pAmt = pAmt;
	}
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	public float getTime() {
		return time;
	}
	public void setTime(float time) {
		this.time = time;
	}
	public float getIntrAmt() {
		return intrAmt;
	}
	public void setIntrAmt(float intrAmt) {
		this.intrAmt = intrAmt;
	}
	public float getFinalAmt() {
		return finalAmt;
	}
	public void setFinalAmt(float finalAmt) {
		this.finalAmt = finalAmt;
	}

}

package com.nt.service;

import com.nt.dto.CustomerDTO;

public class BankServiceImpl implements BankService {
	
	public BankServiceImpl() {
		System.out.println("BankServiceImpl::0-param constructor");
	}

	@Override
	public void getFinalStatement(CustomerDTO dto) {
		float intrAmt=0.0f;
		//calc intr Amount and final Amount
		intrAmt=(dto.getpAmt()*dto.getTime()*dto.getRate())/100.0f;
		//set results back to DTO
		dto.setIntrAmt(intrAmt);
		dto.setFinalAmt(dto.getpAmt()+intrAmt);
	}

}

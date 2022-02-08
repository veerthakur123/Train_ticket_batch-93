package com.torryharris.trainn.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.torryharris.trainn.model.Train;

public interface TrainRepository extends CrudRepository<Train,Integer> {

	@Query("select count(t)=1 from Train t where trainNo=?1")
	public boolean ispresent(int trainNo);
		
	


	@Query("select t.ticketPrice from Train t where trainNO=?1")
	public int findTicketPriceByTrainNo(int trainNo);		
	
	
	
}

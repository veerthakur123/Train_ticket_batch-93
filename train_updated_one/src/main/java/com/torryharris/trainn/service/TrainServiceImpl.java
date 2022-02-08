package com.torryharris.trainn.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.torryharris.trainn.model.Train;
import com.torryharris.trainn.repository.TrainRepository;

@Service
public class TrainServiceImpl implements TrainService {

	@Autowired
	private TrainRepository tRepo;
	
	@Override
	public void save(Train train) {
		tRepo.save(train);
	}

	@Override
	public List<Train> getAllTrain() {
		return (List<Train>) tRepo.findAll();
	}

	@Override
	public Train getTrainByNo(int trainNo) {
		return tRepo.findById(trainNo).get();
	}

	@Override
	public void deleteTrain(int trainNo) {
		tRepo.deleteById(trainNo);

	}

	@Override
	public void updateTrain(Train train) {
		tRepo.deleteById(train.getTrainNo());
		tRepo.save(train);
	}

	

}

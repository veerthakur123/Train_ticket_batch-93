package com.torryharris.trainn.service;

import java.util.List;


import com.torryharris.trainn.model.Train;


public interface TrainService {
	public void save(Train train);
	public List<Train> getAllTrain();
	public Train getTrainByNo(int trainNo);
	public void deleteTrain(int trainNo);
	public void updateTrain(Train train);

}

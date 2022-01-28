package com.torryharris.trainn.model;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;

public class Ticket {
	
	private static int counter=99;
	private String pnr;
	private Date travelDate;
	private Train train;
	private Map<Passenger,Integer> passenger=new TreeMap<Passenger,Integer>();

	 Set<Map.Entry<Passenger, Integer> > entrySet
     = passenger.entrySet();


	
	public Ticket(Date travelDate,Train train) {
		super();
		this.travelDate=travelDate;
		this.train=train;
	}
	@SuppressWarnings("deprecation")
	public String generatePNR() {
		
		counter++;
		char source=train.getSource().charAt(0);
		char destination=train.getDestination().charAt(0);
		String currentDate=travelDate.toLocaleString();
		System.out.println(currentDate);
		int day=travelDate.getDate();
		int month=travelDate.getMonth();
		System.out.println("ye hai date from ticket class"+ travelDate.toLocaleString());
		String dt=travelDate.toLocaleString().substring(7, 11);
		
		System.out.println("ticket class ka year hun mai"+dt);
		pnr=source+""+destination+"_"+dt+(month+1)+day+"_"+counter;
		return pnr;
		}
	private double calcPassengerFare(Passenger p) {
		
		if(p.getAge()<=12) 
			return((train.getTicketPrice())* 0.5);
		else if(p.getAge()>=60)
			return((train.getTicketPrice())* 0.6);
		else if((p.getGender()=='F')&&(p.getAge()>=12)&&(p.getAge()<=60))
			return((train.getTicketPrice())* 0.75);
		
		return(train.getTicketPrice());
	}

	public void addPassenger(String name, int age ,char gender) {
		
//		Passenger p2 = new Passenger(name,age,gender);
//		int fare=(int) calcPassengerFare(p2);
//		passenger.put(p2,(Integer)fare);
		
		System.out.println("addpassenger hu ticket class se "+name+" "+age+" "+gender);
		
		TreeMap<Passenger,Integer> passengertesting=new TreeMap<Passenger,Integer>();
		Passenger pt = new Passenger(name,age,gender);
		int fare1=(int) calcPassengerFare(pt);

//		passengertesting.put(pt,fare1);
		passenger.put(pt, fare1);
		System.out.println(passenger+" ticket class ka testing wala passenger");
		System.out.println("passengertesting tree map "+passengertesting);

	}
	public double calculateTotalTicketPrice() {
		double totalFare=0;
		
		for(double i: passenger.values())
			totalFare+=i;
		return totalFare;
		
	}
	@SuppressWarnings({ "resource", "deprecation" })
	private StringBuilder generateTicket() {
		
		StringBuilder sb=new StringBuilder();
//		System.out.println("Enter no. of Passengers : ");
//		Scanner sc=new Scanner(System.in);
//		int noOfPassengers=sc.nextInt();
//		for(int i=1;i<=noOfPassengers;i++) {
//			System.out.println("Enter name of passenger "+i);
//			sc.nextLine();
//			String name=sc.nextLine();
//			
//			System.out.println("Enter age of passenger "+i);
//			int age=sc.nextInt();
//			System.out.println("Enter Gender of passenger "+i);
//			char gender=sc.next().charAt(0);
//			addPassenger(name,age,gender);
//		}
		pnr=generatePNR();
		
		sb.append("PNR        \t : "+pnr+"\n");
		sb.append("Train no   \t : "+train.getTrainNo()+"\n");
		//String s1=train.getTrainName();
		
		sb.append("Train Name \t : "+train.getTrainName()+"\n");
		sb.append("From       \t : "+train.getSource()+"\n");
		sb.append("To         \t : "+train.getDestination()+"\n");
		@Deprecated
		int day=travelDate.getDate();
		@Deprecated
		int month=travelDate.getMonth();
		@Deprecated
		String dt=travelDate.toLocaleString().substring(7, 11);

//		int year = Integer.parseInt(travelDate.toLocaleString().substring(8, 12));
		String date=day+"/"+month+"/"+dt;
		sb.append("Travel Date\t : "+date+"\n\n\n");
		sb.append("Passengers :\n\n");
		sb.append(String.format("%-30s"," Name"));
		sb.append(String.format("%-15s"," Age"));// "+"Age "+"Gender "+"Fare");
		sb.append(String.format("%-15s"," Gender"));
		sb.append(String.format("%-15s"," Fare"));
		sb.append("\n\n");
		for(Map.Entry<Passenger, Integer> entry : passenger.entrySet()) {
			sb.append(String.format("%-30s",((Passenger) entry).getName())+" "+String.format("%-15s",((Passenger) entry).getAge())+" "+String.format("%-15s",((Passenger) entry).getGender())+" "+entry.getValue());
			sb.append("\n");
		}
		
		sb.append("\n\n");
		sb.append("Total Price : "+calculateTotalTicketPrice());
	
		 	
		
		return sb;
	}
	public void writeTicket() {
		
		String ticket=generateTicket().toString();
		String fileName=pnr;
		try {
			FileOutputStream fout=new FileOutputStream("C:\\Users\\Ticketsss\\"+fileName+".txt");
			byte[] b=ticket.getBytes();
			try {
				fout.write(b);
				System.out.println("File with PNR : "+pnr+" .... is ......SAVED SUCCESSFULLY");
				fout.close();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			try {
				fout.close();
			} catch (IOException e) {
	
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			
			System.out.println("File Path Not Found........!!!!!");
		}
		
	}
	public static int getCounter() {
		return counter;
	}
	public static void setCounter(int counter) {
		Ticket.counter = counter;
	}
	public String getPnr() {
		return pnr;
	}
	public void setPnr(String pnr) {
		this.pnr = pnr;
	}
	public Date getTravelDate() {
		return travelDate;
	}
	public void setTravelDate(Date travelDate) {
		this.travelDate = travelDate;
	}
	public Train getTrain() {
		return train;
	}
	public void setTrain(Train train) {
		this.train = train;
	}
	public Map<Passenger, Integer> getPassenger() {
		return passenger;
	}
	public void setPassenger(Map<Passenger, Integer> passenger) {
		this.passenger = passenger;
	}
	
}

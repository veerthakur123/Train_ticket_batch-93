package com.torryharris.trainn.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.torryharris.trainn.model.Passenger;
import com.torryharris.trainn.model.Ticket;
import com.torryharris.trainn.model.Tickett;
import com.torryharris.trainn.model.Train;
import com.torryharris.trainn.model.User;
import com.torryharris.trainn.repository.BaseRepository;
 
import com.torryharris.trainn.repository.TrainRepository;
import com.torryharris.trainn.service.TrainService;

@Controller
public class BaseController {

	@Autowired 
	private BaseRepository repo;
 
	
	@Autowired
	private TrainService tservice;
	
	@Autowired
	private TrainRepository tRepo;
	Train t;
	Train trraaaiin;
	String travelDate;
	@RequestMapping("/")
		public String home() {
			return "Home.jsp";
		}
 
 
	@RequestMapping("/registration")
	public String addUser(User user) 
	{
		repo.save(user);
		return "login.jsp";	
	}

//	@RequestMapping("/login")
//	public ModelAndView checkUser(@RequestParam("userName") String userName,@RequestParam("password") String password) {
//		ModelAndView mv = new ModelAndView();
//		boolean loginStatus = false;
//		
//		if(repo.existsByUserName(userName)) {
//		loginStatus=true;
//		mv.setViewName("Profile.jsp");
//		}
//		else {
//			mv.setViewName("login.jsp");
//		}
//		mv.addObject("status", loginStatus);
//		if(loginStatus){
//			mv.addObject("userName",userName);
//		}
//		return mv;
//	}
	
	@RequestMapping("/login")
	public ModelAndView checkUser(@RequestParam("userName") String userName,@RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();
		boolean logStatus = false;
		
		if(repo.existsByUserName(userName)) {
			
			if(password.equals(repo.findPasswordByUserName(userName)))
			{	
				logStatus=true;
				mv.setViewName("Profile.jsp");
			}
			else {
					mv.setViewName("login.jsp");
				}
		}
		else {
			mv.setViewName("Register.jsp");
            mv.addObject("logStatus",logStatus);
            
		}	
				return mv;
			}


	@RequestMapping("/addTrain")
	public String addTrain1(Train train)
	{
		tservice.save(train);
		
		return "AddTrain.jsp";
	}

	@GetMapping("/getTrain")
	public ModelAndView getTrainByNo1(@RequestParam int trainNo)
	{
		ModelAndView mv = new ModelAndView("SearchedTrain.jsp");
		Train train = tservice.getTrainByNo(trainNo);
		t=train;
		mv.addObject("train",train);
		return mv;
		
		
	}
	
	@GetMapping("/deleteTrain")
	public ModelAndView deleteTrain(@RequestParam int trainNo)
	{
		tservice.deleteTrain(trainNo);
		ModelAndView mv = new ModelAndView("AdminDashboard.jsp");
		return mv;
	}
	
	@RequestMapping("/addUser")
	public String addUser1(User user)
	{
		repo.save(user);
		
		return "AdminDashboard.jsp";
	}


	@GetMapping("/deleteUser")
	public ModelAndView deleteUser1(@RequestParam int userid)
	{
		repo.deleteById(userid);
		ModelAndView mv = new ModelAndView("AdminDashboard.jsp");
		return mv;
	}
	
//	@GetMapping("/getAllTrains")
//	public ModelAndView getAllTrains1(@RequestBody Train train)
//	{
//		ModelAndView mv = new ModelAndView("ViewAllTrains.jsp");
////		List<Train> allTrain = tservice.getAllTrain();
////		mv.addObject("allTrain",allTrain);
//		List<Train> allTrains = tservice.getAllTrain();
//		System.out.println(allTrains);
//		mv.addObject("listOfTrains",allTrains);
//		
//		return mv;
//	}
	
	
	@GetMapping("/getAllTrains")
	public ModelAndView getAllTrain() {

		List<Train> allTrains = tservice.getAllTrain();

		ModelAndView modelAndView = new ModelAndView("ViewAllTrains");
		modelAndView.addObject("allTrains", allTrains);

		return modelAndView;
	}

	
	@PostMapping("/train/add")
	@ResponseBody
	public void addTrain(@RequestBody Train train) {
        tservice.save(train);
	}
//
//	@RequestMapping("trains")
//	@ResponseBody
//	public List<Train> getAllTrains() {
//		return (List<Train>) tservice.getAllTrain();
//	}
//	
//	@RequestMapping("/train/{trainNo}")
//	@ResponseBody
//	public Train getTrainByNo(@PathVariable("trainNo") int trainNo) {
//		return tservice.getTrainByNo(trainNo);
//	}
	
	@DeleteMapping("/employee/delete/{empId}")
	@ResponseBody
	public void deleteEmployeeById(@PathVariable int trainNo) {
		tservice.getTrainByNo(trainNo);
		}
	
	@PutMapping("/employee/update/{empId}")
	@ResponseBody
	public void updateTrain(@PathVariable int empId, @RequestBody Train newTrain) {
		tservice.updateTrain(newTrain);
		
	}	
	
	@RequestMapping("/updateTrain")
	public void updateTrain1(@RequestParam int trainNo, @RequestBody Train train) {
		tservice.updateTrain(train);
	}


	@RequestMapping("/adminAuthentication")
	public ModelAndView checkCredentials(@RequestParam("userName") String userName, 
			@RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView("Response.jsp");

		boolean loginStatus=false;
		if(userName.equals("adminlogin")&&password.equals("Admin@123")) {
			loginStatus=true;
			mv.setViewName("AdminDashboard.jsp");
		}
		else {
			mv.setViewName("Admin.jsp");
		}
	
		mv.addObject("status", loginStatus);
		if(loginStatus){
			mv.addObject("userName",userName);
		}
		return mv;
	}
	
	
	@RequestMapping(value="/travelDate",method=RequestMethod.POST,produces = "application/json", consumes = "application/json")
	public String getTrain(@RequestBody String trvdate)
	{

		System.out.println("pehle "+ trvdate);
	travelDate = trvdate.substring(15, 25);
	System.out.println("baad aur pehle"+ trvdate);
	System.out.println("baad "+ travelDate);
	
	return ("Home.jsp");
	

	}
	
	
	
	@RequestMapping(value="/addPassenger",method=RequestMethod.POST,produces = "application/json", consumes = "application/json")
	public String getTrain(@RequestBody List<Passenger> p)
	{

	SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");

	try {
	Date travelllDate = format.parse(travelDate);
		
		
	Tickett tkkt = new Tickett(travelllDate,t);
	for(Passenger psng:p) {
	tkkt.addPassenger(psng.getName(), psng.getAge(), psng.getGender());
	System.out.println("testing k liye"+p);
	}

	for(Passenger k:tkkt.getPassangers().keySet()) {
	System.out.println(String.format("%-30s",k.getName())+" "+String.format("%-15s",k.getAge())+" "+String.format("%-15s",k.getGender()));
	}
	tkkt.writeTicket();

	System.out.println(tkkt.getPassangers().toString());
	System.out.println("passenger ka tree map");
	} catch (ParseException e) {

	e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	System.out.println(p);

	return ("Home.jsp");

	}
	
	@RequestMapping(value="/trainData/{trNo}",method=RequestMethod.GET)
	public Train getTrain(@PathVariable int trainNo)
	{
	if(tRepo.ispresent(trainNo))
	{
	t = tservice.getTrainByNo(trainNo);
	return t;
	}
	else {
	return null;
	}

	}
	
//
//	@RequestMapping("/login")
//	public ModelAndView login(@RequestParam("user") String userName,
//			@RequestParam("password") String password){
//		boolean loginStatus=false;
//		for(User user:userList){
//		if(userName.equals(user.getUserName()) && 
//				password.equals(user.getPassword())){
//			loginStatus=true;
//			break;
//			} 
//		}
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("response.jsp");
//		mv.addObject("status", loginStatus);
//		if(loginStatus){
//			mv.addObject("username",userName);
//		}
//		return mv;
//	}
//
//
	@RequestMapping("/register")
	
	public ModelAndView register(@RequestParam("fname") String fName,
			@RequestParam("lname") String lName,
			@RequestParam("username") String userName,
			@RequestParam("password1") String password,
			@RequestParam("age") int age )
			{
	
		User user = new User(fName,lName,userName,password,age);
//		userList.add(user);
	    repo.save(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login.jsp");
		
		mv.addObject("message", "Registration Success !! "
				+ "Login to continue");
		System.out.println(user);
		return mv;
	}
	
    
 

}

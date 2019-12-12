package com.nt.service;

import java.util.Random;

public class AddRotatorService {
	private String images[]= {"ford-mustang.jpg",
			                                         "mahindra-marazzo.jpg",
			                                         "Suzuki-Ertiga.jpg",
			                                         "tata-nexon.jpg",
			                                         "Toyota-Yaris.jpg",
			                                         "honda-city.jpg"};
	
	private String  links[]= {"https://www.ford.com/cars/mustang/",
			                                   "https://www.mahindramarazzo.com/ ",
			                                   "https://www.marutisuzuki.com/channels/arena/suvs-muvs/ertiga",
			                                   "https://nexon.tatamotors.com/",
			                                   "https://www.toyotayaris.in/",
			                                   "https://www.hondacarindia.com/honda-city"
			                                   };
	 private int  counter;
	public String[] getImages() {
		return images;
	}
	public void setImages(String[] images) {
		this.images = images;
	}
	public String[] getLinks() {
		return links;
	}
	public void setLinks(String[] links) {
		this.links = links;
	}
	
	public  String  getImage() {
		  return images[counter];
	}
	
	public String  getLink() {
		return links[counter];
	}
	
	public void nextAddNumber() {
		Random rad=null;
		rad=new Random();
		counter=rad.nextInt(5);
	}

}

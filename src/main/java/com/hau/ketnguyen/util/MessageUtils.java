package com.hau.ketnguyen.util;

import java.util.HashMap;

import org.springframework.stereotype.Component;

import com.hau.ketnguyen.dto.ProductDTO;

@Component
public class MessageUtils {
	public HashMap<String,String> getMessage(String message){
		HashMap<String,String> rs = new HashMap<>();
		ProductDTO dto = new ProductDTO();
		if(message.equals("update_success")) {
			rs.put("message","update_success");
			rs.put("alert","success");
		}else if(message.equals("add_success")){
			dto.setAlert("success");
			dto.setMessage("add success !");
			rs.put("message",dto.getMessage());
			rs.put("alert",dto.getAlert());
		}else if(message.equals("insert_success")){
			rs.put("message","insert_success");
			rs.put("alert","success");
		}else if(message.equals("error_system")) {
			rs.put("message","error_system");
			rs.put("alert","danger");
		}
		return rs;
	}
}

package com.hau.ketnguyen.controller.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hau.ketnguyen.dto.UserDTO;
import com.hau.ketnguyen.dto.VerificationDTO;
import com.hau.ketnguyen.repository.UserRepository;
import com.hau.ketnguyen.service.IUserService;
import com.hau.ketnguyen.service.IVerificationService;
import com.hau.ketnguyen.service.impl.SendMailServiceImpl;

@Controller(value = "register")
public class RegisterController {
	@Autowired
	private IUserService userService;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private IVerificationService verificationService;

	@Autowired
	private SendMailServiceImpl sendMail;

	@GetMapping
	public ModelAndView signUp(ModelAndView mav) {
		mav = new ModelAndView("/register/home");
		UserDTO userDTO = new UserDTO();
		mav.addObject("userForm", userDTO);
		return mav;
	}

	@PostMapping("/register")
	public ModelAndView processSignup(@ModelAttribute("userForm") @Valid UserDTO userDto, BindingResult bindingResult,
			ModelAndView mav) {
		mav = new ModelAndView("/register/home");

		if (bindingResult.hasErrors()) {
			return mav;
		}
		if (userRepository.findOneByUserNameAndStatus(userDto.getUsername(), 1) != null) {
			mav.addObject("acc_exist", "This account already exists!");
		} else {
			if (userDto.getConfirmPassword().equals(userDto.getPassword())) {
				userService.insert(userDto);
				VerificationDTO dto = new VerificationDTO(userDto);
				verificationService.save(dto);
				sendMail.sendMail(dto.getUser().getEmail(), "ketmax121@gmail.com", "Register Success !",
						"To confirm your account, please click here : " + "http://localhost:8080/confirm?token="
								+ dto.getVerificationToken());
				mav.addObject("success", "Register Success !");
			} else {
				mav.addObject("failPass", "Passwords don't match !");
			}
		}

		return mav;
	}

	@PostMapping("/confirm")
	public ModelAndView confirm(@RequestParam("token") String verificationToken, ModelAndView mav) {
		mav = new ModelAndView("/confirm/home");
		VerificationDTO token = verificationService.finByVerificationToken(verificationToken);
		if (token != null) {
			UserDTO user = userService.findById(token.getUser().getId());
			user.setStatus(1);
			userService.insert(user);
			token = new VerificationDTO(user);
			verificationService.save(token);
			mav.addObject("confirm",
					"Congratulations! Your account has been activated and email is\r\n" + "			verified!");
		} else {
			mav.addObject("message", "The link is invalid or broken!");
		}
		return mav;
	}
}

package com.ham.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ham.domain.BestDTO;
import com.ham.member.MemberService;

@Controller

public class LoginController {
   
   @Autowired
   MemberService service;
   
   @GetMapping("/index.do")
   
   public String index(Model model) {
      
      List<BestDTO> list = service.getBest();

      model.addAttribute("list", list);
      
      return "index";
   }
   
   

   @GetMapping("/login.do")
   public String login(Model model, @RequestParam(defaultValue="try") String login) {
      
      model.addAttribute("login", login);
      
      return "member/login";
   }
   
   @GetMapping("/logout.do")
   public String logout() {
      
      
      return "member/logout";
   }
   
}


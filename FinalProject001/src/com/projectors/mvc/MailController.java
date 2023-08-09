package com.projectors.mvc;


import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MailController
{
	
    @Autowired
    private SqlSession sqlSession;
	
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping(value="/inputCkEmail.action",method = RequestMethod.GET)
	public void confiemEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String inputCkEmail = request.getParameter("inputCkEmail");
		
		String result = inputCkEmail;
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("inputemail_ck_ajax.jsp");
		dispatcher.forward(request, response);
		
		
	}	
		
		
		
		
	@RequestMapping(value="/emailcheck.action",method = RequestMethod.GET)
	public void mailSending(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2"); // 원하는 프로토콜로 수정
		
		String userEmail = request.getParameter("userEmail");
		System.out.println("수신사 이메일 : " + userEmail);
		
		Random r = new Random();
		int num = r.nextInt(888888) + 111111; // 111111~999999
		System.out.println("인증번호: " + num);
		
		
		String sender = "dlwnsqhr1230@naver.com";
		String receiver = userEmail;
		String title = "회원가입 인증 이메일.";
		String content =
				"Projectors 이메일 인증 절차입니다."
				+ "<br><br>"
				+ "인증 번호는 " + num + "입니다."
				+ "<br>" 
				+ "회원가입 페이지로 돌아가서 인증번호 입력란에 기입하여 주세요.";
		
		
		try
		{
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(sender);
			helper.setTo(receiver);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
		
		
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		String result = Integer.toString(num);
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("email_ck_ajax.jsp");
		dispatcher.forward(request, response);
		
	}
	
	
	
	
}

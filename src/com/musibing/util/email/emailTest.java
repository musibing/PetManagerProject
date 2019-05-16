package com.musibing.util.email;

import java.util.Properties;

import org.junit.Test;
import javax.mail.*;
import javax.mail.internet.*;
 import javax.activation.*;
public class emailTest {
	static String HOST = "smtp.126.com"; // smtp服务器
	     static String FROM = "musibing@126.com"; // 发件人地址
	     static String TO = "musibing@foxmail.com"; // 收件人地址
	     static String AFFIX = ""; // 附件地址
	     static String AFFIXNAME = ""; // 附件名称
	     static String USER = "musibing"; // 用户名
	     static String PWD = "Ngjk2853515zx"; // 163的授权码
	     static String SUBJECT = "sendEmail"; // 邮件标题
	     static String[] TOS = null;
	     static {
	    	          try {
	    	              Properties props = new Properties(); 
	    	           /*   props.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("config.properties"));//从自定义配置文件获取相关参数
*/	    	              HOST=props.getProperty("host");
	    	              FROM=props.getProperty("from");
	    	              TO=props.getProperty("to");
	    	              TOS=TO.split(",");
	    	              AFFIX=props.getProperty("affix");
	    	              AFFIXNAME=props.getProperty("affixName");
	    	              USER=props.getProperty("user");
	    	              PWD=props.getProperty("pwd");
	    	              SUBJECT=props.getProperty("subject");
	    	          } catch (Exception e) {
	    	              e.printStackTrace();
	    	          }
	    	      }
	@Test
	public static  void emailTest(String context){
	
		Properties props = new Properties();
		         props.put("mail.smtp.host", HOST);//设置发送邮件的邮件服务器的属性（这里使用网易的smtp服务器）
		         props.put("mail.smtp.auth", "true");  //需要经过授权，也就是有户名和密码的校验，这样才能通过验证（一定要有这一条）
		         Session session = Session.getDefaultInstance(props);//用props对象构建一个session
		         session.setDebug(true);
		         MimeMessage message = new MimeMessage(session);//用session为参数定义消息对象
		         try {
		             message.setFrom(new InternetAddress(FROM));// 加载发件人地址
		             InternetAddress[] sendTo = new InternetAddress[TOS.length]; // 加载收件人地址
		             for (int i = 0; i < TOS.length; i++) {  
		                 sendTo[i] = new InternetAddress(TOS[i]);  
		             }
		             message.addRecipients(Message.RecipientType.TO,sendTo);
		             message.addRecipients(MimeMessage.RecipientType.CC, InternetAddress.parse(FROM));//设置在发送给收信人之前给自己（发送方）抄送一份，不然会被当成垃圾邮件，报554错
		             message.setSubject(SUBJECT);//加载标题
		             Multipart multipart = new MimeMultipart();//向multipart对象中添加邮件的各个部分内容，包括文本内容和附件
		             BodyPart contentPart = new MimeBodyPart();//设置邮件的文本内容
		             contentPart.setText(context);
		             multipart.addBodyPart(contentPart);
		             if(!AFFIX.isEmpty()){//添加附件
		                  BodyPart messageBodyPart = new MimeBodyPart();
		                  DataSource source = new FileDataSource(AFFIX);
		                  messageBodyPart.setDataHandler(new DataHandler(source));//添加附件的内容
		                  sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();//添加附件的标题
		                  messageBodyPart.setFileName("=?GBK?B?"+ enc.encode(AFFIXNAME.getBytes()) + "?=");
		                  multipart.addBodyPart(messageBodyPart);
		             }
		             message.setContent(multipart);//将multipart对象放到message中
		             message.saveChanges(); //保存邮件
		             Transport transport = session.getTransport("smtp");//发送邮件
		             transport.connect(HOST, USER, PWD);//连接服务器的邮箱
		             transport.sendMessage(message, message.getAllRecipients());//把邮件发送出去
		             transport.close();//关闭连接
		         } catch (Exception e) {
		             e.printStackTrace();
		         }
		
	}public static void main(String[] args) {
		emailTest("dataBase测试");
	}
	

}

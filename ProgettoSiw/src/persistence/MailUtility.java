
package persistence;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class MailUtility {
	 public static void mailRegistrazione(String to, String user){
		  	String destinatario = to;
		  	String from = "flamingobeachcafarone@gmail.com";
		  	String host = "smtp.gmail.com";
		  	Properties props = new Properties();
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", "587");
	        props.put("mail.transfer.protocol","smtp");
	        Session session = Session.getInstance(props,null);

	     	   Message message = new MimeMessage(session);
	     	   try {
	     	   message.setText("Benvenuto " + user + " e grazie per esserti iscritto al sito del Flamingo Beach Club! "
	     	   		+ "non aspettare e guarda quanto è semplice scegliere il tuo posto al mare.");
	     	   message.setSubject(destinatario);
	     	   message.setFrom(new InternetAddress(from));
	     	   message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
	     	   Transport transport = session.getTransport("smtp");
	     	   transport.connect("smtp.gmail.com","flamingobeachcafarone@gmail.com","ciccillo1.");
	     	   transport.sendMessage(message,message.getAllRecipients());
	     	   transport.close();
	     	  } catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		  }
	 public static void mailPrenotazione(String to){
		  	String destinatario = to;
		  	String from = "flamingobeachcafarone@gmail.com";
		  	String host = "smtp.gmail.com";
		  	Properties props = new Properties();
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", "587");
	        props.put("mail.transfer.protocol","smtp");
	        Session session = Session.getInstance(props,null);

	     	   Message message = new MimeMessage(session);
	     	   try {
	     	   message.setText("La tua prenotazione è andata a buon fine!");
	     	   message.setSubject(destinatario);
	     	   message.setFrom(new InternetAddress(from));
	     	   message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
	     	   Transport transport = session.getTransport("smtp");
	     	   transport.connect("smtp.gmail.com","flamingobeachcafarone@gmail.com","ciccillo1.");
	     	   transport.sendMessage(message,message.getAllRecipients());
	     	   transport.close();
	     	  } catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		  }
	 public static void mailCambioPassword(String to){
		  	String destinatario = to;
		  	String from = "flamingobeachcafarone@gmail.com";
		  	String host = "smtp.gmail.com";
		  	Properties props = new Properties();
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", "587");
	        props.put("mail.transfer.protocol","smtp");
	        Session session = Session.getInstance(props,null);

	     	   Message message = new MimeMessage(session);
	     	   try {
	     	   message.setText("Clicka su questo link per procedere al cambiamento della password. http://localhost:8080/FlamingoBeachClub/NewPswd.jsp");
	     	   message.setSubject(destinatario);
	     	   message.setFrom(new InternetAddress(from));
	     	   message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
	     	   Transport transport = session.getTransport("smtp");
	     	   transport.connect("smtp.gmail.com","flamingobeachcafarone@gmail.com","ciccillo1.");
	     	   transport.sendMessage(message,message.getAllRecipients());
	     	   transport.close();
	     	  } catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		  }
	 }


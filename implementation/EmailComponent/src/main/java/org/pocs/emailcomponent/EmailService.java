package org.pocs.emailcomponent;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

//TODO Implementar um correto uso de uma dependência externa Autowired.
//@Service
public class EmailService {

	// TODO Implementar um correto envio de email.
	public void enviar(String nome, String emailConvidado) {
		try {
			Email email = new SimpleEmail();
			email.setHostName("smtp.googlemail.com");
			email.setSmtpPort(465);
			email.setAuthenticator(new DefaultAuthenticator("afonsobarrenha@gmail.com", "Jud@@f5817"));
			email.setSSLOnConnect(true);

			email.setFrom("afonsobarrenha@gmail.com");
			email.setSubject("Você foi convidado pelo ListaVIP");
			email.setMsg("Olá " + nome + ". Você acaba de ser convidado pelo ListaVIP.");
			email.addTo(emailConvidado);
			email.send();

		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
}
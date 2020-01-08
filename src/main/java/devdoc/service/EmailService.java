package devdoc.service;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import devdoc.util.AppUtils;
import java.io.File;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

/**
 *
 * @author Inzimam Tariq
 */
@Service
public class EmailService {

    @Autowired
    public JavaMailSender emailSender;

    public void sendSimpleMessage(
            String to, String subject, String text) {

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        emailSender.send(message);

    }

    public void sendMessageWithAttachment(String to, String subject, String text,
            String pathToAttachment) throws MessagingException {

        MimeMessage message = emailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(to);
        helper.setSubject(subject);
        helper.setText(text);

        FileSystemResource file = new FileSystemResource(new File("src/main/resources/static/images/img_avatar2.png"));
        helper.addAttachment(file.getFilename(), file);
        System.out.println("File name = " + file.getFilename());
        emailSender.send(message);

    }

    public void sendWelcomeMessage(String to, String userFullname, HttpServletRequest request) throws MessagingException {

        MimeMessage message = emailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(to);
        helper.setSubject("LinkDoc Registration !");
        helper.setText(getMessageToSend(userFullname, request), true);
        emailSender.send(message);

    }

    private String getMessageToSend(String userFullname, HttpServletRequest request) {
        String baseUrl = AppUtils.getBaseUrl(request);
        String siteName = AppUtils.getSiteName();
        return "<body style=\"padding-bottom: 70px;\">\n"
                + "            <div class=\"container-fluid\" style=\"padding-top: 30px\">\n"
                + "                <div class=\"row\">\n"
                + "                    <!--/left advert space-->\n"
                + "                    <!--/actual content body -->\n"
                + "                    <div class=\"col-sm-6\" >\n"
                + "                        <div class=\"container-fluid d-flex flex-column\"><br>\n"
                + "                            <h2><b>Welcome Mail from <a href='" + baseUrl + "/dashboard'>" + siteName + "</a></b></h2>\n"
                + "                            <br>\n"
                + "                            <img class=\"mb-4\" src=\"images/img_avatar2.png\" alt=\"\" width=\"720\" height=\"80\">\n"
                + "                            <p><b>{" + userFullname + "}</b> nice to have you as the member of <a href='" + baseUrl + "/dashboard'>" + siteName + "</a>.\n"
                + "                                This is an auto generated email to inform you that you have successfully register an account on\n"
                + "                                <a href='" + baseUrl + "/dashboard'>LinkDoc</a>. Please do not reply to this email.\n"
                + "                                You can enable your account by clicking on \"Enable Account\" button And login to your \n"
                + "                                account by clicking \"Login\" button given below.\n"
                + "                            </p>\n"
                + "                            <br>\n"
                + "                            <div class=\"d-flex flex-row justify-content-center\">\n"
                + "                                <button type=\"submit\" class=\"btn btn-primary\" \n"
                + "                                        onclick=\"location.href = '/createSl'\">Login</button>\n"
                + "                                <button type=\"submit\" class=\"btn btn-success\" \n"
                + "                                        style=\"margin-left: 5px;\" onclick=\"location.href = '/dashboard'\">\n"
                + "                                    Enable Account\n"
                + "                                </button>\n"
                + "                            </div>\n"
                + "                            <br>\n"
                + "                            <p>\n"
                + "                                Querious about how this site work? Check out our <a href='" + baseUrl + "/faqs'>FAQs page</a>.\n"
                + "                            </p>\n"
                + "                            <br><br><br>\n"
                + "                            <p style=\"color: #ccc\">You are receiving this email because you are a member of <a href='" + baseUrl + "/dashboard'>" + siteName + "</a> and you agreed\n"
                + "                                to receive our important communication emails. A key part of being successful is \n"
                + "                                communication. We take your success very seriously and therefore may send you important\n"
                + "                                emails time to time.</p>\n"
                + "                        </div>\n"
                + "                    </div>\n"
                + "                </div>\n"
                + "            </div>\n"
                + "        </body>";
    }

}

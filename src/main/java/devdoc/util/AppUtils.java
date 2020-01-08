/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 *
 * @author Inzimam Tariq
 */
public class AppUtils {

    private static final String[] IP_HEADER_CANDIDATES = {
        "X-Forwarded-For",
        "Proxy-Client-IP",
        "WL-Proxy-Client-IP",
        "HTTP_X_FORWARDED_FOR",
        "HTTP_X_FORWARDED",
        "HTTP_X_CLUSTER_CLIENT_IP",
        "HTTP_CLIENT_IP",
        "HTTP_FORWARDED_FOR",
        "HTTP_FORWARDED",
        "HTTP_VIA",
        "REMOTE_ADDR"};

    public static String getClientIpAddressIfServletRequestExist() {

        if (RequestContextHolder.getRequestAttributes() == null) {
            return "0.0.0.0";
        }

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        for (String header : IP_HEADER_CANDIDATES) {
            String ipList = request.getHeader(header);
            if (ipList != null && ipList.length() > 0 && !"unknown".equalsIgnoreCase(ipList)) {
                String ip = ipList.split(",")[0];
                return ip;
            }
        }

        return request.getRemoteAddr();
    }

    public static String getCurrentIp() {
        String ip = "";
        try {
            if (getClientIpAddressIfServletRequestExist().equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
                ip = InetAddress.getLocalHost().getHostAddress();
            } else {
                ip = getClientIpAddressIfServletRequestExist();
            }
        } catch (UnknownHostException ex) {
            Logger.getLogger(AppUtils.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ip;
    }

    public static String getCurrentCity() throws MalformedURLException, IOException {
        String ip = getCurrentIp();
        String myIP = "103.255.4.24";
        URL url = new URL("http://freegeoip.app/csv/" + ip);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.connect();

        InputStream is = connection.getInputStream();

        int status = connection.getResponseCode();
        if (status != 200) {
            return null;
        }

        String returnString = null;
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        for (String line; (line = reader.readLine()) != null;) {
            //this API call will return something like: "2.51.255.200","AE","United Arab Emirates","03","Dubai","Dubai","","x-coord","y-coord","",""
            // you can extract whatever you want from it
            System.out.println("IP String = " + line);
            returnString = line;
        }
        return returnString;
    }

    public static Date getCurrentDate() {
        return new Date();
    }

    public static Date getDateByDays(int days) {
        Calendar cal = new GregorianCalendar();
        cal.setTime(getCurrentDate());
        cal.add(Calendar.DAY_OF_MONTH, days);

        return cal.getTime();
    }

    public static Date getDateByHours(int hours) {
        Calendar cal = new GregorianCalendar();
        cal.setTime(getCurrentDate());
        cal.add(Calendar.HOUR, hours);

        return cal.getTime();
    }

    public static String formateDate(Date date) {
        SimpleDateFormat formater = new SimpleDateFormat("dd-MMM-yyyy");

        return formater.format(date);
    }

    static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    static SecureRandom rnd = new SecureRandom();

    public static String randomString(int len) {
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            sb.append(AB.charAt(rnd.nextInt(AB.length())));
        }
        return sb.toString();
    }

    public static String getUUId() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static String getBaseUrl(HttpServletRequest request) {
        String scheme = request.getScheme() + "://";
        String serverName = request.getServerName();
        String serverPort = (request.getServerPort() == 80) ? "" : ":" + request.getServerPort();
        String contextPath = request.getContextPath();
        return scheme + serverName + serverPort + contextPath;
    }

    public static String getSiteName() {
        return "LinkDoc";
    }

}

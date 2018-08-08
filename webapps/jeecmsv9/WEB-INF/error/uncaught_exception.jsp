<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Internal error</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49571",secure:"53558"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/jeecmsv9/src/main/webapp/WEB-INF/error/uncaught_exception.jsp">
<h2 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/jeecmsv9/src/main/webapp/WEB-INF/error/uncaught_exception.jsp">Internal error</h2>
<p />
<%
	try {
		// The Servlet spec guarantees this attribute will be available
		Throwable exception = (Throwable) request
				.getAttribute("javax.servlet.error.exception");

		if (exception != null) {
			if (exception instanceof ServletException) {
				// It's a ServletException: we should extract the root cause
				ServletException sex = (ServletException) exception;
				Throwable rootCause = sex.getRootCause();
				if (rootCause == null)
					rootCause = sex;
				out.println("** Root cause is: "
						+ rootCause.getMessage());
				rootCause.printStackTrace(new java.io.PrintWriter(out));
			} else {
				// It's not a ServletException, so we'll just show it
				exception.printStackTrace(new java.io.PrintWriter(out));
			}
		} else {
			out.println("No error information available");
		}

		// Display cookies
		out.println("\nCookies:\n");
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				out.println(cookies[i].getName() + "=["
						+ cookies[i].getValue() + "]");
			}
		}

	} catch (Exception ex) {
		ex.printStackTrace(new java.io.PrintWriter(out));
	}
%>
<p /><br />
</body>
</html>
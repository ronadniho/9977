<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	session="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><s:message code="error.accessForbidden.title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49571",secure:"53558"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-8" data-genuitec-path="/jeecmsv9/src/main/webapp/WEB-INF/error/403.jsp">
<h2 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-8" data-genuitec-path="/jeecmsv9/src/main/webapp/WEB-INF/error/403.jsp"><s:message code="error.accessForbidden" /></h2>
<p><%=request.getAttribute("message")%></p>
</body>
</html>
<!-------------------------------------------------------------------
                          标准页面服务对象引用
--------------------------------------------------------------------->
<%@ page language="java" contentType="text/html;charset=GBK"%>
<%@ page import="com.bocom.midserv.gz.*"%>
<%@ page import="com.viatt.util.*" %>
<%
	GzLog log = new GzLog("c:/gzLog");
	String dse_sessionId = MessManTool.changeChar(request.getParameter("dse_sessionId"));//获取dse_sessionId
	String biz_id=MessManTool.changeChar(request.getParameter("biz_id"));
	String step_id = MessManTool.changeChar(request.getParameter("step_id"));
	
	String cssFileName = request.getParameter("cssFileName");//获取客户当前使用的CSS样式
	if(cssFileName ==null){
		cssFileName = "skin.css";
	}
%>

<!-------------------------------------------------------------------
                          标准JavaScript库引用
--------------------------------------------------------------------->
<script language="JavaScript" src="/personbank/HttpProxy?URL=/midserv/js/public.js&dse_sessionId=<%=dse_sessionId%>"></script>

<!--------------------------------------------------------------------
   当前页面JavaScript函数部分，包括提交验证，页面动作，具体目标等代码
---------------------------------------------------------------------->

<!--------------------------------------------------------------------
                          页面HTML表现部分    
---------------------------------------------------------------------->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<title>交通银行网上服务</title>
		<link rel="stylesheet" type="text/css" href="/personbank/css/<%=cssFileName%>">
	</head>

	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<center>
			<div class="indent">
				<table width="100%" align="center" cellpadding="1" cellspacing="1" class="tab">
					<tr align="left"> 
          	<td class="tab_title">请 选 择 对 应 的 子 功 能</td>
        	</tr>
				
				<form name="f1" method="post" action="/personbank/HttpProxy">
					<input type="hidden" name="dse_sessionId"	value="<%=dse_sessionId%>">
					<input type="hidden" name="URL" value="/midserv/yinLvTong2.jsp">
					<input type="hidden" name=biz_id value="<%=biz_id %>">
					<input type="hidden" name=step_id value="1">
					
						<tr class="tab_tr">
							<td width="100%" align="center" class="InputTip">	
								<A
									onClick="
     this.document.f1.URL.value='/midserv/yinLvTong2.jsp';
     this.document.f1.biz_id.value=<%=biz_id %>;
     this.document.f1.submit();
     return false;
     "
									HREF="">电子门票
								</A>
							</td>
						</tr>
						<tr class="tab_tr">
							<td width="100%" align="center" class="InputTip">	
								<A
									onClick="
     this.document.f1.URL.value='/midserv/midServStep1.jsp';
     this.document.f1.biz_id.value=<%=biz_id %>;
     this.document.f1.submit();
     return false;
     "
									HREF="">旅游缴费
								</A>
							</td>
						</tr>
						<tr class="tab_tr">
							<td width="100%" align="center" class="InputTip">	
								<A
									onClick="
	 this.document.f1.URL.value='/midserv/yinLvTong7.jsp';
     this.document.f1.biz_id.value=<%=biz_id %>;
     this.document.f1.submit();
     return false;
     "
									HREF="">历史交易查询
								</A>
							</td>
						</tr>
						<tr class="tab_result">
	    				<td align="center" colspan="2">
             		<input type="button" class="button_bg" value="返 回" onClick="history.go(-2);"/>
           		</td>  	
	    			</tr>
					</table>
				</FORM>
			</DIV>
		</center>
	</body>
</html>

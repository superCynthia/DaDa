<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="Dao.DADA.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    	//从session中获取user对象
    	User user = new User();
    	HttpSession session2=request.getSession();
    	user=(User) session2.getAttribute("currentUser");
    	String userName=new String();
    	String login=new String();
    	if(user==null){
    		userName="";//没有登录就提示登录
    		login="登录";
    	}
    	else{
    		userName=user.getUserName();//登录过了就显示名字
    		login="注销";
    	}
    %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml" class="g_html">

<head>
<link rel='icon' href='images/icon.ico ' type=‘icon’ />
<title>大大学前教育视频网</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta name="renderer" content="webkit">


<meta name="keywords" content="" />
<meta name="description" content="" />



<link rel='canonical' href='http://www.dadaedu.icoc.me/mcart.jsp'>



<link type="text/css"
	href="http://2.ss.faisys.com/css/base.min.css?v=201607122017"
	rel="stylesheet" />
<link type="text/css"
	href="http://2.ss.faisys.com/css/template/27001.min.css?v=201509111823"
	rel="stylesheet" id="templateFrame" class="templateFrameClass" />



<link type='text/css'
	href=http://2.ss.faisys.com/css/mCart.min.css?v=201605301753
	rel='stylesheet' />
<link type='text/css'
	href='http://2.ss.faisys.com/css/pattern3.min.css?v=201601181713'
	rel='stylesheet'>
<link type='text/css'
	href='http://2.ss.faisys.com/css/searchBoxStyle1.min.css?v=201605161742'
	rel='stylesheet'>

<style id='stylemodule'>
#module403 .contentLineIcon {
	*padding: 0;
}

#module403 .contentLineIcon {
	*width: 0;
}

#module23 .contentLineIcon {
	*padding: 0;
}

#module23 .contentLineIcon {
	*width: 0;
}

#module313 {
	height: 76px;
}

#module313 {
	border: none;
}

#module313 {
	padding: 0px;
}

#module313 .formMiddle313 {
	border: none;
}

#module313 .formMiddle313 {
	padding: 0px;
}

#module313 .formMiddle313 .formMiddleCenter313 {
	border: none;
}

#module313 .formMiddle313 .formMiddleCenter313 {
	padding: 0px;
}

#module313 .formTop313 {
	display: none;
}

#module313 .formBottom313 {
	display: none;
}

#module313 .formMiddle313 .formMiddleLeft313 {
	display: none;
}

#module313 .formMiddle313 .formMiddleRight313 {
	display: none;
}

#module313 .formBanner313 {
	display: none;
}

#module313 .contentLineIcon {
	*padding: 0;
}

#module313 .contentLineIcon {
	*width: 0;
}

#module314 {
	height: 53px;
}

#module314 {
	border: none;
}

#module314 {
	padding: 0px;
}

#module314 .formMiddle314 {
	border: none;
}

#module314 .formMiddle314 {
	padding: 0px;
}

#module314 .formMiddle314 .formMiddleCenter314 {
	border: none;
}

#module314 .formMiddle314 .formMiddleCenter314 {
	padding: 0px;
}

#module314 .formTop314 {
	display: none;
}

#module314 .formBottom314 {
	display: none;
}

#module314 .formMiddle314 .formMiddleLeft314 {
	display: none;
}

#module314 .formMiddle314 .formMiddleRight314 {
	display: none;
}

#module314 .formBanner314 {
	display: none;
}

#module314 .contentLineIcon {
	*padding: 0;
}

#module314 .contentLineIcon {
	*width: 0;
}

#module315 {
	border: none;
}

#module315 {
	padding: 0px;
}

#module315 .formMiddle315 {
	border: none;
}

#module315 .formMiddle315 {
	padding: 0px;
}

#module315 .formMiddle315 .formMiddleCenter315 {
	border: none;
}

#module315 .formMiddle315 .formMiddleCenter315 {
	padding: 0px;
}

#module315 .formTop315 {
	display: none;
}

#module315 .formBottom315 {
	display: none;
}

#module315 .formMiddle315 .formMiddleLeft315 {
	display: none;
}

#module315 .formMiddle315 .formMiddleRight315 {
	display: none;
}

#module315 .formBanner315 {
	display: none;
}

#module315 .contentLineIcon {
	*padding: 0;
}

#module315 .contentLineIcon {
	*width: 0;
}
</style>
<style id='styleHeaderTop' type='text/css'>
#webHeaderTable {
	display: table !important;
	*display: block !important;
	height: 115px !important;
}

#webHeaderTable .webHeaderTd {
	height: 115px;
}

.absTopTable {
	height: 0;
}

#webHeaderTable .webHeaderTd {
	background: none;
}

#webHeaderTable .webHeader {
	background: none;
}

#webHeaderTable {
	background: #121212;
}

#webHeaderTable .headerCusLeft {
	background: none;
}

#webHeaderTable .headerCusMiddle {
	background: none;
}

#webHeaderTable .headerCusRight {
	background: none;
}
</style>
<style id='stylefooter' type='text/css'>
#footer .footerInfo {
	float: left;
}

#footer .footerNav {
	text-align: left;
}

#footer .footerInfo {
	text-align: left;
}

#footer .footerSupport {
	text-align: left;
}

#footer .visitorCounterPosition {
	float: left;
}

#footer .footerItemListContainer {
	text-align: left;
}

#footer .footerNav {
	padding: 0 0px 0 0px;
}

#footer .footerInfo {
	padding: 0 0px 0 0px;
}

#footer .footerSupport {
	padding: 0 0px 0 0px;
}

#footer .visitorCounterWrap {
	padding: 0 0px 0 0px;
}

#footer .footerContent {
	padding-top: 25px;
}

#footer .footerContent {
	padding-bottom: 0px;
}

#footer div.footerInfo a {
	font-size: 13px;
}

#footer div.footerSupport a {
	font-size: 13px;
}

#footer .footerInfo a {
	font-weight: normal;
}

#footer .footerSupport a {
	font-weight: normal;
}

#footer div.footerInfo a {
	font-family: 微软雅黑;
}

#footer div.footerSupport a {
	font-family: 微软雅黑;
}

#footer div.footerInfo a {
	color: #4d4d4d;
}

#footer div.footerSupport a {
	color: #4d4d4d;
}

#footer .footerInfo a {
	text-decoration: none;
}

#footer .footerSupport a {
	text-decoration: none;
}

#footer .footerInfo a:hover {
	color:;
}

#footer .footerSupport a:hover {
	color:;
}

#footer .footerInfo {
	font-size: 13px;
}

#footer .footerSupport {
	font-size: 13px;
}

#footer .footerInfo {
	font-weight: normal;
}

#footer .footerSupport {
	font-weight: normal;
}

#footer .footerInfo {
	font-family: 微软雅黑;
}

#footer .footerSupport {
	font-family: 微软雅黑;
}

#footer .footerInfo {
	color: #4d4d4d;
}

#footer .footerSupport {
	color: #4d4d4d;
}

#webFooterTable {
	background: #000
		url(http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg4--jswUoxsih0gIwAjipAQ.png)
		repeat-x top;
}

#webFooterTable .webFooter {
	background: none;
}

#webFooterTable .footer {
	background: none;
	border-color: transparent;
}

#webFooterTable .footerTop {
	display: none;
}

#webFooterTable .middleLeft {
	display: none;
}

#webFooterTable .middleCenter {
	background: none;
}

#webFooterTable .footerContent {
	background: none;
}

#webFooterTable .footerNav {
	background: none;
}

#webFooterTable .footerInfo {
	background: none;
}

#webFooterTable .footerSupport {
	background: none;
}

#webFooterTable .middleRight {
	display: none;
}

#webFooterTable .footerBottom {
	display: none;
}

#webFooterTable li.footerItemSpacing {
	padding-left: 15px;
	padding-right: 15px;
}

#webFooterTable div.footerItemTop .footerItemTopLink {
	font-family: 微软雅黑;
}

#webFooterTable div.footerItemTop .footerItemTopLink {
	font-size: 16px;
}

#webFooterTable div.footerItemTop .footerItemTopLink {
	font-weight: normal;
}

#webFooterTable div.footerItemTop .footerItemTopLink {
	text-decoration: none;
}

#webFooterTable div.footerItemTop .footerItemTopLink {
	color: #a9a9a9;
}

#webFooterTable div.footerItemTop a:hover {
	color: #e70c72;
}
</style>
<style id='styleWebSite' type='text/css'>
#memberBar {
	width: 1200px;
}

#webTop {
	width: 1200px;
}

#absTopForms {
	width: 1200px;
}

#webHeader {
	width: 1200px;
}

.webNavDefault {
	width: 1200px;
}

#webBanner {
	width: 1200px;
}

#absForms {
	width: 1200px;
}

#webContainer {
	width: 1200px;
}

#absBottomForms {
	width: 1200px;
}

#webFooter {
	width: 1200px;
}

div.webNav .navMainContent {
	width: 1200px;
}

div.nav .navMainContent {
	width: 1200px;
}

.fullmeasureContent {
	width: 1200px;
}
</style>
<style id='stylenav' type='text/css'>
#nav {
	width: 889px;
}

#nav .navMainContent {
	width: 100%;
}

#nav {
	height: 61px;
}

#nav .navMainContent {
	height: 100%;
}

#nav  .navCenterContent {
	height: 100%;
}

#nav .navContent {
	width: 889px;
}

#nav .navContent {
	height: 61px;
}

#nav  .navCenterContent {
	height: 100%;
}

#nav .navContent {
	background-size: contain;
}

#nav  .navLeft {
	background-size: 100% 100%;
}

#nav  .navRight {
	background-size: 100% 100%;
}

#nav  .navCenterContent {
	background-size: contain;
}

#nav {
	background: none;
}

#nav {
	top: 41px;
}

#nav {
	left: 365px;
}

#nav .item {
	width: 125px;
}

#nav .item a {
	margin-left: 0;
	margin-right: 0;
	padding-left: 0;
	padding-right: 0;
}

#nav .item {
	height: 61px;
}

#nav .item a {
	margin-top: 0;
	margin-bottom: 0;
	padding-top: 0;
	padding-bottom: 0;
}

#nav .item {
	background-size: contain;
}

#nav .item .itemLeft {
	background-size: 100% 100%;
}

#nav .item .itemCenter {
	background-size: contain;
}

#nav .item .itemRight {
	background-size: 100% 100%;
}

#nav .itemSep {
	background-position: center;
}

#nav .itemSep {
	height: 61px;
}

#nav a {
	text-decoration: none;
}

#nav a {
	font-size: 16px;
}

#nav a {
	font-weight: normal;
}

#nav a {
	font-family: 微软雅黑;
}

#nav a {
	color: #6f6f6f;
}

#nav a {
	text-shadow: none;
}

#nav a {
	-webkit-text-shadow: none;
}

#nav a {
	-o-text-shadow: none;
}

#nav a {
	-ms-text-shadow: none;
}

#nav a {
	-moz-text-shadow: none;
}

#nav a {
	text-decoration: none;
}

#nav .itemHover a {
	color: #e70c72;
}

#nav .itemSelected a {
	color: #e70c72;
}

#nav .itemSelected {
	background: none !important;
}

#nav .itemSelected .itemLeft {
	background: none !important;
}

#nav .itemSelected .itemCenter {
	background: none !important;
}

#nav .itemSelected .itemRight {
	background: none !important;
}

#nav .itemSelected .itemCenter a {
	background: none !important;
}

#nav .itemHover {
	background: none !important;
}

#nav .itemHover .itemLeft {
	background: none !important;
}

#nav .itemHover .itemCenter {
	background: none !important;
}

#nav .itemHover .itemCenter a {
	background: none !important;
}

#nav .itemHover .itemRight {
	background: none !important;
}

#nav .itemSep {
	display: none;
	width: 0;
}
</style>






<script type="text/javascript">
(function(FUN, undefined){
	var list = []; 
	
	FUN.run = function(){
		if(arguments.length < 1){
			throw new Error("jzUtils.run 参数错误");
			return;
		}
		
		var name = arguments[0].name, 
			callMethod = arguments[0].callMethod || false, 
			prompt = arguments[0].prompt || false, 
			promptMsg = arguments[0].promptMsg || "功能还在加载中，请稍候", 
			base = arguments[0].base || (window.Fai && Fai.top.Site) || top.Site || window, 
			
			args = Array.prototype.slice.call(arguments), 
			funcArgs = args.slice(1), 
			callbackFunc = {}, 
			result; 

		result = checkMethod(name, base);
		if(result.success){
			callMethod = false;
			try{
				result.func.apply(result.func, funcArgs); 
			}catch(e){
				console && console.log && console.log("错误:name="+ e.name +"; message="+ e.message);
			}
		}else{
			if(prompt){
				window.Fai && Fai.ing(promptMsg, true);
			}
		}
		
		
		if(callMethod){
			callbackFunc.name = name;
			callbackFunc.base = base;
			callbackFunc.args = funcArgs;
			list.push(callbackFunc);
		}
	};
	
	
	FUN.trigger = function(option){
		if(typeof option !== "object"){
			throw new Error("jzUtils.trigger 参数错误");
			return;
		}
		
		var funcName = option.name || "", 
			base = option.base || (window.Fai && Fai.top.Site) || top.Site || window, 
			newList = [], 
			result, 
			func, 
			i, 
			param; 
		
		if(funcName.length < 1){
			return;
		}
		
		
		for(i = 0; i < list.length; i++){
			param = list[i];
			if(param.name == funcName){
				result = checkMethod(funcName, base);
				if( result.success ){
					try{
						result.func.apply(result.func, param.args);
					}catch(e){
						console && console.log && console.log("错误:name="+ e.name +"; message="+ e.message);
					}
				}
			}else{
				newList.push(param);
			}
		}
		
		list = newList;
	};
	
	
	function checkMethod(funcName, base){
		var methodList = funcName.split("."), 
			readyFunc = base, 
			result = {
				"success":true,
				"func":function(){}
			}, 
			methodName, 
			i;
			
		for(i = 0; i < methodList.length; i++){
			methodName = methodList[i];
			if(methodName in readyFunc){
				readyFunc = readyFunc[methodName];
			}else{
				result.success = false;
				return result;
			}
		}
		
		result.func = readyFunc;
		return result; 
	}
})(window.jzUtils || (window.jzUtils = {}));
</script>

</head>
<body class="g_body g_locale2052 g_cusSiteWidth">

	</td>
	</tr>
	</table>
	</div>

	<div id="g_main" class='g_main g_col13 ' style='top: 31px'>
		<div id="web" class="g_web ">
			<table class="webTopTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="webTop" class="webTop"></div>
					</td>
				</tr>
			</table>

			<table class="absTopTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="absTopForms" class="forms sideForms absForms">
							<div style="position: absolute;"></div>
							<!-- for ie6 -->
							<div id='module313' _indexClass='formIndex1'
								class='form form313 formIndex1 formStyle1 fk_bannerStyle0 modulePattern modulePattern60'
								title=''
								style='position: absolute; top: 27px; left: 97px; width: 235px;'
								_side='0' _inTab='0' _inMulMCol='0' _inFullmeasure='0'
								_autoHeight='0' _global='true' _independent='false'>
								<table class='formTop formTop313' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left'></td>
										<td class='center'></td>
										<td class='right'></td>
									</tr>
								</table>
								<table class='formMiddle formMiddle313' style='height: 76px;'
									cellpadding='0' cellspacing='0'>
									<tr>
										<td class='formMiddleLeft formMiddleLeft313'></td>
										<td class='formMiddleCenter formMiddleCenter313' valign='top'>
											<div class='formMiddleContent formMiddleContent313  '
												tabStyle='0'>
												<div class='richContent richContent0'>
													<p>
														<img
															src="images/title.jpg"
															width="180" height="40" / alt=" ">
													</p>
												</div>
											</div>
										</td>
										<td class='formMiddleRight formMiddleRight313'></td>
									</tr>
								</table>
								<table class='formBottom formBottom313' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left left313'></td>
										<td class='center center313'></td>
										<td class='right right313'></td>
									</tr>
								</table>
								<div class='clearfloat clearfloat313'></div>
							</div>

							<div id='module314' _indexClass='formIndex2'
								class='form  formIndex2 formStyle45 fk_bannerStyle0 modulePattern modulePattern60'
								title=''
								style='position: absolute; top: 0px; left: 964px; width: 282px;'
								_side='0' _inTab='0' _inMulMCol='0' _inFullmeasure='0'
								_autoHeight='0' _global='true' _independent='false'>
								<table class='formTop formTop314' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left'></td>
										<td class='center'></td>
										<td class='right'></td>
									</tr>
								</table>
								<table class='formMiddle formMiddle314' style='height: 53px;'
									cellpadding='0' cellspacing='0'>
									<tr>
										<td class='formMiddleLeft formMiddleLeft314'></td>
										<td class='formMiddleCenter formMiddleCenter314' valign='top'>
											<div class='formMiddleContent formMiddleContent314  '
												tabStyle='0'>
												<div class='searchBox searchBoxStyle69'>
													<div class='searchBoxContainer' style=''>
														<input class='productSearch g_itext' style='width: 185px;'
															placeholder='' size='10' value='' /><a
															class='g_btn searchBoxBtn' href='pr.html'
															onclick='Site.searchProduct(314);return true;'><span>搜索</span></a>
													</div>
												</div>
												<div class='recommandKeyBox'>
													<div class='linkKeys'>
														<a class='recommandKey' href='pr.html'
															onclick='Site.searchProductByKey(314,"");return true;'><span></span></a>
													</div>
												</div>
											</div>
										</td>
										<td class='formMiddleRight formMiddleRight314'></td>
									</tr>
								</table>
								<table class='formBottom formBottom314' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left left314'></td>
										<td class='center center314'></td>
										<td class='right right314'></td>
									</tr>
								</table>
								<div class='clearfloat clearfloat314'></div>
							</div>

							<div id='module315' _indexClass='formIndex3'
								class='form form315 formIndex3 formStyle1 fk_bannerStyle0 modulePattern modulePattern60'
								title=''
								style='position: absolute; top: 10px; left: 825px; width: 139px;'
								_side='0' _inTab='0' _inMulMCol='0' _inFullmeasure='0'
								_autoHeight='1' _global='true' _independent='false'>
								<table class='formTop formTop315' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left'></td>
										<td class='center'></td>
										<td class='right'></td>
									</tr>
								</table>
								<table class='formMiddle formMiddle315' style='' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='formMiddleLeft formMiddleLeft315'></td>
										<td class='formMiddleCenter formMiddleCenter315' valign='top'>
											<div class='formMiddleContent formMiddleContent315  '
												tabStyle='0'>
												<div class='richContent richContent0'>
													<p>
														<a href='userMessage.jsp' astyle_h="1" target="_self"
															title="登录"
															stylehover="{&quot;wo&quot;:true,&quot;u&quot;:false,&quot;fs&quot;:&quot;16px&quot;,&quot;b&quot;:false,&quot;ff&quot;:&quot;微软雅黑&quot;,&quot;c&quot;:&quot;#e70c72&quot;}"
															_t="100" _i="AGQIEhIA" _n="会员登录"
															style="color: #B4B4B4; text-decoration: none; font-weight: normal;">
															<!-- 显示用户名的按钮 --> <span
															style="font-size: 16px; font-family: 微软雅黑;"> <span
																style="font-size: 16px; font-family: 微软雅黑;"> <span
																	style="font-size: 16px; color: #B4B4B4; font-family: 微软雅黑;"><%=userName %></span>
															</span>
														</span>
														</a> <a href='userlogin.jsp' astyle_h="1" target="_self"
															title="登录"
															stylehover="{&quot;wo&quot;:true,&quot;u&quot;:false,&quot;fs&quot;:&quot;16px&quot;,&quot;b&quot;:false,&quot;ff&quot;:&quot;微软雅黑&quot;,&quot;c&quot;:&quot;#e70c72&quot;}"
															_t="100" _i="AGQIEhIA" _n="会员登录"
															style="color: #B4B4B4; text-decoration: none; font-weight: normal;">
															<!-- 用户登录按钮 --> <span
															style="font-size: 16px; font-family: 微软雅黑;"> <span
																style="font-size: 16px; font-family: 微软雅黑;"> <span
																	style="font-size: 16px; color: #B4B4B4; font-family: 微软雅黑;"><%=login%></span>
															</span>
														</span>
														</a> <span style="font-size: 16px; font-family: 微软雅黑;">
															<span style="font-size: 16px; font-family: 微软雅黑;">
																<span
																style="font-size: 16px; color: #B4B4B4; font-family: 微软雅黑;">
															</span>
														</span> <span
															style="font-size: 16px; font-family: 微软雅黑; color: #3F3F3F;">|</span>
															<a href='regist.jsp' astyle_h="1" target="_self"
															title="注册"
															stylehover="{&quot;wo&quot;:true,&quot;u&quot;:false,&quot;fs&quot;:&quot;16px&quot;,&quot;b&quot;:false,&quot;ff&quot;:&quot;微软雅黑&quot;,&quot;c&quot;:&quot;#e70c72&quot;}"
															_t="100" _i="AGQIERIA" _n="会员注册"
															style="color: #979797; text-decoration: none; font-weight: normal;">
																<span
																style="font-size: 16px; color: #979797; font-family: 微软雅黑;">注册</span>
														</a>
														</span>
													</p>
												</div>
											</div>
										</td>
										<td class='formMiddleRight formMiddleRight315'></td>
									</tr>
								</table>
								<table class='formBottom formBottom315' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left left315'></td>
										<td class='center center315'></td>
										<td class='right right315'></td>
									</tr>
								</table>
								<div class='clearfloat clearfloat315'></div>
							</div>


						</div>
					</td>
				</tr>
			</table>
			<table class="webNavTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="webNav" class="webNav webNavDefault">
							<div id='nav' class='nav nav2 fixedNavPos '>
								<div class='navMainContent'>
									<table class='navTop' cellpadding='0' cellspacing='0'>
										<tr>
											<td class='navTopLeft'></td>
											<td class='navTopCenter'></td>
											<td class='navTopRight'></td>
										</tr>
									</table>
									<table class='navContent' cellpadding='0' cellspacing='0'>
										<tr>
											<td class='navLeft'></td>
											<td class='navCenterContent' id='navCenterContent'
												valign='top' align='left'>
												<div id='navCenter' class='navCenter' style='width: 875px;'>
													<div class='itemPrev'></div>
													<div class='itemContainer'>
														<table title='' class='item itemCol2 itemIndex1'
															cellpadding='0' cellspacing='0' colId='2' id='nav2'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a hidefocus='true'
																	style='outline: none;' href='mainweb.jsp'
																	target='_self' onclick='return true;'><span
																		class='itemName0'>首页</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol107 itemIndex2'
															cellpadding='0' cellspacing='0' colId='107' id='nav107'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a hidefocus='true'
																	style='outline: none;' href='ContentSearchWeb.jsp'
																	target='_self' onclick='return true;'><span
																		class='itemName0'>科目查询</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol108 itemIndex3'
															cellpadding='0' cellspacing='0' colId='108' id='nav108'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a hidefocus='true'
																	style='outline: none;' href='FileTypeSearchWeb.jsp'
																	target='_self' onclick='return true;'><span
																		class='itemName0'>资源类别</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol105 itemIndex4'
															cellpadding='0' cellspacing='0' colId='105' id='nav105'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a hidefocus='true'
																	style='outline: none;' href='spr.jsp' target='_self'
																	onclick='return true;'><span class='itemName0'>综合查询</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol13 itemIndex5'
															cellpadding='0' cellspacing='0' colId='13' id='nav13'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemCenter'><a hidefocus='true'
																	style='outline: none;' href='shopping.jsp'
																	target='_self' onclick='return true;'><span
																		class='itemName0'>购物车</span></a></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol110 itemIndex6'
															cellpadding='0' cellspacing='0' colId='110' id='nav110'>
															<tr>
																<td class='itemLeft'></td>
																<td class='itemRight'></td>
															</tr>
														</table>
														<div class='itemSep'></div>
														<table title='' class='item itemCol9 itemIndex7'
															cellpadding='0' cellspacing='0' colId='9' id='nav9'>

														</table>
													</div>
													<div class='itemNext'></div>
												</div>
											</td>
											<td class='navRight'></td>
										</tr>
									</table>
									<table class='navBottom' cellpadding='0' cellspacing='0'>
										<tr>
											<td class='navBottomLeft'></td>
											<td class='navBottomCenter'></td>
											<td class='navBottomRight'></td>
										</tr>
									</table>
								</div>
							</div>

						</div>
					</td>
				</tr>
			</table>
			<table class="webHeaderTable" cellpadding="0" cellspacing="0"
				id="webHeaderTable">
				<tr>
					<td align="center" class="webHeaderTd">
						<div id="webHeader" class="webHeader">
							<table class='headerTable' cellpadding='0' cellspacing='0'>
								<tr>
									<td class='headerCusLeft'></td>
									<td class='headerCusMiddle' align='center' valign='top'>
										<div class='headerNav'></div>
									</td>
									<td class='headerCusRight'></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>

			<table class="webBannerTable J_webBannerTable" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center">
						<div id="webBanner" class="webBanner">
							<table class="bannerTable" cellpadding="0" cellspacing="0">
								<tr>
									<td class="bannerLeft"></td>
									<td class="bannerCenter" align='center' valign='top'>
										<div class='bannerTop'></div>
										<div id='banner' class='banner extBanner'
											style='background: url(http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg) 50% 50% no-repeat; height: 400px'
											normalheight='400' defaultwidth='1440'>
											<div class='banner defaultBannerMain'
												style='background: url(http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg) 50% 50% no-repeat; height: 400px'></div>
											<div class='defaultBannerEdge defaultBannerEdgeRight'></div>
											<div class='defaultBannerEdge defaultBannerEdgeLeft'></div>
										</div>


									</td>
									<td class="bannerRight"></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>

			<table class="absMiddleTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="absForms" class="forms sideForms absForms"></div>
					</td>
				</tr>
			</table>

			<div id="fullmeasureTopForms"
				class="fullmeasureContainer forms sideForms fullmeasureForms fullmeasureTopForms"
				style='display: none'>

				<wbr style='display:none;' />
			</div>

			<table id="webContainerTable" class="webContainerTable"
				cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="webContainer" class="webContainer">
							<div id="container" class="container">
								<table class="containerTop" cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class="left"></td>
										<td class="center"></td>
										<td class="right"></td>
									</tr>
								</table>

								<table class="containerMiddle" cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td id="containerMiddleLeft" class="containerMiddleLeft">




										</td>

										<td class="containerMiddleCenter">
											<div id="containerMiddleCenterTop"
												class="containerMiddleCenterTop"></div>

											<div id="containerForms" class="containerForms">
												<div id="topForms" class="column forms mainForms topForms"
													style='display: none'></div>

												<table class="containerFormsMiddle" cellpadding='0'
													cellspacing='0'>
													<tr>
														<td valign="top" id="containerFormsLeft"
															class="containerFormsLeft">
															<div class="containerFormsLeftTop"></div>
															<div id="leftForms"
																class="column forms sideForms leftForms">
																<div id='module403' _indexClass='formIndex1'
																	class='form form403 formIndex1 formStyle3 fk_bannerStyle0'
																	title='' style='' _side='0' _inTab='0' _inMulMCol='0'
																	_inFullmeasure='0' _autoHeight='1' _global='false'
																	_independent='false'>
																	<table class='formTop formTop403' cellpadding='0'
																		cellspacing='0'>
																		<tr>
																			<td class='left'></td>
																			<td class='center'></td>
																			<td class='right'></td>
																		</tr>
																	</table>
																	<table class='formBanner formBanner403' cellpadding='0'
																		cellspacing='0'>
																		<tr>
																			<td class='left left403'></td>
																			<td class='center center403' valign='top'>
																				<table cellpadding='0' cellspacing='0'
																					class='formBannerTitle formBannerTitle403'>
																					<tr>
																						<td class='titleLeft titleLeft403' valign='top'>
																						</td>
																						<td class='titleCenter titleCenter403'
																							valign='top'>
																							<div class='titleText titleText403'>
																								<span class='fk_mainTitle mainTitle403'>产品展示</span>
																							</div>
																						</td>
																						<td class='titleRight titleRight403' valign='top'>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td class='right right403'></td>
																		</tr>
																	</table>
																	<table class='formMiddle formMiddle403' style=''
																		cellpadding='0' cellspacing='0'>
																		<tr>
																			<td class='formMiddleLeft formMiddleLeft403'></td>
																			<td class='formMiddleCenter formMiddleCenter403'
																				valign='top'>
																				<div
																					class='formMiddleContent formMiddleContent403  '
																					tabStyle='0'>
																					<div class='productMarqueeForms' newMarqueeToward=3>
																						<div class='demo'>
																							<div class='demo0' id='demo0403'>
																								<div topClassName='top1' topSwitch='on'
																									productId='39' productName='英文字母学习'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct39' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=39&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgoY2XvAUox9aVkAEw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='英文字母学习' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='英文字母学习'
																											href='pd.jsp?id=39&_pp=13_403'
																											target='_blank'>英文字母学习</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=39&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='43' productName='涂鸦上色进阶'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct43' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true' href='paymentfalse.html'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgtI_XvAUo4P_FqwIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='涂鸦上色进阶' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='涂鸦上色进阶'
																											href='paymentfalse.html' target='_blank'>涂鸦上色进阶</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>2</span>.00<span
																												class='fourth_Marketprice'>￥300.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='paymentfalse.html' target='_blank'>
																												<span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='25' productName='涂鸦上色基础'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct25' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=25&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgjv_WvAUoqsGmejD0AzjPAg!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='涂鸦上色基础' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='涂鸦上色基础'
																											href='pd.jsp?id=25&_pp=13_403'
																											target='_blank'>涂鸦上色基础</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>3</span>.00<span
																												class='fourth_Marketprice'>￥200.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=25&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='31' productName='小提琴兴趣培养班'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct31' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=31&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyIKXvAUo0LbetQQw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='小提琴兴趣培养班' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='小提琴兴趣培养班'
																											href='pd.jsp?id=31&_pp=13_403'
																											target='_blank'>小提琴兴趣培养班</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=31&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='40' productName='算数能力培养'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct40' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=40&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgto2XvAUo2Mns8AYw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='算数能力培养' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='算数能力培养'
																											href='pd.jsp?id=40&_pp=13_403'
																											target='_blank'>算数能力培养</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=40&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='44' productName='识字基础课程'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct44' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=44&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgxo_XvAUo1PW7hAUw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='识字基础课程' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='识字基础课程'
																											href='pd.jsp?id=44&_pp=13_403'
																											target='_blank'>识字基础课程</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=44&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='45' productName='零基础认识数字'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct45' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=45&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAghauXvAUozOToiAIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='零基础认识数字' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='零基础认识数字'
																											href='pd.jsp?id=45&_pp=13_403'
																											target='_blank'>零基础认识数字</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=45&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='38' productName='乐理入门'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct38' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='shoppingadd.jsp?id=38&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgj42XvAUolIOi-gYw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='乐理入门' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='乐理入门'
																											href='pd.jsp?id=38&_pp=13_403'
																											target='_blank'>乐理入门</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=38&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='42' productName='空间思维训练'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct42' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=42&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgqo_XvAUoq46RRjD0AzjPAg!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='空间思维训练' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='空间思维训练'
																											href='pd.jsp?id=42&_pp=13_403'
																											target='_blank'>空间思维训练</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=42&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='20' productName='看图识物基础课程'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct20' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=20&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg1v_WvAUo4e6JtAIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='看图识物基础课程' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='看图识物基础课程'
																											href='pd.jsp?id=20&_pp=13_403'
																											target='_blank'>看图识物基础课程</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=20&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='36' productName='吉他兴趣培养班'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct36' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=36&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgqoOXvAUo8OKfyQIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='吉他兴趣培养班' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='吉他兴趣培养班'
																											href='pd.jsp?id=36&_pp=13_403'
																											target='_blank'>吉他兴趣培养班</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=36&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='33' productName='基础声乐'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct33' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=33&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgiYOXvAUo5tr-qQcw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='基础声乐' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='基础声乐'
																											href='pd.jsp?id=33&_pp=13_403'
																											target='_blank'>基础声乐</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=33&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='32' productName='绘画技能提高'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct32' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='shoppingadd.jsp?id=32&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg8IKXvAUousCbvgIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='绘画技能提高' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='绘画技能提高'
																											href='pd.jsp?id=32&_pp=13_403'
																											target='_blank'>绘画技能提高</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=32&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='29' productName='国画入门课程'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct29' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=29&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgpoKXvAUonK2C2QQw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='国画入门课程' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='国画入门课程'
																											href='pd.jsp?id=29&_pp=13_403'
																											target='_blank'>国画入门课程</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=29&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='16' productName='益智游戏'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct16' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=16&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgk4CXvAUorrWgjwYw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='益智游戏' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='益智游戏'
																											href='pd.jsp?id=16&_pp=13_403'
																											target='_blank'>益智游戏</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=16&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='41' productName='简笔画入门'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct41' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='shoppingadd.jsp?id=41&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg_I6XvAUo4NnUygEw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='简笔画入门' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='简笔画入门'
																											href='pd.jsp?id=41&_pp=13_403'
																											target='_blank'>简笔画入门</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=41&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='30' productName='基础数学'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct30' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=30&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAguoKXvAUo07GJ4wcw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='基础数学' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='基础数学'
																											href='pd.jsp?id=30&_pp=13_403'
																											target='_blank'>基础数学</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=30&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='37' productName='国画介绍课程'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct37' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=37&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzIOXvAUovNKnsgIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='国画介绍课程' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='国画介绍课程'
																											href='pd.jsp?id=37&_pp=13_403'
																											target='_blank'>国画介绍课程</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=37&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='28' productName='钢琴入门课程'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct28' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='pd.jsp?id=28&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgkIKXvAUo0JitsQUw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='钢琴入门课程' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='钢琴入门课程'
																											href='pd.jsp?id=28&_pp=13_403'
																											target='_blank'>钢琴入门课程</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=28&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																								<div topClassName='top1' topSwitch='on'
																									productId='9' productName='白雪公主'
																									class='productMarqueeForm productMarqueeFormClear'
																									faiWidth='450' faiHeight='301'>
																									<div id='m403marqueeProduct9' class='imgDiv'
																										style='width: 226px; height: 226px;'>
																										<table cellpadding='0' cellspacing='0'>
																											<tr>
																												<td style='overflow: hidden;'
																													valign='middle' align='center'><a
																													hidefocus='true'
																													href='shoppingadd.jsp?id=9&_pp=13_403'
																													target='_blank'> <img
																														src='http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAglv2WvAUopYWG7wIw9AM4zwI!450x450.jpg'
																														style='width: 450px; height: 301px;'
																														alt='白雪公主' title='' />
																												</a></td>
																											</tr>
																										</table>
																									</div>
																									<div
																										class='propDiv productName productName_C    fourth_ProductName  '
																										style=''>
																										<a hidefocus='true' title='白雪公主'
																											href='pd.jsp?id=9&_pp=13_403' target='_blank'>白雪公主</a>
																									</div>
																									<div
																										class='productName_C propDiv   fourth_Param '>
																										<span class='propName'>编号：</span> <span
																											class='propValue'></span>
																									</div>
																									<div class='propDiv'
																										style='width: 100%; display: inline-block; border-bottom: 1px solid #e1e1e1; height: 35px; padding: 0; position: relative;'>
																										<div class='fourth_Pricepanel g_stress'
																											style='text-align: left; display: inline-block; float: left;'>
																											￥<span class='fourth_Price'>0</span>.00<span
																												class='fourth_Marketprice'>￥0.00</span>
																										</div>
																										<div
																											style='display: inline-block; width: 40%; position: absolute; right: 0;'>
																											<a hidefocus='true'
																												class='fourth_mallBuy fk-mallBuy'
																												href='pd.jsp?id=9&_pp=13_403'
																												target='_blank'> <span>购买</span>
																											</a>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																			<td class='formMiddleRight formMiddleRight403'></td>
																		</tr>
																	</table>
																	<table class='formBottom formBottom403' cellpadding='0'
																		cellspacing='0'>
																		<tr>
																			<td class='left left403'></td>
																			<td class='center center403'></td>
																			<td class='right right403'></td>
																		</tr>
																	</table>
																	<div class='clearfloat clearfloat403'></div>
																</div>


															</div>
															<div class="containerFormsLeftBottom"></div>
														</td>

														<td valign="top" id="containerFormsCenter"
															class="containerFormsCenter">

															<div id="centerTopForms"
																class="column forms mainForms centerTopForms">
																<div id='module23' _indexClass='formIndex1'
																	class='form form23 formIndex1 formStyle57 fk_bannerStyle0'
																	title='' style='' _side='0' _inTab='0' _inMulMCol='0'
																	_inFullmeasure='0' _autoHeight='1' _global='false'
																	_independent='false'>
																	<table class='formTop formTop23' cellpadding='0'
																		cellspacing='0'>
																		<tr>
																			<td class='left'></td>
																			<td class='center'></td>
																			<td class='right'></td>
																		</tr>
																	</table>
																	<table class='formBanner formBanner23' cellpadding='0'
																		cellspacing='0'>
																		<tr>
																			<td class='left left23'></td>
																			<td class='center center23' valign='top'>
																				<table cellpadding='0' cellspacing='0'
																					class='formBannerTitle formBannerTitle23'>
																					<tr>
																						<td class='titleLeft titleLeft23' valign='top'>
																						</td>
																						<td class='titleCenter titleCenter23' valign='top'>
																							<div class='titleText titleText23'>
																								<span class='fk_mainTitle mainTitle23'>购物车</span>
																							</div>
																						</td>
																						<td class='titleRight titleRight23' valign='top'>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td class='right right23'></td>
																		</tr>
																	</table>
																	<table class='formMiddle formMiddle23' style=''
																		cellpadding='0' cellspacing='0'>
																		<tr>
																			<td class='formMiddleLeft formMiddleLeft23'></td>
																			<td class='formMiddleCenter formMiddleCenter23'
																				valign='top'>
																				<div class='formMiddleContent formMiddleContent23  '
																					tabStyle='0'>
																					<div class='mallCart J_mallCart'>
																						<div class='cartMsg g_tip' style='display: none'>
																						</div>
																						<div class='cartEmpty'>
																							<div class='cartEmptyContent'>
																								<div class='cartEmptyIcon'></div>
																								<div style='margin-bottom: 10px;'>您的购物车内暂时没有任何产品。</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																			<td class='formMiddleRight formMiddleRight23'></td>
																		</tr>
																	</table>
																	<table class='formBottom formBottom23' cellpadding='0'
																		cellspacing='0'>
																		<tr>
																			<td class='left left23'></td>
																			<td class='center center23'></td>
																			<td class='right right23'></td>
																		</tr>
																	</table>
																	<div class='clearfloat clearfloat23'></div>
																</div>


															</div>
															<div
																class="containerFormsCenterMiddle J_containerFormsCenterMiddle">
																<div id="middleLeftForms"
																	class="column forms mainForms middleLeftForms"
																	style='display: none'></div>
																<div id="middleRightForms"
																	class="column forms mainForms middleRightForms"
																	style='display: none'></div>
																<div class="clearfloat"></div>
															</div>
															<div id="centerBottomForms"
																class="column forms mainForms centerBottomForms"
																style='display: none'></div>
														</td>

														<td valign="top" id="containerFormsRight"
															class="containerFormsRight" style='display: none'>
															<div class="containerFormsRightTop"></div>
															<div id="rightForms"
																class="column forms sideForms rightForms"></div>
															<div class="containerFormsRightBottom"></div>
														</td>
													</tr>
												</table>

												<div id="bottomForms"
													class="column forms mainForms bottomForms"
													style='display: none'></div>

												<div id="containerPlaceholder" class="containerPlaceholder"></div>

											</div>

											<div id="containerMiddleCenterBottom"
												class="containerMiddleCenterBottom"></div>

										</td>

										<td id="containerMiddleRight" class="containerMiddleRight"></td>
									</tr>
								</table>

								<table class="containerBottom" cellpadding='0' cellspacing='0'>
									<tr valign='top'>
										<td class="left"></td>
										<td class="center"></td>
										<td class="right"></td>
									</tr>
								</table>
							</div>

						</div>
					</td>
				</tr>
			</table>

			<div id="fullmeasureBottomForms"
				class="fullmeasureContainer forms sideForms fullmeasureForms fullmeasureBottomForms"
				style='display: none'>

				<wbr style='display:none;' />
			</div>

			<table class="absBottomTable" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<div id="absBottomForms" class="forms sideForms absForms">
							<div style="position: absolute;"></div>
							<!-- for ie6 -->

						</div>
					</td>
				</tr>
			</table>

			<table id="webFooterTable" class="webFooterTable" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center" valign="top">

						<div id="webFooter" class="webFooter">
					</td>
				</tr>
			</table>

			<div class="clearfloat"></div>
		</div>
	</div>



	<div class="floatLeftTop">
		<div id="floatLeftTopForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div class="floatRightTop">
		<div id="floatRightTopForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div class="floatLeftBottom">
		<div id="floatLeftBottomForms" class="forms sideForms floatForms">

		</div>
	</div>
	<div class="floatRightBottom">
		<div id="floatRightBottomForms" class="forms sideForms floatForms">

		</div>
	</div>







	<div id="bgMusic" class="bgMusic"></div>

	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/jquery/jquery-core.min.js?v=201601261749"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/jquery/jquery-mousewheel.min.js?v=201408111734"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/fai.min.js?v=201606221136"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/jquery/jquery-ui-core.min.js?v=201607121758"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/site.min.js?v=201607122017"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/locale/2052.min.js?v=201605231801"></script>
	<script type="text/javascript"
		src="http://1.ss.faisys.com/js/comm/ZeroClipboard/ZeroClipboard.min.js?v=201212061014"></script>









	<script type="text/javascript">



function showYuanDanWindow(){
	var hasShowYuanDanLuckyGuy = $.cookie("hasShowYuanDanLuckyGuy",{path:"/"});
	var _hasGetYuanDanLuckyGuy_ = $.cookie("_hasGetYuanDanLuckyGuy_",{path:"/"});
	var _openbigImg = false;
	
	if(_openbigImg == true){
		if(hasShowYuanDanLuckyGuy == 'true' || _hasGetYuanDanLuckyGuy_ != 'true' ){
			Site.isShowThreeDaysLuckyGuy = "true";
			Site.isTenMinutes = 'true';
			$.cookie("hasShowYuanDanLuckyGuy",false,{path:"/"});
			Site.drawLottery();
		}else{
		
			Site.sendResult2();	
		}
	}	
}



	var fk_sale = new Object();	
	fk_sale.cid = 10308282;
	fk_sale.siteVer = 10;
	fk_sale.popupWindowSiteVer = 10;	
	fk_sale.isLuckyGuyFlag = false;
	fk_sale.popupWindowEndYear = 2016;
	fk_sale.popupWindowEndMonth = 6;
	fk_sale.popupWindowEndDay = 30;
	fk_sale.popupWindowDays = -12;
	fk_sale.popupWindowMs = -1115934340;
	fk_sale.signupDays = 1;
	fk_sale.signupMinutes = 2163;
	fk_sale.popupWindowEndSignupHours = 720.0;
	fk_sale.url = 'http://www.faisco.cn/portal.jsp#appId=shop';	
	fk_sale.showDomainWindowFlag = false;
	fk_sale.cacct = 'dadaedu';
	fk_sale.imgBigSrc = 'http://jz.faisys.com/image/pro/20160101/salesPromotion.jpg?v=201601251450';
	fk_sale.imgBigBtn = 'http://jz.faisys.com/image/pro/20160101/button.png?v=201601201732';
	fk_sale.imgClose = 'http://jz.faisys.com/image/pro/20160101/close2.png?v=201601201731';
	fk_sale.siteFirstLogin = false;
	fk_sale.isShowAdvertisementWindowThreeMinute = false;
	fk_sale.textUrl = 'http://www.faisco.cn/portal.jsp#appId=shop';
	fk_sale.domainImgBigBg = 'http://jz.faisys.com/image/pro/20160101/domainSearchImg.png';
	fk_sale.domainImgClose = 'http://jz.faisys.com/image/pro/20160101/close.png?v=201601181937';
	fk_sale.siteBizBigBg = 'http://jz.faisys.com/image/pro/20160601/seobg.png?v=201601181937';
	fk_sale.showSiteBizWindow = false;
	fk_sale.showSitePopWindow = false;


</script>





	<script type="text/javascript">

	var faiscoAd = $.cookie('faiscoAd',{path:'/'});
	if(false){
		$(".siteAdvertisement_box").show();
		Site.logDog(200004,15);
	}else if(!false && !false&& 36 >= 24 && false){
		Site.logDog(200004,18);
		$(".siteAdvertisement_box").show();
	}else if(!false &&  36 >= 24 && false){
		Site.logDog(200004,18);
		$(".siteAdvertisement_box").show();
	}else if(!false &&  36 >= 24 && false){
		Site.logDog(200004,16);
		$(".siteAdvertisement_box").show();
	}else if( true && faiscoAd !== "false"){
		if(false){
			Site.logDog(200004,15);	
		}
		$(".siteAdvertisement_box").show();			
	}



</script>


	<link type='text/css'
		href=http://2.ss.faisys.com/css/fontsIco.min.css?v=201606221537
		rel='stylesheet' />






	<script type="text/javascript">
// 为了避免用户误操作，在域名结尾输入多余字符导致cookie失效问题，这里校验一下浏览器的host是否与后台拿到的host一致
//if (window.location.host != 'www.dadaedu.icoc.me') { window.location.href = 'http://' + 'www.dadaedu.icoc.me'; }
//console.log(window.location.host.lastIndexOf("."));

var _faiAjax = function(){
	//for regexp
	var r = /\?/;
	var _o = {
		type:"get",
		url:"",
		data:"",
		error:function(){},
		success:function(){}
	};
	var _sendRequest=function(o) {
		var xmlhttp = null;
		//init option code
		o.type = o.type || _o.type;
		o.url = o.url || _o.url;
		o.data = o.data || _o.data;
		o.error = o.error || _o.error;
		o.success = o.success || _o.success;
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp=new XMLHttpRequest();
		}else{
			// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		//the instructions param takes the form of an eval statement
		if(o.type != "post") {
			o.url += ( this.r.test( o.url ) ? "&" : "?" ) + o.data;
			xmlhttp.open("GET", o.url, true);
				xmlhttp.onreadystatechange=function() {
				if (xmlhttp.readyState==4 && xmlhttp.status==200) {
					o.success( xmlhttp.responseText );
				}else if( o.error ){
					o.error();
				}
			}
			xmlhttp.send();
		} else {
			xmlhttp.open("POST", o.url, true);
			//Send the proper header information along with the request
			xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
			xmlhttp.onreadystatechange=function() {
				if (xmlhttp.readyState==4 && xmlhttp.status==200) {
					o.success( xmlhttp.responseText );
				}else{
					o.error();
				}
			}
			xmlhttp.send(o.data);
		}
	}
	return {
		ajax:function(option){
			try {
				//此次调用的错误不让抛出给window。防止函数重入
				_sendRequest(option);	
			}catch(e){
				//alert(e);
			}
		}
	};
}();
var _jsErrCahche = [];
window.onerror = function(sMsg,sUrl,sLine){
	if (typeof Site == 'undefined') {
		alert('您的网页未加载完成，请尝试按“CTRL+功能键F5”重新加载。');
	}
	if( sLine < 1 || typeof sMsg != 'string' || sMsg.length < 1 ){
		return;
	}
	
	var log = "Error:" + sMsg + ";Line:" + sLine + ";Url:" + sUrl;
	var alertLog = "Error:"+sMsg+"\n" + "Line:" + sLine + "\n" + "Url:" + sUrl + "\n";
	var encodeUrl = function (url){
		return typeof url === "undefined" ? "" : encodeURIComponent(url);
	};
	
	var ajax = true;
	var obj = { 'm' : sMsg, 'u' : sUrl, 'l' : sLine };
	for( var i = 0; i < _jsErrCahche.length; i ++ ){
		if( _jsErrCahche[i].m == obj.m && _jsErrCahche[i].u == obj.u && _jsErrCahche[i].l == obj.l  ){
			ajax = false;
			break;
		}
	}
	
	if( ajax ){
		_jsErrCahche.push( obj );
		_faiAjax.ajax({
			type	: "post",
			url		: "ajax/logJsErr_h.jsp?cmd=jsErr",
			data	: 'msg='+ encodeUrl(log)
		});
	}
	if(false){
		alert( alertLog );
	}
};
Fai.top = window;
var bgmCloseToOpen = false;
var _debug = false;
var _devMode = false;
var _colOtherStyleData = {"independentList":[],"y":0,"h":0,"layout4Width":0,"layout5Width":0};						// 当前页面的数据    
var _templateOtherStyleData = {"independentList":[],"h":875,"y":0,"layout4Width":0,"layout5Width":0};						// 全局的数据
$(function() {
	
	Site.changeTheLogoSize();
	Site.showOrHideMailBox();
	

    	
	var hasLoginSite = $.cookie('hasLoginSite');
	if(hasLoginSite == "true" && hasLoginSite != null){	
		$.cookie('hasLoginSite','false', { expires: 1, path: '/' } );
		Site.changeAdmHref('dadaedu','faisco.cn');
	}
	if(false){
		Fai.ing("",true);
	}
	//topBarMember 
	
	
	// 管理态下, QQ/微博登陆 禁止登陆
	if( _manageMode ) {
		$('#memberBar .l_Btn').click(function(){
			Fai.ing('您目前处于网站管理状态，请先点击网站右上方的“退出”后再登录会员。', true);
		});
		//绑定放大镜遮罩效果事件
		Site.bindEventToOverLayer();		
	}
	
	
	// 绑定退出事件
	$(window).bind("beforeunload", function(e) { 
		 
			if(bgmCloseToOpen){
				Site.bgmFlushContinue();
			}	
	
	
		
	
	
	
	});
	Site.initTemplateLayout(1, true, false );
	// spider统计
	



	
	// ajax统计
	Site.total({colId:13, pdId:-1, ndId:-1, sc:0, rf:"http://www.dadaedu.icoc.me/pd.jsp?id=43&_pp=13_403"});
	//前端性能数据上报
	Site.report();
	//保留旧用户的初始化版式区域4 和区域5 中，区域4的padding-right空间
	Site.colLayout45Width();

	$('#siteTipsMarquee').marquee({ yScroll:'bottom' });Site.hoverChangeImage();Site.hoverStyle();
Site.initModuleProductSearch(314);


Site.initBanner({"_open":true,"data":[{"title":"","desc":"","imgWidth":1900,"imgHeight":400,"href":"http://www.baidu.com","target":"_blank","src":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":1900,"imgHeight":400,"href":"http://www.baidu.com","target":"_blank","src":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM.jpg","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":1900,"imgHeight":400,"href":"http://www.baidu.com","target":"_blank","src":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM.png","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":1900,"imgHeight":400,"href":"http://www.baidu.com","target":"_blank","src":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM.jpg","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":1900,"imgHeight":400,"href":"http://www.baidu.com","target":"_blank","src":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM.jpg","edgeLeft":"","edgeRight":""}],"width":1900,"height":400,"playTime":4000,"animateTime":1500,"from":"banner","btnType":0,"wideScreen":false}, {"_open":false}, 4);
Fai.top.Product403 = {};
Fai.top.Product403.ieOpt = {"effType":1,"borderType":false,"backgroundType":false,"wordType":false,"borderColor":"","borderWidth":1,"borderStyle":1,"fullmaskBackgroundColor":"","fullmaskBackgroundOpacity":80,"fullmaskWordResize":12,"fullmaskWordStyle":"","fullmaskWordColor":"","style":3};
Fai.top.Product403.tgOpt = {"mallShowBuy":true,"productSelect":true,"targetParent":"productMarqueeForm","target":"imgDiv","paramLayoutType":4,"propNameShow":true,"productNameShow":true,"productTextCenter":true,"productNameWordWrap":false};
Fai.top.Product403.callbackArgs = [{"m403marqueeProduct39":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"英文字母学习","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(39,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct43":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"2.0\"},{\"propName\":\"市场价\",\"propValue\":\"300.0\"}]","productName":"涂鸦上色进阶","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(43,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct25":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"3.0\"},{\"propName\":\"市场价\",\"propValue\":\"200.0\"}]","productName":"涂鸦上色基础","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(25,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct31":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"小提琴兴趣培养班","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(31,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct40":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"算数能力培养","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(40,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct44":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"识字基础课程","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(44,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct45":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"零基础认识数字","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(45,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct38":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"乐理入门","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(38,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct42":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"空间思维训练","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(42,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct20":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"看图识物基础课程","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(20,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct36":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"吉他兴趣培养班","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(36,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct33":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"基础声乐","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(33,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct32":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"绘画技能提高","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(32,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct29":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"国画入门课程","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(29,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct16":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"益智游戏","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(16,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct41":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"简笔画入门","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(41,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct30":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"基础数学","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(30,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct37":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"国画介绍课程","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(37,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct28":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"钢琴入门课程","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(28,\"undefined\",\"_pp=13_403\"  );return false;"},{"m403marqueeProduct9":"[{\"propName\":\"编号\",\"propValue\":\"\"},{\"propName\":\"价格\",\"propValue\":\"0.0\"},{\"propName\":\"市场价\",\"propValue\":\"0.0\"}]","productName":"白雪公主","productBuyBtnText":"购买","productBuyBtnClick":"Site.mallBuy(9,\"undefined\",\"_pp=13_403\"  );return false;"}];
Fai.top.Product403.paramLayoutType = 4;
Site.loadProductMarquee(403, true, false, 3);
Fai.top.changeMarquee403 = function(){Fai.stopInterval('marquee403');Site.loadProductMarquee(403, true, false, 3);};

Site.initContentSplitLine(23, {"y":0,"s":0,"w":1});


	


	Site.initPage();	// 这个要放在最后，因为模块组初始化时会把一些模块隐藏，导致没有高度，所以要放最后执行

	
	
	
	setTimeout("afterModuleLoaded()", 0);

	if( _manageMode ) {
	
		Site.initManagePage();
		
		
	}

	
	

	Site.triggerGobalEvent("siteReadyLoad");
});

function afterModuleLoaded() {
	Site.initPage2();
	
	Site.mallCartInit(_colId);
	Site.mobiWebInit();
	
	
	
	
} // afterModuleLoaded end

var _lcid = 2052;
var _userHostName = 'www.dadaedu.icoc.me';
var _siteDomain = 'http://www.dadaedu.icoc.me';
var _signupDays = 1;
var _signupHours = 36;
var _cid = 10308282;
var _resRoot = 'http://0.ss.faisys.com';
var _colId = 13;
var _extId = 0;
var _fromColId = -1;
var _designAuth = false;
var _manageMode = false;
var _oem = false;
var _siteAuth = 0;
var _adm = false;
var _siteVer = 10;
var _manageStatus = false;

var nav2SubMenu=[];
var nav107SubMenu=[];
var nav108SubMenu=[];
var nav105SubMenu=[];
var nav13SubMenu=[];
var nav110SubMenu=[];
var nav9SubMenu=[];

var _customBackgroundData = {"styleDefault":true,"s":true,"h":false,"r":3,"o":"","sw":-1,"e":0,"wbh":-1,"wbw":-1,"clw":-1,"crw":-1,"id":"","p":"","bBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cmBg":{"y":0,"r":3,"f":"","p":"","c":"#000"}};          //自定义的数据
var _templateBackgroundData = {"id":"","bBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"cmBg":{"y":0,"r":3,"f":"","p":"","c":"#000"},"sw":1200,"o":"#fff","s":true,"h":false,"r":3,"e":0,"wbh":-1,"wbw":-1,"clw":-1,"crw":-1,"p":""};// 模版的数据
var _useTemplateBanner = true;				// 是否使用全局模版
var _templateBannerData = {"ce":{},"pl":0,"l":[{"i":"ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM.jpg","w":1900,"h":400,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM!100x100.jpg"},{"i":"ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM.jpg","w":1900,"h":400,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM!100x100.jpg"},{"i":"ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM.jpg","w":1900,"h":400,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM!100x100.jpg"},{"i":"ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM","p":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM.png","w":1900,"h":400,"tp":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM!100x100.png"},{"i":"ABUIABACGAAgzeeWvAUootHygwcw7A44kAM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg","w":1900,"h":400,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM!100x100.jpg"},{"i":"ABUIABACGAAgmeeWvAUoqry3tQcwwAw4kAM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgmeeWvAUoqry3tQcwwAw4kAM.jpg","w":1600,"h":400,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgmeeWvAUoqry3tQcwwAw4kAM!100x100.jpg"},{"i":"ABUIABACGAAg5uaWvAUo4MHI7gEwiA44wgM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg5uaWvAUo4MHI7gEwiA44wgM.jpg","w":1800,"h":450,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg5uaWvAUo4MHI7gEwiA44wgM!100x100.jpg"},{"i":"ABUIABACGAAg__WWvAUonf6vvQcw4BI42AQ","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg__WWvAUonf6vvQcw4BI42AQ.jpg","w":2400,"h":600,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg__WWvAUonf6vvQcw4BI42AQ!100x100.jpg"},{"i":"ABUIABACGAAgw6SRvAUo4MrE_gEwjQs4sQM","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgw6SRvAUo4MrE_gEwjQs4sQM.jpg","w":1421,"h":433,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgw6SRvAUo4MrE_gEwjQs4sQM!100x100.jpg"},{"i":"ABUIABAEGAAg9oDkswUoxtjdyAYwgA84jgM","p":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg9oDkswUoxtjdyAYwgA84jgM.png","w":1920,"h":398,"tp":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg9oDkswUoxtjdyAYwgA84jgM!100x100.png"},{"i":"ABUIABAEGAAg8eKWvAUo7NHYHzDsCTipAg","p":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg8eKWvAUo7NHYHzDsCTipAg.png","w":1260,"h":297,"tp":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg8eKWvAUo7NHYHzDsCTipAg!100x100.png"},{"i":"ABUIABACGAAghOOWvAUotPalmwYw7Qk4qQI","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAghOOWvAUotPalmwYw7Qk4qQI.jpg","w":1261,"h":297,"tp":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAghOOWvAUotPalmwYw7Qk4qQI!100x100.jpg"}],"n":[{"t":1,"i":"ABUIABACGAAgzeeWvAUootHygwcw7A44kAM","e":1,"u":"AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t","jType":103,"jName":"http://www.baidu.com","jUrl":"http://www.baidu.com","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg","w":1900,"h":400,"el":"","er":""},{"t":1,"i":"ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM","e":1,"u":"AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t","jType":103,"jName":"http://www.baidu.com","jUrl":"http://www.baidu.com","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM.jpg","w":1900,"h":400,"el":"","er":""},{"t":1,"i":"ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM","e":1,"u":"AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t","jType":103,"jName":"http://www.baidu.com","jUrl":"http://www.baidu.com","p":"http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM.png","w":1900,"h":400,"el":"","er":""},{"t":1,"i":"ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM","e":1,"u":"AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t","jType":103,"jName":"http://www.baidu.com","jUrl":"http://www.baidu.com","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM.jpg","w":1900,"h":400,"el":"","er":""},{"t":1,"i":"ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM","e":1,"u":"AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t","jType":103,"jName":"http://www.baidu.com","jUrl":"http://www.baidu.com","p":"http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM.jpg","w":1900,"h":400,"el":"","er":""}],"s":4,"c":5,"bt":0,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"f":{},"at":0,"ws":false};		// 模版的数据
var _pageBannerData = {"s":0,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"pl":0,"bt":1,"l":[],"f":{},"ce":{},"n":[],"c":3,"at":0,"ws":false};					// 当前页面的自定义数据（页面独立样式设置）
var _bannerData = _templateBannerData;

var _mallOpen = true;


var _navStyleChanged = 0;
var _navItemOnCkOpen = false;					  // 有下级菜单不可点击

var _navStyleData = {"no":true,"s":0,"ns":{"w":889,"h":61},"cs":{"w":889,"h":61},"np":{},"ncp":{"y":1,"t":41,"r":-1,"b":-1,"l":365,"hl":826,"ht":0},"cp":{"y":0,"t":-1,"l":-1},"nis":{"w":125,"h":61},"gt":{"y":1,"f":"微软雅黑","s":16,"w":0,"c":"#6f6f6f"},"ht":{"y":1,"c":"#e70c72"},"nb":{"y":1,"c":"#000","f":"","r":0,"p":""},"cb":{"c":"#000","f":"","r":0,"p":"","y":0},"nib":{"c":"#000","r":0,"f":"","p":"","y":0},"nihb":{"y":1,"c":"#000","r":0,"f":"","p":""},"niss":{"w":0,"h":0},"nisb":{"c":"#000","r":0,"f":"","p":"","y":0},"nsigt":{"f":"宋体","s":12,"w":0,"c":"#000","y":0},"nsiht":{"c":"#000","y":0},"nsis":{"w":-1,"h":-1},"nsib":{"c":"#000","r":0,"f":"","p":"","y":0},"nsihb":{"c":"#000","r":0,"f":"","p":"","y":0},"nsiho":0,"nmove":1,"v":2,"nsmt":{},"nsmb":{},"nrs":{"n":{"t":0},"c":{"t":0},"i":{"t":0},"smt":{"t":0},"smb":{"t":0},"si":{"t":0},"is":{"t":0},"sis":{"t":0}},"nsw":{"n":{"t":0},"c":{"t":0},"i":{"t":0},"sm":{"t":0},"si":{"t":0},"is":{"t":0},"sis":{"t":0}},"nbr":{"n":{"t":0},"i":{"t":0},"sm":{"t":0},"si":{"t":0},"is":{"t":0},"sis":{"t":0}}};				      // 栏目导航样式
var _navHidden =false;                                  //true:隐藏；flase：显示
var _navPositionFixTop =  false;        		  // 导航栏固定到顶部
var _navHeightChange = true;						  //导航栏高度改变，逻辑分界点2015-08-21
var _siteDemo = false;



var _backToTop = false;
var _aid = 10308282;
var _cloneAid = 7980515;
var _templateLayout = 1;
var _webBannerHeight = -1;
var _isTemplateVersion2 = false;
var _uiMode= false;



</script>







	<script type="text/javascript">

var fk_old_onload = window.onload;
window.onload = function(){
		if(typeof fk_old_onload == "function"){
			fk_old_onload.apply(this, arguments);
		}
		
		Site.pageOnload();
		
		
		
		
};




	$LAB.script("http://1.ss.faisys.com/js/photoSlide.min.js?v=201605161742");
	$LAB.script("http://1.ss.faisys.com/js/imageEffect.min.js?v=201606131822")
		.wait(function () {
			jzUtils.trigger({
				"name": "ImageEffect.FUNC.BASIC.Init",
				"base":Site
			});
		});	


</script>

</body>
</html>


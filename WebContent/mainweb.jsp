<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="Dao.DADA.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//从session中获取user对象
	User user = new User();
	HttpSession session2 = request.getSession();
	user = (User) session2.getAttribute("currentUser");
	String userName = new String();
	String login = new String();
	if (user == null) {
		userName = "";//没有登录就提示登录
		login = "登录";
	} else {
		userName = user.getUserName();//登录过了就显示名字
		login = "注销";
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='images/icon.ico ' type=‘icon’ />
<title>大大学前教育视频网</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta name="renderer" content="webkit">


<meta name="mobile-agent" content="format=html5;url=images/title.jpg" />

<meta name="keywords" content="" />
<meta name="description" content="" />

<link rel='canonical' href='images/title.jpg'>
<link type="text/css"
	href="http://2.ss.faisys.com/css/base.min.css?v=201607122017"
	rel="stylesheet" />
<link type="text/css"
	href="http://2.ss.faisys.com/css/template/27001.min.css?v=201509111823"
	rel="stylesheet" id="templateFrame" class="templateFrameClass" />
<link type='text/css'
	href='http://2.ss.faisys.com/css/pattern3.min.css?v=201601181713'
	rel='stylesheet'>
<link type='text/css'
	href='http://2.ss.faisys.com/css/searchBoxStyle1.min.css?v=201605161742'
	rel='stylesheet'>

<style id='stylemodule'>
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

#module329 {
	height: 267px;
}

#module329 .contentLineIcon {
	*padding: 0;
}

#module329 .contentLineIcon {
	*width: 0;
}

#module319 {
	height: 262px;
}

#module319 {
	border: none;
}

#module319 {
	padding: 0px;
}

#module319 .formMiddle319 {
	border: none;
}

#module319 .formMiddle319 {
	padding: 0px;
}

#module319 .formMiddle319 .formMiddleCenter319 {
	border: none;
}

#module319 .formMiddle319 .formMiddleCenter319 {
	padding: 0px;
}

#module319 .formTop319 {
	display: none;
}

#module319 .formBottom319 {
	display: none;
}

#module319 .formMiddle319 .formMiddleLeft319 {
	display: none;
}

#module319 .formMiddle319 .formMiddleRight319 {
	display: none;
}

#module319 .formBanner319 {
	display: none;
}

#module319 .formMiddleContent319 {
	padding: 0px;
}

#module319 .formMiddleContent319 {
	margin-left: 0px;
}

#module319 .formMiddleContent319 {
	margin-right: 0px;
}

#module319 .formMiddleContent319 {
	margin-top: 0px;
}

#module319 .formMiddleContent319 {
	margin-bottom: 0px;
}

#module319 .contentLineIcon {
	*padding: 0;
}

#module319 .contentLineIcon {
	*width: 0;
}

#module319 {
	background: none;
}

#module319 .formMiddle319 {
	background: none;
}

#module319 .formMiddle319 .formMiddleCenter319 {
	background: none;
}

#module319 .formMiddleContent319 {
	background: none;
}

#module316 {
	border: none;
}

#module316 {
	padding: 0px;
}

#module316 .formMiddle316 {
	border: none;
}

#module316 .formMiddle316 {
	padding: 0px;
}

#module316 .formMiddle316 .formMiddleCenter316 {
	border: none;
}

#module316 .formMiddle316 .formMiddleCenter316 {
	padding: 0px;
}

#module316 .formTop316 {
	display: none;
}

#module316 .formBottom316 {
	display: none;
}

#module316 .formMiddle316 .formMiddleLeft316 {
	display: none;
}

#module316 .formMiddle316 .formMiddleRight316 {
	display: none;
}

#module316 .formBanner316 {
	display: none;
}

#module316 .formMiddleContent316 {
	padding: 0px;
}

#module316 .formMiddleContent316 {
	margin-left: 30px;
}

#module316 .formMiddleContent316 {
	margin-right: 10px;
}

#module316 .formMiddleContent316 {
	margin-top: 5px;
}

#module316 .formMiddleContent316 {
	margin-bottom: 5px;
}

#module316 .contentLineIcon {
	*padding: 0;
}

#module316 .contentLineIcon {
	*width: 0;
}

#module316 {
	background: none;
}

#module316 .formMiddle316 {
	background: #e70c72;
}

#module316 .formMiddle316 .formMiddleCenter316 {
	background: none;
}

#module316 .formMiddleContent316 {
	background: none;
}

#module325 {
	height: 262px;
}

#module325 {
	border: none;
}

#module325 {
	padding: 0px;
}

#module325 .formMiddle325 {
	border: none;
}

#module325 .formMiddle325 {
	padding: 0px;
}

#module325 .formMiddle325 .formMiddleCenter325 {
	border: none;
}

#module325 .formMiddle325 .formMiddleCenter325 {
	padding: 0px;
}

#module325 .formTop325 {
	display: none;
}

#module325 .formBottom325 {
	display: none;
}

#module325 .formMiddle325 .formMiddleLeft325 {
	display: none;
}

#module325 .formMiddle325 .formMiddleRight325 {
	display: none;
}

#module325 .formBanner325 {
	display: none;
}

#module325 .formMiddleContent325 {
	padding: 0px;
}

#module325 .formMiddleContent325 {
	margin-left: 0px;
}

#module325 .formMiddleContent325 {
	margin-right: 0px;
}

#module325 .formMiddleContent325 {
	margin-top: 20px;
}

#module325 .formMiddleContent325 {
	margin-bottom: 0px;
}

#module325 .contentLineIcon {
	*padding: 0;
}

#module325 .contentLineIcon {
	*width: 0;
}

#module325 {
	background: none;
}

#module325 .formMiddle325 {
	background: none;
}

#module325 .formMiddle325 .formMiddleCenter325 {
	background: none;
}

#module325 .formMiddleContent325 {
	background: none;
}

#module325 #formTabButtonList325 .formTabMiddle {
	font-family: 微软雅黑;
}

#module325 #formTabButtonList325 .formTabMiddle {
	color: #a5a5a5;
}

#module325 #formTabButtonList325 div.formTabMiddleHover {
	color: #e70c72 !important;
}

#module325 #formTabButtonList325 .formTabMiddle {
	font-size: 16px;
}

#module325 #formTabButtonList325 {
	height: 45px;
}

#module325 #formTabButtonList325 {
	overflow: hidden;
}

#module325 .formTabButtonTopLeft {
	background: none;
}

#module325 .formTabButtonTopCenter {
	background: none;
}

#module325 .formTabButtonTopRight {
	display: none;
}

#module325 .formTabButtonList {
	background: none;
}

#module325 .formTabButtonList {
	border-bottom: none;
}

#module325 .formTabButtonTopCenter {
	border-bottom: none;
}

#module325 .titleTable {
	border: 0;
}

#module325 .titleTable {
	background: none;
}

#module325 #formTabContent325 {
	border: none;
}

#module325 .formMiddleContent325 {
	border: none;
}

#module325 #formTabButtonList325 {
	padding-left: 0px;
}

#module325 #formTabButtonList325 {
	width: 100%;
}

#module325 #formTabButtonList325 {
	float: none;
}

#module325 .formTabButton {
	overflow: hidden;
}

#module325 .formTabButton {
	white-space: nowrap;
}

#module325 #formTabButtonList325 .formTabButton {
	margin-top: 0px;
}

#module325 #formTabButtonList325 .formTabButton {
	overflow: hidden;
}

#module325 #formTabButtonList325 .formTabButton {
	text-align: center;
}

#module325 #formTabButtonList325 .formTabMiddle {
	width: 58px;
}

#module325 .formTabMiddle {
	text-align: center;
}

#module325 .formTabMiddle {
	overflow: hidden;
}

#module325 #formTabButtonList325 .formTabLeft {
	background: none;
}

#module325 #formTabButtonList325 .formTabMiddle {
	background: none;
}

#module325 #formTabButtonList325 .formTabRight {
	background: none;
}

#module325 #formTabButtonList325 .formTabLeftHover {
	background: none !important;
}

#module325 #formTabButtonList325 .formTabMiddleHover {
	background: none !important;
}

#module325 #formTabButtonList325 .formTabMiddleHover {
	border: none !important;
}

#module325 #formTabButtonList325 .formTabRightHover {
	background: none !important;
}

#module325 #formTabButtonList325 .formTabButtonHover {
	background: none !important;
}

#module325 .formTabButton {
	margin-right: 1px;
}

#module322 {
	border: none;
}

#module322 {
	padding: 0px;
}

#module322 .formMiddle322 {
	border: none;
}

#module322 .formMiddle322 {
	padding: 0px;
}

#module322 .formMiddle322 .formMiddleCenter322 {
	border: none;
}

#module322 .formMiddle322 .formMiddleCenter322 {
	padding: 0px;
}

#module322 .formTop322 {
	display: none;
}

#module322 .formBottom322 {
	display: none;
}

#module322 .formMiddle322 .formMiddleLeft322 {
	display: none;
}

#module322 .formMiddle322 .formMiddleRight322 {
	display: none;
}

#module322 .formBanner322 {
	display: none;
}

#module322 .contentLineIcon {
	*padding: 0;
}

#module322 .contentLineIcon {
	*width: 0;
}

#module323 {
	border: none;
}

#module323 {
	padding: 0px;
}

#module323 .formMiddle323 {
	border: none;
}

#module323 .formMiddle323 {
	padding: 0px;
}

#module323 .formMiddle323 .formMiddleCenter323 {
	border: none;
}

#module323 .formMiddle323 .formMiddleCenter323 {
	padding: 0px;
}

#module323 .formTop323 {
	display: none;
}

#module323 .formBottom323 {
	display: none;
}

#module323 .formMiddle323 .formMiddleLeft323 {
	display: none;
}

#module323 .formMiddle323 .formMiddleRight323 {
	display: none;
}

#module323 .formBanner323 {
	display: none;
}

#module323 .contentLineIcon {
	*padding: 0;
}

#module323 .contentLineIcon {
	*width: 0;
}

#module324 {
	border: none;
}

#module324 {
	padding: 0px;
}

#module324 .formMiddle324 {
	border: none;
}

#module324 .formMiddle324 {
	padding: 0px;
}

#module324 .formMiddle324 .formMiddleCenter324 {
	border: none;
}

#module324 .formMiddle324 .formMiddleCenter324 {
	padding: 0px;
}

#module324 .formTop324 {
	display: none;
}

#module324 .formBottom324 {
	display: none;
}

#module324 .formMiddle324 .formMiddleLeft324 {
	display: none;
}

#module324 .formMiddle324 .formMiddleRight324 {
	display: none;
}

#module324 .formBanner324 {
	display: none;
}

#module324 .contentLineIcon {
	*padding: 0;
}

#module324 .contentLineIcon {
	*width: 0;
}

#module318 {
	border: none;
}

#module318 {
	padding: 0px;
}

#module318 .formMiddle318 {
	border: none;
}

#module318 .formMiddle318 {
	padding: 0px;
}

#module318 .formMiddle318 .formMiddleCenter318 {
	border: none;
}

#module318 .formMiddle318 .formMiddleCenter318 {
	padding: 0px;
}

#module318 .formTop318 {
	display: none;
}

#module318 .formBottom318 {
	display: none;
}

#module318 .formMiddle318 .formMiddleLeft318 {
	display: none;
}

#module318 .formMiddle318 .formMiddleRight318 {
	display: none;
}

#module318 .formBanner318 {
	display: none;
}

#module318 .contentLineIcon {
	*padding: 0;
}

#module318 .contentLineIcon {
	*width: 0;
}

#module320 {
	border: none;
}

#module320 {
	padding: 0px;
}

#module320 .formMiddle320 {
	border: none;
}

#module320 .formMiddle320 {
	padding: 0px;
}

#module320 .formMiddle320 .formMiddleCenter320 {
	border: none;
}

#module320 .formMiddle320 .formMiddleCenter320 {
	padding: 0px;
}

#module320 .formTop320 {
	display: none;
}

#module320 .formBottom320 {
	display: none;
}

#module320 .formMiddle320 .formMiddleLeft320 {
	display: none;
}

#module320 .formMiddle320 .formMiddleRight320 {
	display: none;
}

#module320 .formBanner320 {
	display: none;
}

#module320 .contentLineIcon {
	*padding: 0;
}

#module320 .contentLineIcon {
	*width: 0;
}

#module321 {
	border: none;
}

#module321 {
	padding: 0px;
}

#module321 .formMiddle321 {
	border: none;
}

#module321 .formMiddle321 {
	padding: 0px;
}

#module321 .formMiddle321 .formMiddleCenter321 {
	border: none;
}

#module321 .formMiddle321 .formMiddleCenter321 {
	padding: 0px;
}

#module321 .formTop321 {
	display: none;
}

#module321 .formBottom321 {
	display: none;
}

#module321 .formMiddle321 .formMiddleLeft321 {
	display: none;
}

#module321 .formMiddle321 .formMiddleRight321 {
	display: none;
}

#module321 .formBanner321 {
	display: none;
}

#module321 .contentLineIcon {
	*padding: 0;
}

#module321 .contentLineIcon {
	*width: 0;
}

#module345 {
	height: 596px;
}

#module345 .contentLineIcon {
	*padding: 0;
}

#module345 .contentLineIcon {
	*width: 0;
}

#module336 {
	height: 558px;
}

#module336 {
	border: none;
}

#module336 {
	padding: 0px;
}

#module336 .formMiddle336 {
	border: none;
}

#module336 .formMiddle336 {
	padding: 0px;
}

#module336 .formMiddle336 .formMiddleCenter336 {
	border: none;
}

#module336 .formMiddle336 .formMiddleCenter336 {
	padding: 0px;
}

#module336 .formTop336 {
	display: none;
}

#module336 .formBottom336 {
	display: none;
}

#module336 .formMiddle336 .formMiddleLeft336 {
	display: none;
}

#module336 .formMiddle336 .formMiddleRight336 {
	display: none;
}

#module336 .formBanner336 {
	display: none;
}

#module336 .formMiddleContent336 {
	padding: 0px;
}

#module336 .formMiddleContent336 {
	margin-left: 0px;
}

#module336 .formMiddleContent336 {
	margin-right: 0px;
}

#module336 .formMiddleContent336 {
	margin-top: 0px;
}

#module336 .formMiddleContent336 {
	margin-bottom: 0px;
}

#module336 .contentLineIcon {
	*padding: 0;
}

#module336 .contentLineIcon {
	*width: 0;
}

#module336 {
	background: none;
}

#module336 .formMiddle336 {
	background: none;
}

#module336 .formMiddle336 .formMiddleCenter336 {
	background: none;
}

#module336 .formMiddleContent336 {
	background: none;
}

#module344 {
	border: none;
}

#module344 {
	padding: 0px;
}

#module344 .formMiddle344 {
	border: none;
}

#module344 .formMiddle344 {
	padding: 0px;
}

#module344 .formMiddle344 .formMiddleCenter344 {
	border: none;
}

#module344 .formMiddle344 .formMiddleCenter344 {
	padding: 0px;
}

#module344 .formTop344 {
	display: none;
}

#module344 .formBottom344 {
	display: none;
}

#module344 .formMiddle344 .formMiddleLeft344 {
	display: none;
}

#module344 .formMiddle344 .formMiddleRight344 {
	display: none;
}

#module344 .formBanner344 {
	display: none;
}

#module344 .formMiddleContent344 {
	padding: 0px;
}

#module344 .formMiddleContent344 {
	margin-left: -5px;
}

#module344 .formMiddleContent344 {
	margin-right: 10px;
}

#module344 .formMiddleContent344 {
	margin-top: -5px;
}

#module344 .formMiddleContent344 {
	margin-bottom: -60px;
}

#module344 .contentLineIcon {
	*padding: 0;
}

#module344 .contentLineIcon {
	*width: 0;
}

#module337 {
	border: none;
}

#module337 {
	padding: 0px;
}

#module337 .formMiddle337 {
	border: none;
}

#module337 .formMiddle337 {
	padding: 0px;
}

#module337 .formMiddle337 .formMiddleCenter337 {
	border: none;
}

#module337 .formMiddle337 .formMiddleCenter337 {
	padding: 0px;
}

#module337 .formTop337 {
	display: none;
}

#module337 .formBottom337 {
	display: none;
}

#module337 .formMiddle337 .formMiddleLeft337 {
	display: none;
}

#module337 .formMiddle337 .formMiddleRight337 {
	display: none;
}

#module337 .formBanner337 {
	display: none;
}

#module337 .contentLineIcon {
	*padding: 0;
}

#module337 .contentLineIcon {
	*width: 0;
}

#module337 {
	background: none;
}

#module337 .formMiddle337 {
	background: none;
}

#module337 .formMiddle337 .formMiddleCenter337 {
	background: none;
}

#module337 .formMiddleContent337 {
	background: none;
}

#module343 {
	border: none;
}

#module343 {
	padding: 0px;
}

#module343 .formMiddle343 {
	border: none;
}

#module343 .formMiddle343 {
	padding: 0px;
}

#module343 .formMiddle343 .formMiddleCenter343 {
	border: none;
}

#module343 .formMiddle343 .formMiddleCenter343 {
	padding: 0px;
}

#module343 .formTop343 {
	display: none;
}

#module343 .formBottom343 {
	display: none;
}

#module343 .formMiddle343 .formMiddleLeft343 {
	display: none;
}

#module343 .formMiddle343 .formMiddleRight343 {
	display: none;
}

#module343 .formBanner343 {
	display: none;
}

#module343 .formMiddleContent343 {
	padding: 0px;
}

#module343 .formMiddleContent343 {
	margin-left: -5px;
}

#module343 .formMiddleContent343 {
	margin-right: 10px;
}

#module343 .formMiddleContent343 {
	margin-top: -5px;
}

#module343 .formMiddleContent343 {
	margin-bottom: -60px;
}

#module343 .contentLineIcon {
	*padding: 0;
}

#module343 .contentLineIcon {
	*width: 0;
}

#module379 {
	border: none;
}

#module379 {
	padding: 0px;
}

#module379 .formMiddle379 {
	border: none;
}

#module379 .formMiddle379 {
	padding: 0px;
}

#module379 .formMiddle379 .formMiddleCenter379 {
	border: none;
}

#module379 .formMiddle379 .formMiddleCenter379 {
	padding: 0px;
}

#module379 .formTop379 {
	display: none;
}

#module379 .formBottom379 {
	display: none;
}

#module379 .formMiddle379 .formMiddleLeft379 {
	display: none;
}

#module379 .formMiddle379 .formMiddleRight379 {
	display: none;
}

#module379 .formBanner379 {
	display: none;
}

#module379 .formMiddleContent379 {
	padding: 0px;
}

#module379 .formMiddleContent379 {
	margin-left: -10px;
}

#module379 .formMiddleContent379 {
	margin-right: 10px;
}

#module379 .formMiddleContent379 {
	margin-top: 10px;
}

#module379 .formMiddleContent379 {
	margin-bottom: 5px;
}

#module379 .contentLineIcon {
	*padding: 0;
}

#module379 .contentLineIcon {
	*width: 0;
}

#module338 {
	border: none;
}

#module338 {
	padding: 0px;
}

#module338 .formMiddle338 {
	border: none;
}

#module338 .formMiddle338 {
	padding: 0px;
}

#module338 .formMiddle338 .formMiddleCenter338 {
	border: none;
}

#module338 .formMiddle338 .formMiddleCenter338 {
	padding: 0px;
}

#module338 .formTop338 {
	display: none;
}

#module338 .formBottom338 {
	display: none;
}

#module338 .formMiddle338 .formMiddleLeft338 {
	display: none;
}

#module338 .formMiddle338 .formMiddleRight338 {
	display: none;
}

#module338 .formBanner338 {
	display: none;
}

#module338 .formMiddleContent338 {
	padding: 0px;
}

#module338 .formMiddleContent338 {
	margin-left: -5px;
}

#module338 .formMiddleContent338 {
	margin-right: 10px;
}

#module338 .formMiddleContent338 {
	margin-top: -5px;
}

#module338 .formMiddleContent338 {
	margin-bottom: -80px;
}

#module338 .contentLineIcon {
	*padding: 0;
}

#module338 .contentLineIcon {
	*width: 0;
}

#module341 {
	border: none;
}

#module341 {
	padding: 0px;
}

#module341 .formMiddle341 {
	border: none;
}

#module341 .formMiddle341 {
	padding: 0px;
}

#module341 .formMiddle341 .formMiddleCenter341 {
	border: none;
}

#module341 .formMiddle341 .formMiddleCenter341 {
	padding: 0px;
}

#module341 .formTop341 {
	display: none;
}

#module341 .formBottom341 {
	display: none;
}

#module341 .formMiddle341 .formMiddleLeft341 {
	display: none;
}

#module341 .formMiddle341 .formMiddleRight341 {
	display: none;
}

#module341 .formBanner341 {
	display: none;
}

#module341 .formMiddleContent341 {
	padding: 0px;
}

#module341 .formMiddleContent341 {
	margin-left: -5px;
}

#module341 .formMiddleContent341 {
	margin-right: 10px;
}

#module341 .formMiddleContent341 {
	margin-top: -5px;
}

#module341 .formMiddleContent341 {
	margin-bottom: -60px;
}

#module341 .contentLineIcon {
	*padding: 0;
}

#module341 .contentLineIcon {
	*width: 0;
}

#module333 {
	border: none;
}

#module333 {
	padding: 0px;
}

#module333 .formMiddle333 {
	border: none;
}

#module333 .formMiddle333 {
	padding: 0px;
}

#module333 .formMiddle333 .formMiddleCenter333 {
	border: none;
}

#module333 .formMiddle333 .formMiddleCenter333 {
	padding: 0px;
}

#module333 .formTop333 {
	display: none;
}

#module333 .formBottom333 {
	display: none;
}

#module333 .formMiddle333 .formMiddleLeft333 {
	display: none;
}

#module333 .formMiddle333 .formMiddleRight333 {
	display: none;
}

#module333 .formBanner333 {
	display: none;
}

#module333 .contentLineIcon {
	*padding: 0;
}

#module333 .contentLineIcon {
	*width: 0;
}

#module342 {
	border: none;
}

#module342 {
	padding: 0px;
}

#module342 .formMiddle342 {
	border: none;
}

#module342 .formMiddle342 {
	padding: 0px;
}

#module342 .formMiddle342 .formMiddleCenter342 {
	border: none;
}

#module342 .formMiddle342 .formMiddleCenter342 {
	padding: 0px;
}

#module342 .formTop342 {
	display: none;
}

#module342 .formBottom342 {
	display: none;
}

#module342 .formMiddle342 .formMiddleLeft342 {
	display: none;
}

#module342 .formMiddle342 .formMiddleRight342 {
	display: none;
}

#module342 .formBanner342 {
	display: none;
}

#module342 .formMiddleContent342 {
	padding: 0px;
}

#module342 .formMiddleContent342 {
	margin-left: -5px;
}

#module342 .formMiddleContent342 {
	margin-right: 10px;
}

#module342 .formMiddleContent342 {
	margin-top: -5px;
}

#module342 .formMiddleContent342 {
	margin-bottom: -60px;
}

#module342 .contentLineIcon {
	*padding: 0;
}

#module342 .contentLineIcon {
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
	(function(FUN, undefined) {
		var list = [];

		FUN.run = function() {
			if (arguments.length < 1) {
				throw new Error("jzUtils.run 参数错误");
				return;
			}

			var name = arguments[0].name, callMethod = arguments[0].callMethod || false, prompt = arguments[0].prompt || false, promptMsg = arguments[0].promptMsg
					|| "功能还在加载中，请稍候", base = arguments[0].base
					|| (window.Fai && Fai.top.Site) || top.Site || window,

			args = Array.prototype.slice.call(arguments), funcArgs = args
					.slice(1), callbackFunc = {}, result;

			result = checkMethod(name, base);
			if (result.success) {
				callMethod = false;
				try {
					result.func.apply(result.func, funcArgs);
				} catch (e) {
					console
							&& console.log
							&& console.log("错误:name=" + e.name + "; message="
									+ e.message);
				}
			} else {
				if (prompt) {
					window.Fai && Fai.ing(promptMsg, true);
				}
			}

			if (callMethod) {
				callbackFunc.name = name;
				callbackFunc.base = base;
				callbackFunc.args = funcArgs;
				list.push(callbackFunc);
			}
		};

		FUN.trigger = function(option) {
			if (typeof option !== "object") {
				throw new Error("jzUtils.trigger 参数错误");
				return;
			}

			var funcName = option.name || "", base = option.base
					|| (window.Fai && Fai.top.Site) || top.Site || window, newList = [], result, func, i, param;

			if (funcName.length < 1) {
				return;
			}

			for (i = 0; i < list.length; i++) {
				param = list[i];
				if (param.name == funcName) {
					result = checkMethod(funcName, base);
					if (result.success) {
						try {
							result.func.apply(result.func, param.args);
						} catch (e) {
							console
									&& console.log
									&& console.log("错误:name=" + e.name
											+ "; message=" + e.message);
						}
					}
				} else {
					newList.push(param);
				}
			}

			list = newList;
		};

		function checkMethod(funcName, base) {
			var methodList = funcName.split("."), readyFunc = base, result = {
				"success" : true,
				"func" : function() {
				}
			}, methodName, i;

			for (i = 0; i < methodList.length; i++) {
				methodName = methodList[i];
				if (methodName in readyFunc) {
					readyFunc = readyFunc[methodName];
				} else {
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
<body class="g_body g_locale2052 g_cusSiteWidth" style="-ms-zoom: 1;">

	<div id="g_main" class='g_main g_col2 ' style=''>
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
														<img src="images/title.jpg" width="180" height="40"
															/ alt=" ">
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


											<!-- 搜索框 --> <!-- 
<div class='formMiddleContent formMiddleContent314  ' tabStyle='0'>


<div class='searchBox searchBoxStyle69'><div class='searchBoxContainer' style=''>
<input class='productSearch g_itext' style='width:185px;'  placeholder='' size='10' value='' />
<div class='g_btn searchBoxBtn' onclick='Site.searchProduct(314);return true;' target="_blank"><span>搜索</span></div>
</div>
</div>


<div class='recommandKeyBox'><div class='linkKeys'><a class='recommandKey' onclick="doSearch()"><span></span></a></div></div>
</div>
 -->

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
																	style="font-size: 16px; color: #B4B4B4; font-family: 微软雅黑;"><%=userName%></span>
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
								<tbody>
									<tr>
										<td class="bannerLeft"></td>
										<td class="bannerCenter" align='center' valign='top'>
											<div id='banner' class='banner extBanner'
												style='background: 50% 50% no-repeat; height: 400px'
												normalheight='400' defaultwidth='1440'>
												<!-- 
												<div class="imageSwitchShowName photoSwitchBg"
													style="left: 0px; top: 400px; width: 1349px; height: 30px; line-height: 30px; display: none; position: absolute; z-index: 2;">
													<span class="spanHiddenName" style="margin-left: 10px;"></span>
													<span class="spanHiddenName" style="margin-left: 10px;"></span>
													<span class="spanHiddenName" style="margin-left: 10px;"></span>
													<span class="spanHiddenName" style="margin-left: 10px;"></span>
													<span class="spanHiddenName spanShowName"
														style="margin-left: 10px;"></span>
												</div>
												 -->
												<div class="switchGroup"
													sytle="margin:0px auto;width:100%;height:2000px;overflow:hidden;position:relative;">
													<div class="arrowImg" id="arrowImg0"
														style="left: 0px; width: 100%; padding-top: 0px; positon: absolute;">
														<img src="images/轮播1.jpg"></a>
													</div>
													<div class="arrowImg" id="arrowImg1"
														style="left: -5396px; width: 100%; padding-top: 0px; positon: absolute;">
														<a title="" class="J_bannerItem"
															style="width: 1349px; height: 400px; background-image: url("images/轮播2.jpg");"
															highfocus="true" href="http://www.baidu.com" target=""></a>
													</div>
													<div class="arrowImg" id="arrowImg2"
														style="left: -4047px; width: 100%; padding-top: 0px; positon: absolute;">
														<a title="" class="J_bannerItem"
															style="width: 1349px; height: 400px; background-image: url("images/轮播3.jpg");"
															highfocus="true" href="http://www.baidu.com" target=""></a>
													</div>
													<div class="arrowImg" id="arrowImg3"
														style="left: -2698px; width: 100%; padding-top: 0px; positon: absolute;">
														<a title="" class="J_bannerItem"
															style="width: 1349px; height: 400px;background-image: url("images/轮播4.jpg");"
															highfocus="true" href="http://www.baidu.com" target=""></a>
													</div>
												</div>
										</td>
										<td class="bannerRight"></td>
									</tr>
								</tbody>
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
				class="fullmeasureContainer forms sideForms fullmeasureForms fullmeasureTopForms">
				<div id='module329' _indexClass='formIndex1'
					class='form form329 formIndex1 formStyle80 fk_bannerStyle0'
					title='' style='' _side='0' _inTab='0' _inMulMCol='0'
					_inFullmeasure='0' _autoHeight='0' _global='false'
					_independent='false'>
					<div
						class='fullmeasureOuterContentBg fullmeasureOuterContentBg329 fullmeasureStyle10'></div>
					<div class='fullmeasureOuterContent fullmeasureOuterContent329'>
						<div class='fullmeasureContent fullmeasureContent329'
							id='fullmeasureContent329'>
							<div class='fullmeasureContentBg fullmeasureContentBg329'></div>
							<div id='module319' _indexClass=''
								class='form form319 formStyle35 layoutModule  formStyle35_2  fk_bannerStyle0'
								title='' style='' _side='0' _inTab='0' _inMulMCol='0'
								_inFullmeasure='0' _autoHeight='0' _global='false'
								_independent='false'>
								<table class='formTop formTop319' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left'></td>
										<td class='center'></td>
										<td class='right'></td>
									</tr>
								</table>
								<table class='formMiddle formMiddle319' style='height: 262px;'
									cellpadding='0' cellspacing='0'>
									<tr>
										<td class='formMiddleLeft formMiddleLeft319'></td>
										<td class='formMiddleCenter formMiddleCenter319' valign='top'>
											<div
												class='formMiddleContent formMiddleContent319  multiColFormMiddleContent'
												tabStyle='0'>
												<div class='mulMColContent' id='mulMColContent319'>
													<table width="100%" border="0" cellspacing="0"
														class="mulMColContentTable" cellpadding="0">
														<tbody>
															<tr>
																<td class=" mulColLayout mulColPadding"
																	style="width: 215px;"><div id="mulMCol319_cid_1"
																		class="mulMColList">
																		<div id='module316' _indexClass=''
																			class='form form316 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='319' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop316' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle316' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft316'></td>
																					<td class='formMiddleCenter formMiddleCenter316'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent316  '
																							tabStyle='0'>
																							<div class='richContent richContent0'>
																								<p style="line-height: normal;">
																									<br />
																								</p>
																								<p style="line-height: normal;">
																									<br />
																								</p>
																								<p style="line-height: normal;">
																									<br />
																								</p>
																								<p style="line-height: normal;">
																									<span
																										style="font-size: 20px; font-family: 微软雅黑; color: #FFFFFF;"><br /></span>
																								</p>
																								<p style="line-height: normal;">
																									<span
																										style="font-size: 20px; font-family: 微软雅黑; color: #FFFFFF;">年龄推荐</span>
																								</p>
																								<p style="line-height: normal;">
																									<span
																										style="font-family: Arial; font-size: 28px; color: #FFFFFF;">Recommend</span>
																								</p>
																								<p style="line-height: normal;">
																									<span
																										style="font-family: Arial; font-size: 28px;">
																										<img id="0.5113390805199742"
																										src="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg5M7jswUor_DKlwUwIDgn.png"
																										width="32" height="39" alt=" " />
																									</span>
																								</p>
																								<p style="line-height: normal;">
																									<span
																										style="font-family: Arial; font-size: 28px;"><br /></span>
																								</p>
																								<p style="line-height: normal;">
																									<br />
																								</p>
																								<p style="line-height: normal;">
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight316'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom316'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left316'></td>
																					<td class='center center316'></td>
																					<td class='right right316'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat316'></div>
																		</div>
																	</div>
																	<div class="mulModuleColStyleLine" style=""></div></td>
																<td class="mulColLayout" style=""><div
																		id="mulMCol319_cid_2" class="mulMColList">
																		<div id='module325' _indexClass=''
																			class='form form325 formStyle29 formInMulMCol  layoutModule  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='319' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop325' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle325' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft325'></td>
																					<td class='formMiddleCenter formMiddleCenter325'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent325  '
																							tabStyle='0'>
																							<div class='formTab' id='formTab325'>
																								<table width='100%' cellpadding='0'
																									cellspacing='0' class='titleTable'>
																									<tr>
																										<td class='formTabButtonTopLeft'></td>
																										<td class='formTabButtonTopCenter'><div
																												class='formTabButtonList formTabButtonList325'
																												id='formTabButtonList325'>
																												<div class='formTabButton'
																													id='formTabButton320' tabModuleId='320'
																													onclick='Site.changeLiCnt(320, true,29)'>
																													<div class='formTabLeft'></div>
																													<div class='formTabMiddle'>0-3岁</div>
																													<div class='formTabRight'></div>
																												</div>
																												<div class='formTabButton'
																													id='formTabButton322' tabModuleId='322'
																													onclick='Site.changeLiCnt(322, true,29)'>
																													<div class='formTabLeft'></div>
																													<div class='formTabMiddle'>3-6岁</div>
																													<div class='formTabRight'></div>
																												</div>
																												<div class='formTabButton'
																													id='formTabButton323' tabModuleId='323'
																													onclick='Site.changeLiCnt(323, true,29)'>
																													<div class='formTabLeft'></div>
																													<div class='formTabMiddle'>6-12岁</div>
																													<div class='formTabRight'></div>
																												</div>

																											</div></td>
																										<td class='formTabButtonTopRight'></td>
																									</tr>
																								</table>
																								<div
																									class='formTabContent formTabContent325 column'
																									id='formTabContent325'>
																									<div class='formTabCntId' styleId=3
																										id='formTabCntId318'>
																										<div id='module318' _indexClass=''
																											class='form form318 formStyle3 formInTab  fk_bannerStyle0'
																											title='' style='' _side='0' _inTab='325'
																											_inMulMCol='0' _inFullmeasure='0'
																											_autoHeight='1' _global='false'
																											_independent='false'>
																											<table class='formTop formTop318'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left'></td>
																													<td class='center'></td>
																													<td class='right'></td>
																												</tr>
																											</table>
																											<table class='formMiddle formMiddle318'
																												style='' cellpadding='0' cellspacing='0'>
																												<tr>
																													<td
																														class='formMiddleLeft formMiddleLeft318'></td>
																													<td
																														class='formMiddleCenter formMiddleCenter318'
																														valign='top'>
																														<div
																															class='formMiddleContent formMiddleContent318  '
																															tabStyle='0'>
																															<div class='productMarqueeForms'
																																newMarqueeToward=0>
																																<div class='demo'>
																																	<div class='demo0' id='demo0318'>



																																		<div topClassName='top1'
																																			topSwitch='on' productId='27'
																																			productName='小熊维尼'
																																			class='productMarqueeForm '
																																			style='margin-right: 30px; padding-left: 0px; padding-right: 0px; margin-bottom: 10px; padding-top: 0px; padding-bottom: 0px;'
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m318marqueeProduct27'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/youshenggushilianbo/tonghuayuyanlei/2013-05-15/4143.html'
																																							target='_self'> <img
																																								src='images/3小熊维尼.png'
																																								style='width: 210px; height: 149px;'
																																								alt='小熊维尼' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='小熊维尼'
																																					href='http://www.tom61.com/youshenggushilianbo/tonghuayuyanlei/2013-05-15/4143.html'
																																					target='_self'>小熊维尼故事专辑</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='23'
																																			productName='睡前故事'
																																			class='productMarqueeForm '
																																			style='margin-right: 30px; padding-left: 0px; padding-right: 0px; margin-bottom: 10px; padding-top: 0px; padding-bottom: 0px;'
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m318marqueeProduct23'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/ertongwenxue/shuiqiangushi/'
																																							target='_self'> <img
																																								src='images/3睡前故事.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='睡前故事' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='睡前故事'
																																					href='http://www.tom61.com/ertongwenxue/shuiqiangushi/'
																																					target='_self'>睡前故事</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='39'
																																			productName='安徒生童话'
																																			class='productMarqueeForm '
																																			style='margin-right: 30px; padding-left: 0px; padding-right: 0px; margin-bottom: 10px; padding-top: 0px; padding-bottom: 0px;'
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m318marqueeProduct39'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/ertongwenxue/antushengtonghua/'
																																							target='_self'> <img
																																								src='images/3安徒生童话.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='安徒生童话' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='安徒生童话'
																																					href='http://www.tom61.com/ertongwenxue/antushengtonghua/'
																																					target='_self'>安徒生童话</a>
																																			</div>
																																		</div>
																																	</div>
																																</div>
																															</div>
																														</div>
																													</td>
																													<td
																														class='formMiddleRight formMiddleRight318'></td>
																												</tr>
																											</table>
																											<table class='formBottom formBottom318'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left left318'></td>
																													<td class='center center318'></td>
																													<td class='right right318'></td>
																												</tr>
																											</table>
																											<div class='clearfloat clearfloat318'></div>
																										</div>
																									</div>
																									<div class='formTabCntId' styleId=3
																										id='formTabCntId320'>
																										<div id='module320' _indexClass=''
																											class='form form320 formStyle3 formInTab  fk_bannerStyle0'
																											title='' style='' _side='0' _inTab='325'
																											_inMulMCol='0' _inFullmeasure='0'
																											_autoHeight='1' _global='false'
																											_independent='false'>
																											<table class='formTop formTop320'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left'></td>
																													<td class='center'></td>
																													<td class='right'></td>
																												</tr>
																											</table>
																											<table class='formMiddle formMiddle320'
																												style='' cellpadding='0' cellspacing='0'>
																												<tr>
																													<td
																														class='formMiddleLeft formMiddleLeft320'></td>
																													<td
																														class='formMiddleCenter formMiddleCenter320'
																														valign='top'>
																														<div
																															class='formMiddleContent formMiddleContent320  '
																															tabStyle='0'>
																															<div class='productMarqueeForms'
																																newMarqueeToward=0>
																																<div class='demo'>
																																	<div class='demo0' id='demo0320'>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='27'
																																			productName='小熊维尼'
																																			class='productMarqueeForm '
																																			style='margin-right: 30px; padding-left: 0px; padding-right: 0px; margin-bottom: 10px; padding-top: 0px; padding-bottom: 0px;'
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m318marqueeProduct27'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/youshenggushilianbo/tonghuayuyanlei/2013-05-15/4143.html'
																																							target='_self'> <img
																																								src='images/3小熊维尼.png'
																																								style='width: 210px; height: 149px;'
																																								alt='小熊维尼' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='小熊维尼'
																																					href='http://www.tom61.com/youshenggushilianbo/tonghuayuyanlei/2013-05-15/4143.html'
																																					target='_self'>小熊维尼故事专辑</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='23'
																																			productName='睡前故事'
																																			class='productMarqueeForm '
																																			style='margin-right: 30px; padding-left: 0px; padding-right: 0px; margin-bottom: 10px; padding-top: 0px; padding-bottom: 0px;'
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m318marqueeProduct23'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/ertongwenxue/shuiqiangushi/'
																																							target='_self'> <img
																																								src='images/3睡前故事.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='睡前故事' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='睡前故事'
																																					href='http://www.tom61.com/ertongwenxue/shuiqiangushi/'
																																					target='_self'>睡前故事</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='39'
																																			productName='安徒生童话'
																																			class='productMarqueeForm '
																																			style='margin-right: 30px; padding-left: 0px; padding-right: 0px; margin-bottom: 10px; padding-top: 0px; padding-bottom: 0px;'
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m318marqueeProduct39'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/ertongwenxue/antushengtonghua/'
																																							target='_self'> <img
																																								src='images/3安徒生童话.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='安徒生童话' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='安徒生童话'
																																					href='http://www.tom61.com/ertongwenxue/antushengtonghua/'
																																					target='_self'>安徒生童话</a>
																																			</div>
																																		</div>
																																	</div>
																																</div>
																															</div>
																														</div>
																													</td>
																													<td
																														class='formMiddleRight formMiddleRight320'></td>
																												</tr>
																											</table>
																											<table class='formBottom formBottom320'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left left320'></td>
																													<td class='center center320'></td>
																													<td class='right right320'></td>
																												</tr>
																											</table>
																											<div class='clearfloat clearfloat320'></div>
																										</div>
																									</div>
																									<div class='formTabCntId' styleId=3
																										id='formTabCntId322'>
																										<div id='module322' _indexClass=''
																											class='form form322 formStyle3 formInTab  fk_bannerStyle0 modulePattern modulePattern60'
																											title='' style='' _side='0' _inTab='325'
																											_inMulMCol='0' _inFullmeasure='0'
																											_autoHeight='1' _global='false'
																											_independent='false'>
																											<table class='formTop formTop322'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left'></td>
																													<td class='center'></td>
																													<td class='right'></td>
																												</tr>
																											</table>
																											<table class='formMiddle formMiddle322'
																												style='' cellpadding='0' cellspacing='0'>
																												<tr>
																													<td
																														class='formMiddleLeft formMiddleLeft322'></td>
																													<td
																														class='formMiddleCenter formMiddleCenter322'
																														valign='top'>
																														<div
																															class='formMiddleContent formMiddleContent322  '
																															tabStyle='0'>
																															<div class='productMarqueeForms'
																																newMarqueeToward=0>
																																<div class='demo'>
																																	<div class='demo0' id='demo0322'>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='41'
																																			productName='大头儿子小头爸爸'
																																			class='productMarqueeForm '
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m322marqueeProduct41'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/youshenggushilianbo/tonghuayuyanlei/2013-05-10/3522.html'
																																							target='_self'> <img
																																								src='images/4大头儿子和小头爸爸.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='大头儿子小头爸爸' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='大头儿子小头爸爸'
																																					href='http://www.tom61.com/youshenggushilianbo/tonghuayuyanlei/2013-05-10/3522.html'
																																					target='_self'>大头儿子小头爸爸</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='40'
																																			productName='黑猫警长'
																																			class='productMarqueeForm '
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m322marqueeProduct40'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/donghuapianzhutiqu/2012-05-18/65562.html'
																																							target='_self'> <img
																																								src='images/4黑猫警长.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='黑猫警长' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='黑猫警长'
																																					href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/donghuapianzhutiqu/2012-05-18/65562.html'
																																					target='_self'>黑猫警长</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='39'
																																			productName='喜羊羊与灰太狼'
																																			class='productMarqueeForm '
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m322marqueeProduct39'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/donghuapianzhutiqu/2013-04-04/68528.html'
																																							target='_self'> <img
																																								src='images/4喜羊羊与灰太狼.jpeg'
																																								style='width: 210px; height: 149px;'
																																								alt='喜羊羊与灰太狼' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='喜羊羊与灰太狼'
																																					href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/donghuapianzhutiqu/2013-04-04/68528.html'
																																					target='_self'>喜羊羊与灰太狼</a>
																																			</div>
																																		</div>

																																	</div>
																																</div>
																															</div>
																														</div>
																													</td>
																													<td
																														class='formMiddleRight formMiddleRight322'></td>
																												</tr>
																											</table>
																											<table class='formBottom formBottom322'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left left322'></td>
																													<td class='center center322'></td>
																													<td class='right right322'></td>
																												</tr>
																											</table>
																											<div class='clearfloat clearfloat322'></div>
																										</div>
																									</div>
																									<div class='formTabCntId' styleId=3
																										id='formTabCntId323'>
																										<div id='module323' _indexClass=''
																											class='form form323 formStyle3 formInTab  fk_bannerStyle0 modulePattern modulePattern60'
																											title='' style='' _side='0' _inTab='325'
																											_inMulMCol='0' _inFullmeasure='0'
																											_autoHeight='1' _global='false'
																											_independent='false'>
																											<table class='formTop formTop323'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left'></td>
																													<td class='center'></td>
																													<td class='right'></td>
																												</tr>
																											</table>
																											<table class='formMiddle formMiddle323'
																												style='' cellpadding='0' cellspacing='0'>
																												<tr>
																													<td
																														class='formMiddleLeft formMiddleLeft323'></td>
																													<td
																														class='formMiddleCenter formMiddleCenter323'
																														valign='top'>
																														<div
																															class='formMiddleContent formMiddleContent323  '
																															tabStyle='0'>
																															<div class='productMarqueeForms'
																																newMarqueeToward=0>
																																<div class='demo'>
																																	<div class='demo0' id='demo0323'>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='37'
																																			productName='西游记'
																																			class='productMarqueeForm '
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m323marqueeProduct37'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/donghuapianzhutiqu/2013-03-12/67494.html'
																																							target='_self'> <img
																																								src='images/4西游记.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='西游记' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='西游记'
																																					href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/donghuapianzhutiqu/2013-03-12/67494.html'
																																					target='_self'>西游记</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='36'
																																			productName='动脑筋爷爷讲故事'
																																			class='productMarqueeForm '
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m323marqueeProduct36'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/youshenggushilianbo/zhishibaikelei/2013-05-16/4219.html'
																																							target='_self'> <img
																																								src='images/5动脑筋爷爷讲故事.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='动脑筋爷爷讲故事' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='动脑筋爷爷讲故事'
																																					href='http://www.tom61.com/youshenggushilianbo/zhishibaikelei/2013-05-16/4219.html'
																																					target='_self'>动脑筋爷爷讲故事</a>
																																			</div>
																																		</div>
																																		<div topClassName='top1'
																																			topSwitch='on' productId='34'
																																			productName='oh苏珊娜'
																																			class='productMarqueeForm '
																																			faiWidth='450' faiHeight='301'>
																																			<div id='m323marqueeProduct34'
																																				class='imgDiv'
																																				style='width: 210px; height: 149px;'>
																																				<table cellpadding='0'
																																					cellspacing='0'>
																																					<tr>
																																						<td style='overflow: hidden;'
																																							valign='middle' align='center'>
																																							<a hidefocus='true'
																																							href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/yingwengequ/2009-02-21/31088.html'
																																							target='_self'> <img
																																								src='images/5oh苏珊娜.jpg'
																																								style='width: 210px; height: 149px;'
																																								alt='oh苏珊娜' title='' />
																																						</a>
																																						</td>
																																					</tr>
																																				</table>
																																			</div>
																																			<div
																																				class='propDiv productName productName_L propWordWrapDiv     '
																																				style=''>
																																				<a hidefocus='true' title='oh苏珊娜'
																																					href='http://www.tom61.com/FLASHzhiyuang/FLASHgequlei/yingwengequ/2009-02-21/31088.html'
																																					target='_self'>oh苏珊娜英文歌</a>
																																			</div>
																																		</div>
																																	</div>
																																</div>
																															</div>
																														</div>
																													</td>
																													<td
																														class='formMiddleRight formMiddleRight323'></td>
																												</tr>
																											</table>
																											<table class='formBottom formBottom323'
																												cellpadding='0' cellspacing='0'>
																												<tr>
																													<td class='left left323'></td>
																													<td class='center center323'></td>
																													<td class='right right323'></td>
																												</tr>
																											</table>
																											<div class='clearfloat clearfloat323'></div>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight325'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom325'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left325'></td>
																					<td class='center center325'></td>
																					<td class='right right325'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat325'></div>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</td>
										<td class='formMiddleRight formMiddleRight319'></td>
									</tr>
								</table>
								<table class='formBottom formBottom319' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left left319'></td>
										<td class='center center319'></td>
										<td class='right right319'></td>
									</tr>
								</table>
								<div class='clearfloat clearfloat319'></div>
							</div>
						</div>
					</div>
					<div class='clearfloat clearfloat329'></div>
				</div>

				<div id='module345' _indexClass='formIndex2'
					class='form form345 formIndex2 formStyle80 fk_bannerStyle0'
					title='' style='' _side='0' _inTab='0' _inMulMCol='0'
					_inFullmeasure='0' _autoHeight='0' _global='false'
					_independent='false'>
					<div
						class='fullmeasureOuterContentBg fullmeasureOuterContentBg345 fullmeasureStyle0'></div>
					<div class='fullmeasureOuterContent fullmeasureOuterContent345'>
						<div class='fullmeasureContent fullmeasureContent345'
							id='fullmeasureContent345'>
							<div class='fullmeasureContentBg fullmeasureContentBg345'></div>
							<div id='module336' _indexClass=''
								class='form form336 formStyle35 layoutModule  formStyle35_2  fk_bannerStyle0'
								title='' style='' _side='0' _inTab='0' _inMulMCol='0'
								_inFullmeasure='0' _autoHeight='0' _global='false'
								_independent='false'>
								<table class='formTop formTop336' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left'></td>
										<td class='center'></td>
										<td class='right'></td>
									</tr>
								</table>
								<table class='formMiddle formMiddle336' style='height: 558px;'
									cellpadding='0' cellspacing='0'>
									<tr>
										<td class='formMiddleLeft formMiddleLeft336'></td>
										<td class='formMiddleCenter formMiddleCenter336' valign='top'>
											<div
												class='formMiddleContent formMiddleContent336  multiColFormMiddleContent'
												tabStyle='0'>
												<div class='mulMColContent' id='mulMColContent336'>
													<table width="100%" border="0" cellspacing="0"
														class="mulMColContentTable" cellpadding="0">
														<tbody>
															<tr>
																<td class=" mulColLayout mulColPadding"
																	style="width: 632px;"><div id="mulMCol336_cid_1"
																		class="mulMColList">
																		<div id='module333' _indexClass=''
																			class='form form333 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop333' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle333' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft333'></td>
																					<td class='formMiddleCenter formMiddleCenter333'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent333  '
																							tabStyle='0'>
																							<div class='richContent richContent0'>
																								<p style="line-height: 2em;">
																									<span
																										style="color: #434343; font-family: 微软雅黑;"><span
																										style="font-size: 19px;">热门课程</span></span>
																								</p>
																								<p style="line-height: 2em;">
																									<span
																										style="color: #626262; font-family: Arial;"><span
																										style="font-size: 28px;">Hottest Class</span></span>
																								</p>
																								<p style="line-height: 2em;">
																									<img id="0.6734099842142314"
																										src="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg9urjswUotr6WsAUwETgl.png"
																										width="17" height="37" alt=" " />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight333'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom333'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left333'></td>
																					<td class='center center333'></td>
																					<td class='right right333'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat333'></div>
																		</div>
																		<div id='module379' _indexClass=''
																			class='form form379 formStyle4 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop379' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle379' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft379'></td>
																					<td class='formMiddleCenter formMiddleCenter379'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent379  '
																							tabStyle='0'>
																							<div class='photoList'>
																								<div class='clearfloat'></div>
																								<div id='photoForms379' class='photoForms'
																									picWidth='289' picHeight='161'>


																									<div photoName='幼儿数学加减法' photoDisc=''
																										photoId='23' class='photoForm'
																										style='width: 289px; margin-left: 12px; margin-right: 13px; padding-left: 0px; padding-right: 0px; margin-top: 12px; margin-bottom: 12px; padding-top: 0px; padding-bottom: 0px;'
																										faiWidth='450' faiHeight='375'>
																										<div
																											id='photoListABUIABACGAAg_qOXvAUo1K7MnQcw2AQ49AM'
																											class='imgDiv'
																											style='width: 289px; height: 161px;'>
																											<table cellpadding='0' cellspacing='0'>
																												<tr>
																													<td><a hidefocus='true'
																														href="http://www.iqiyi.com/w_19rt2g4kyd.html"
																														target='_blank'> <img class='photoImg'
																															src='images/hot1.jpg' alt='幼儿数学加减法' />
																													</a></td>
																												</tr>
																											</table>
																										</div>
																										<div class='parametersDiv'>
																											<div
																												class='photoParameters firstLine nameWordWrap '
																												title='幼儿数学加减法'>幼儿数学加减法</div>
																											<div class='photoParameters basic' title=''
																												style='display: none'></div>
																										</div>
																									</div>



																									<div photoName='架子鼓入门' photoDisc=''
																										photoId='24' class='photoForm'
																										style='width: 289px; margin-left: 12px; margin-right: 13px; padding-left: 0px; padding-right: 0px; margin-top: 12px; margin-bottom: 12px; padding-top: 0px; padding-bottom: 0px;'
																										faiWidth='450' faiHeight='375'>
																										<div
																											id='photoListABUIABACGAAg0KSXvAUo4Mny0QIw2AQ49AM'
																											class='imgDiv'
																											style='width: 289px; height: 161px;'>
																											<table cellpadding='0' cellspacing='0'>
																												<tr>
																													<td><a hidefocus='true'
																														href="http://www.iqiyi.com/w_19rt3h40u1.html"
																														target='_blank'> <img class='photoImg'
																															src='images/hot3.jpg' alt='架子鼓入门' />
																													</a></td>
																												</tr>
																											</table>
																										</div>
																										<div class='parametersDiv'>
																											<div
																												class='photoParameters firstLine nameWordWrap '
																												title='架子鼓入门'>架子鼓入门</div>
																											<div class='photoParameters basic' title=''
																												style='display: none'></div>
																										</div>
																									</div>



																									<div photoName='剑桥少儿英语' photoDisc=''
																										photoId='25' class='photoForm'
																										style='width: 289px; margin-left: 12px; margin-right: 13px; padding-left: 0px; padding-right: 0px; margin-top: 12px; margin-bottom: 12px; padding-top: 0px; padding-bottom: 0px;'
																										faiWidth='450' faiHeight='375'>
																										<div
																											id='photoListABUIABACGAAg-qSXvAUokPCczAMw2AQ49AM'
																											class='imgDiv'
																											style='width: 289px; height: 161px;'>
																											<table cellpadding='0' cellspacing='0'>
																												<tr>
																													<td><a hidefocus='true'
																														href="http://www.tangdou.com/v48/dANcNYOjwDzjzQ2.html"
																														target='_blank'> <img class='photoImg'
																															src='images/hot4.jpg' alt='剑桥少儿英语' />
																													</a></td>
																												</tr>
																											</table>
																										</div>
																										<div class='parametersDiv'>
																											<div
																												class='photoParameters firstLine nameWordWrap '
																												title='剑桥少儿英语'>剑桥少儿英语</div>
																											<div class='photoParameters basic' title=''
																												style='display: none'></div>
																										</div>
																									</div>



																									<div photoName='少儿街舞教学' photoDisc=''
																										photoId='26' class='photoForm'
																										style='width: 289px; margin-left: 12px; margin-right: 13px; padding-left: 0px; padding-right: 0px; margin-top: 12px; margin-bottom: 12px; padding-top: 0px; padding-bottom: 0px;'
																										faiWidth='450' faiHeight='375'>
																										<div
																											id='photoListABUIABACGAAghqaXvAUo2Km20AEw2AQ49AM'
																											class='imgDiv'
																											style='width: 289px; height: 161px;'>
																											<table cellpadding='0' cellspacing='0'>
																												<tr>
																													<td><a hidefocus='true'
																														href="http://my.tv.sohu.com/us/169625566/69487799.shtml"
																														target='_blank'> <img class='photoImg'
																															src='images/少儿街舞.jpg' alt='少儿街舞教学' />
																													</a></td>
																												</tr>
																											</table>
																										</div>
																										<div class='parametersDiv'>
																											<div
																												class='photoParameters firstLine nameWordWrap '
																												title='少儿街舞教学'>少儿街舞教学</div>
																											<div class='photoParameters basic' title=''
																												style='display: none'></div>
																										</div>
																									</div>
																								</div>


																								<div class='clearfloat'></div>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight379'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom379'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left379'></td>
																					<td class='center center379'></td>
																					<td class='right right379'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat379'></div>
																		</div>
																	</div>
																	<div class="mulModuleColStyleLine" style=""></div></td>
																<td class="mulColLayout" style=""><div
																		id="mulMCol336_cid_2" class="mulMColList">
																		<div id='module337' _indexClass=''
																			class='form form337 formStyle1 formInMulMCol  fk_bannerStyle0'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop337' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle337' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft337'></td>
																					<td class='formMiddleCenter formMiddleCenter337'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent337  '
																							tabStyle='0'>
																							<div class='richContent richContent0'>
																								<p style="line-height: 2em;">
																									<span
																										style="font-size: 19px; font-family: 微软雅黑; color: #434343;">学员动态</span>
																								</p>
																								<p style="line-height: 2em;">
																									<span
																										style="font-family: Arial; font-size: 28px; color: #626262;">Lastest
																										News</span>
																								</p>
																								<p style="line-height: 2em;">
																									<img
																										src="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg9urjswUotr6WsAUwETgl.png"
																										width="17" height="37" alt=" " />
																								</p>
																								<p style="line-height: 2em;">
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight337'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom337'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left337'></td>
																					<td class='center center337'></td>
																					<td class='right right337'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat337'></div>
																		</div>
																		<div id='module338' _indexClass=''
																			class='form form338 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop338' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle338' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft338'></td>
																					<td class='formMiddleCenter formMiddleCenter338'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent338  '
																							tabStyle='0'>
																							<div class='richModuleSlaveImgContainer textImg1'>
																								<img class='richModuleSlaveImg' alt='' title=''
																									src='images/头像2.jpg'
																									style='width: 61px; height: 61px;' />
																								<div class='richEditPic' _onMouseIn='0'
																									onclick='Site.changeRichPic(338);return false;'>
																									<a class='edit' id='uploadButton' title='编辑图片'></a>
																								</div>
																							</div>
																							<div class='richContent richContent1'>
																								<p style="line-height: 1.5em;">
																									<br />
																								</p>
																								<table _innercreatetable="true" width="508px"
																									height="100px" border="0" bordercolor="#000000"
																									class="  noBorderTable"
																									style="border-collapse: collapse;">
																									<tbody>
																										<tr>
																											<td width="322" valign="top" height="45"
																												style="word-break: break-all;">土豆君 于
																												2016.7.10 学习完成 国画入门</td>
																											<td width="17" valign="top" height="45"
																												style="word-break: break-all;"><p
																													style="line-height: normal;">
																													<br />
																												</p></td>
																											<td width="107" valign="top" height="45"
																												style="word-break: break-all;"><p
																													style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑;">课程难度</span>
																												</p>
																												<p style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑; color: #333333;"><img
																														src="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg6vLjswUo27aJ0AIwRjgW.png"
																														width="70" height="22" alt=" " /></span>
																												</p></td>
																										</tr>
																									</tbody>
																								</table>
																								<p style="line-height: 1.5em;">
																									<span
																										style="font-family: Arial; font-size: 13px; color: #999999;"></span><br />
																								</p>
																								<p>
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight338'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom338'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left338'></td>
																					<td class='center center338'></td>
																					<td class='right right338'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat338'></div>
																		</div>
																		<div id='module341' _indexClass=''
																			class='form form341 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop341' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle341' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft341'></td>
																					<td class='formMiddleCenter formMiddleCenter341'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent341  '
																							tabStyle='0'>
																							<div class='richModuleSlaveImgContainer textImg1'>
																								<img class='richModuleSlaveImg' alt='' title=''
																									src='images/头像3.jpg'
																									data-original='http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg5-bjswUosK3-lgQwPTg9.png'
																									style='width: 61px; height: 61px;' />
																								<div class='richEditPic' _onMouseIn='0'
																									onclick='Site.changeRichPic(341);return false;'>
																									<a class='edit' id='uploadButton' title='编辑图片'></a>
																								</div>
																							</div>
																							<div class='richContent richContent1'>
																								<p>
																									<br />
																								</p>
																								<table _innercreatetable="true" width="508px"
																									height="100px" border="0" bordercolor="#000000"
																									class="  noBorderTable"
																									style="border-collapse: collapse;">
																									<tbody>
																										<tr>
																											<td width="322" valign="top"
																												style="word-break: break-all;">摩天轮露露 于
																												2016.7.10 学习完成 空间思维训练</td>
																											<td width="23" valign="top"
																												style="word-break: break-all;"><br /></td>
																											<td width="104" valign="top"
																												style="word-break: break-all;"><p
																													style="line-height: normal;">
																													<span style="font-family: 微软雅黑;"><span
																														style="font-size: 14px;">课程难度</span></span>
																												</p>
																												<p style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑; color: #333333;"><img
																														src="http://0.ss.faisys.com/image/loading/dot.gif"
																														width="70" height="22" alt=" "
																														/ data-original="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg6vLjswUo27aJ0AIwRjgW.png"></span>
																												</p></td>
																										</tr>
																									</tbody>
																								</table>
																								<p>
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight341'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom341'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left341'></td>
																					<td class='center center341'></td>
																					<td class='right right341'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat341'></div>
																		</div>
																		<div id='module342' _indexClass=''
																			class='form form342 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop342' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle342' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft342'></td>
																					<td class='formMiddleCenter formMiddleCenter342'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent342  '
																							tabStyle='0'>
																							<div class='richModuleSlaveImgContainer textImg1'>
																								<img class='richModuleSlaveImg' alt='' title=''
																									src='images/头像4.jpg'
																									data-original='http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg3PbjswUo86aflQYwPTg9.png'
																									style='width: 61px; height: 61px;' />
																								<div class='richEditPic' _onMouseIn='0'
																									onclick='Site.changeRichPic(342);return false;'>
																									<a class='edit' id='uploadButton' title='编辑图片'></a>
																								</div>
																							</div>
																							<div class='richContent richContent1'>
																								<p>
																									<br />
																								</p>
																								<table _innercreatetable="true" width="508px"
																									height="100px" border="0" bordercolor="#000000"
																									class="  noBorderTable"
																									style="border-collapse: collapse;">
																									<tbody>
																										<tr>
																											<td width="311" valign="top"
																												style="word-break: break-all;"><p
																													style="line-height: 1.5em;">窗边的小豆豆 于
																													2016.7.10 学习完成 基础数学</p></td>
																											<td width="34" valign="top"
																												style="word-break: break-all;"><br /></td>
																											<td width="101" valign="top"
																												style="word-break: break-all;"><p
																													style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑;">课程难度</span>
																												</p>
																												<p style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑; color: #333333;"><img
																														src="http://0.ss.faisys.com/image/loading/dot.gif"
																														width="70" height="22" alt=" "
																														/ data-original="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg6vLjswUo27aJ0AIwRjgW.png"></span>
																												</p></td>
																										</tr>
																									</tbody>
																								</table>
																								<p>
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight342'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom342'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left342'></td>
																					<td class='center center342'></td>
																					<td class='right right342'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat342'></div>
																		</div>
																		<div id='module343' _indexClass=''
																			class='form form343 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop343' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle343' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft343'></td>
																					<td class='formMiddleCenter formMiddleCenter343'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent343  '
																							tabStyle='0'>
																							<div class='richModuleSlaveImgContainer textImg1'>
																								<img class='richModuleSlaveImg' alt='' title=''
																									src='images/头像5.jpg'
																									data-original='http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg0vbjswUorKe_8QMwPTg9.png'
																									style='width: 61px; height: 61px;' />
																								<div class='richEditPic' _onMouseIn='0'
																									onclick='Site.changeRichPic(343);return false;'>
																									<a class='edit' id='uploadButton' title='编辑图片'></a>
																								</div>
																							</div>
																							<div class='richContent richContent1'>
																								<p>
																									<br />
																								</p>
																								<table _innercreatetable="true" width="508px"
																									height="100px" border="0" bordercolor="#000000"
																									class="  noBorderTable"
																									style="border-collapse: collapse;">
																									<tbody>
																										<tr>
																											<td width="312" valign="top"><p
																													style="line-height: 1.5em;">小花猫 于
																													2016.7.10 学习完成 绘画基础提高</p></td>
																											<td width="32" valign="top"
																												style="word-break: break-all;"><br /></td>
																											<td width="104" valign="top"
																												style="word-break: break-all;"><p
																													style="line-height: normal;">
																													<span style="font-family: 微软雅黑;"><span
																														style="font-size: 14px;">课程难度</span></span>
																												</p>
																												<p style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑; color: #333333;"><img
																														src="http://0.ss.faisys.com/image/loading/dot.gif"
																														width="70" height="22" alt=" "
																														/ data-original="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg6vLjswUo27aJ0AIwRjgW.png"></span>
																												</p></td>
																										</tr>
																									</tbody>
																								</table>
																								<p>
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight343'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom343'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left343'></td>
																					<td class='center center343'></td>
																					<td class='right right343'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat343'></div>
																		</div>
																		<div id='module344' _indexClass=''
																			class='form form344 formStyle1 formInMulMCol  fk_bannerStyle0 modulePattern modulePattern60'
																			title='' style='' _side='0' _inTab='0'
																			_inMulMCol='336' _inFullmeasure='0' _autoHeight='1'
																			_global='false' _independent='false'>
																			<table class='formTop formTop344' cellpadding='0'
																				cellspacing='0'>
																				<tr>
																					<td class='left'></td>
																					<td class='center'></td>
																					<td class='right'></td>
																				</tr>
																			</table>
																			<table class='formMiddle formMiddle344' style=''
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='formMiddleLeft formMiddleLeft344'></td>
																					<td class='formMiddleCenter formMiddleCenter344'
																						valign='top'>
																						<div
																							class='formMiddleContent formMiddleContent344  '
																							tabStyle='0'>
																							<div class='richModuleSlaveImgContainer textImg1'>
																								<img class='richModuleSlaveImg' alt='' title=''
																									src='images/头像6.jpg'
																									data-original='http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgyvbjswUox5HSkQIwPTg9.png'
																									style='width: 61px; height: 61px;' />
																								<div class='richEditPic' _onMouseIn='0'
																									onclick='Site.changeRichPic(344);return false;'>
																									<a class='edit' id='uploadButton' title='编辑图片'></a>
																								</div>
																							</div>
																							<div class='richContent richContent1'>
																								<p>
																									<br />
																								</p>
																								<table _innercreatetable="true" width="508px"
																									height="100px" border="0" bordercolor="#000000"
																									class="  noBorderTable"
																									style="border-collapse: collapse;">
																									<tbody>
																										<tr>
																											<td width="332" valign="top"><p
																													style="line-height: 1.5em;">小鱼 于
																													2016.7.10 学习完成 钢琴入门课程</p></td>
																											<td width="9" valign="top"
																												style="word-break: break-all;"><br /></td>
																											<td width="104" valign="top"
																												style="word-break: break-all;"><p
																													style="line-height: normal;">
																													<span style="font-family: 微软雅黑;"><span
																														style="font-size: 14px;">课程难度</span></span>
																												</p>
																												<p style="line-height: normal;">
																													<span
																														style="font-size: 14px; font-family: 微软雅黑; color: #333333;"><img
																														src="http://0.ss.faisys.com/image/loading/dot.gif"
																														width="70" height="22" alt=" "
																														/ data-original="http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg6vLjswUo27aJ0AIwRjgW.png"></span>
																												</p></td>
																										</tr>
																									</tbody>
																								</table>
																								<p>
																									<br />
																								</p>
																							</div>
																						</div>
																					</td>
																					<td class='formMiddleRight formMiddleRight344'></td>
																				</tr>
																			</table>
																			<table class='formBottom formBottom344'
																				cellpadding='0' cellspacing='0'>
																				<tr>
																					<td class='left left344'></td>
																					<td class='center center344'></td>
																					<td class='right right344'></td>
																				</tr>
																			</table>
																			<div class='clearfloat clearfloat344'></div>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</td>
										<td class='formMiddleRight formMiddleRight336'></td>
									</tr>
								</table>
								<table class='formBottom formBottom336' cellpadding='0'
									cellspacing='0'>
									<tr>
										<td class='left left336'></td>
										<td class='center center336'></td>
										<td class='right right336'></td>
									</tr>
								</table>
								<div class='clearfloat clearfloat336'></div>
							</div>
						</div>
					</div>
					<div class='clearfloat clearfloat345'></div>
				</div>


				<wbr style='display:none;' />
			</div>

			<table id="webContainerTable"
				class="webContainerTable fk-webContainerTableForNoLayout"
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
															class="containerFormsLeft" style='display: none'>
															<div class="containerFormsLeftTop"></div>
															<div id="leftForms"
																class="column forms sideForms leftForms"></div>
															<div class="containerFormsLeftBottom"></div>
														</td>

														<td valign="top" id="containerFormsCenter"
															class="containerFormsCenter">

															<div id="centerTopForms"
																class="column forms mainForms centerTopForms"
																style='display: none'></div>
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
		function showYuanDanWindow() {
			var hasShowYuanDanLuckyGuy = $.cookie("hasShowYuanDanLuckyGuy", {
				path : "/"
			});
			var _hasGetYuanDanLuckyGuy_ = $.cookie("_hasGetYuanDanLuckyGuy_", {
				path : "/"
			});
			var _openbigImg = false;

			if (_openbigImg == true) {
				if (hasShowYuanDanLuckyGuy == 'true'
						|| _hasGetYuanDanLuckyGuy_ != 'true') {
					Site.isShowThreeDaysLuckyGuy = "true";
					Site.isTenMinutes = 'true';
					$.cookie("hasShowYuanDanLuckyGuy", false, {
						path : "/"
					});
					Site.drawLottery();
				} else {

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
		fk_sale.popupWindowMs = -1086401258;
		fk_sale.signupDays = 1;
		fk_sale.signupMinutes = 1671;
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
		var faiscoAd = $.cookie('faiscoAd', {
			path : '/'
		});
		if (false) {
			$(".siteAdvertisement_box").show();
			Site.logDog(200004, 15);
		} else if (!false && !false && 27 >= 24 && false) {
			Site.logDog(200004, 18);
			$(".siteAdvertisement_box").show();
		} else if (!false && 27 >= 24 && false) {
			Site.logDog(200004, 18);
			$(".siteAdvertisement_box").show();
		} else if (!false && 27 >= 24 && false) {
			Site.logDog(200004, 16);
			$(".siteAdvertisement_box").show();
		} else if (true && faiscoAd !== "false") {
			if (false) {
				Site.logDog(200004, 15);
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

		var _faiAjax = function() {
			//for regexp
			var r = /\?/;
			var _o = {
				type : "get",
				url : "",
				data : "",
				error : function() {
				},
				success : function() {
				}
			};
			var _sendRequest = function(o) {
				var xmlhttp = null;
				//init option code
				o.type = o.type || _o.type;
				o.url = o.url || _o.url;
				o.data = o.data || _o.data;
				o.error = o.error || _o.error;
				o.success = o.success || _o.success;
				if (window.XMLHttpRequest) {
					// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else {
					// code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				//the instructions param takes the form of an eval statement
				if (o.type != "post") {
					o.url += (this.r.test(o.url) ? "&" : "?") + o.data;
					xmlhttp.open("GET", o.url, true);
					xmlhttp.onreadystatechange = function() {
						if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
							o.success(xmlhttp.responseText);
						} else if (o.error) {
							o.error();
						}
					}
					xmlhttp.send();
				} else {
					xmlhttp.open("POST", o.url, true);
					//Send the proper header information along with the request
					xmlhttp.setRequestHeader("Content-type",
							"application/x-www-form-urlencoded; charset=UTF-8");
					xmlhttp.onreadystatechange = function() {
						if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
							o.success(xmlhttp.responseText);
						} else {
							o.error();
						}
					}
					xmlhttp.send(o.data);
				}
			}
			return {
				ajax : function(option) {
					try {
						//此次调用的错误不让抛出给window。防止函数重入
						_sendRequest(option);
					} catch (e) {
						//alert(e);
					}
				}
			};
		}();
		var _jsErrCahche = [];
		window.onerror = function(sMsg, sUrl, sLine) {
			if (typeof Site == 'undefined') {
				alert('您的网页未加载完成，请尝试按“CTRL+功能键F5”重新加载。');
			}
			if (sLine < 1 || typeof sMsg != 'string' || sMsg.length < 1) {
				return;
			}

			var log = "Error:" + sMsg + ";Line:" + sLine + ";Url:" + sUrl;
			var alertLog = "Error:" + sMsg + "\n" + "Line:" + sLine + "\n"
					+ "Url:" + sUrl + "\n";
			var encodeUrl = function(url) {
				return typeof url === "undefined" ? ""
						: encodeURIComponent(url);
			};

			var ajax = true;
			var obj = {
				'm' : sMsg,
				'u' : sUrl,
				'l' : sLine
			};
			for (var i = 0; i < _jsErrCahche.length; i++) {
				if (_jsErrCahche[i].m == obj.m && _jsErrCahche[i].u == obj.u
						&& _jsErrCahche[i].l == obj.l) {
					ajax = false;
					break;
				}
			}

			if (ajax) {
				_jsErrCahche.push(obj);
				_faiAjax.ajax({
					type : "post",
					url : "ajax/logJsErr_h.jsp?cmd=jsErr",
					data : 'msg=' + encodeUrl(log)
				});
			}
			if (false) {
				alert(alertLog);
			}
		};
		Fai.top = window;
		var bgmCloseToOpen = false;
		var _debug = false;
		var _devMode = false;
		var _colOtherStyleData = {
			"independentList" : [],
			"y" : 0,
			"h" : 0,
			"layout4Width" : 0,
			"layout5Width" : 0
		}; // 当前页面的数据    
		var _templateOtherStyleData = {
			"independentList" : [],
			"h" : 875,
			"y" : 0,
			"layout4Width" : 0,
			"layout5Width" : 0
		}; // 全局的数据
		$(function() {

			Site.changeTheLogoSize();
			Site.showOrHideMailBox();

			var hasLoginSite = $.cookie('hasLoginSite');
			if (hasLoginSite == "true" && hasLoginSite != null) {
				$.cookie('hasLoginSite', 'false', {
					expires : 1,
					path : '/'
				});
				Site.changeAdmHref('dadaedu', 'faisco.cn');
			}
			if (false) {
				Fai.ing("", true);
			}
			//topBarMember 

			// 管理态下, QQ/微博登陆 禁止登陆
			if (_manageMode) {
				$('#memberBar .l_Btn').click(function() {
					Fai.ing('您目前处于网站管理状态，请先点击网站右上方的“退出”后再登录会员。', true);
				});
				//绑定放大镜遮罩效果事件
				Site.bindEventToOverLayer();
			}

			// 绑定退出事件
			$(window).bind("beforeunload", function(e) {

				if (bgmCloseToOpen) {
					Site.bgmFlushContinue();
				}

			});
			Site.initTemplateLayout(1, true, false);
			// spider统计

			// ajax统计
			Site.total({
				colId : 2,
				pdId : -1,
				ndId : -1,
				sc : 0,
				rf : "http://dadaedu.faisco.cn/"
			});
			//前端性能数据上报
			Site.report();
			//保留旧用户的初始化版式区域4 和区域5 中，区域4的padding-right空间
			Site.colLayout45Width();

			Site.hoverChangeImage();
			Site.hoverStyle();
			Site.initModuleProductSearch(314);

			Site
					.initBanner(
							{
								"_open" : true,
								"data" : [
										{
											"title" : "",
											"desc" : "",
											"imgWidth" : 1900,
											"imgHeight" : 400,
											"href" : "http://www.baidu.com",
											"target" : "_blank",
											"src" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg",
											"edgeLeft" : "",
											"edgeRight" : ""
										},
										{
											"title" : "",
											"desc" : "",
											"imgWidth" : 1900,
											"imgHeight" : 400,
											"href" : "http://www.baidu.com",
											"target" : "_blank",
											"src" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM.jpg",
											"edgeLeft" : "",
											"edgeRight" : ""
										},
										{
											"title" : "",
											"desc" : "",
											"imgWidth" : 1900,
											"imgHeight" : 400,
											"href" : "http://www.baidu.com",
											"target" : "_blank",
											"src" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM.png",
											"edgeLeft" : "",
											"edgeRight" : ""
										},
										{
											"title" : "",
											"desc" : "",
											"imgWidth" : 1900,
											"imgHeight" : 400,
											"href" : "http://www.baidu.com",
											"target" : "_blank",
											"src" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM.jpg",
											"edgeLeft" : "",
											"edgeRight" : ""
										},
										{
											"title" : "",
											"desc" : "",
											"imgWidth" : 1900,
											"imgHeight" : 400,
											"href" : "http://www.baidu.com",
											"target" : "_blank",
											"src" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM.jpg",
											"edgeLeft" : "",
											"edgeRight" : ""
										} ],
								"width" : 1900,
								"height" : 400,
								"playTime" : 4000,
								"animateTime" : 1500,
								"from" : "banner",
								"btnType" : 0,
								"wideScreen" : false
							}, {
								"_open" : false
							}, 4);

			Fai.top.Product318 = {};
			Fai.top.Product318.ieOpt = {
				"effType" : 1,
				"borderType" : false,
				"backgroundType" : false,
				"wordType" : false,
				"borderColor" : "",
				"borderWidth" : 1,
				"borderStyle" : 1,
				"fullmaskBackgroundColor" : "",
				"fullmaskBackgroundOpacity" : 80,
				"fullmaskWordResize" : 12,
				"fullmaskWordStyle" : "",
				"fullmaskWordColor" : "",
				"style" : 3
			};
			Fai.top.Product318.tgOpt = {
				"mallShowBuy" : false,
				"productSelect" : true,
				"targetParent" : "productMarqueeForm",
				"target" : "imgDiv",
				"paramLayoutType" : 1,
				"propNameShow" : true,
				"productNameShow" : true,
				"productTextCenter" : false,
				"productNameWordWrap" : true
			};
			Fai.top.Product318.callbackArgs = [ {
				"m318marqueeProduct28" : "[]",
				"productName" : "钢琴入门课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct29" : "[]",
				"productName" : "国画入门课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct32" : "[]",
				"productName" : "绘画技能提高",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct33" : "[]",
				"productName" : "基础声乐",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct30" : "[]",
				"productName" : "基础数学",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct35" : "[]",
				"productName" : "吉他兴趣培养班",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct41" : "[]",
				"productName" : "简笔画入门",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct20" : "[]",
				"productName" : "看图识物基础课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct42" : "[]",
				"productName" : "空间思维训练",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct38" : "[]",
				"productName" : "乐理入门",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct44" : "[]",
				"productName" : "识字基础课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct34" : "[]",
				"productName" : "数学入门",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct40" : "[]",
				"productName" : "算数能力培养",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct25" : "[]",
				"productName" : "涂鸦上色基础",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct27" : "[]",
				"productName" : "有声读物\u2014\u2014白雪公主",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct23" : "[]",
				"productName" : "硬笔书法",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct39" : "[]",
				"productName" : "英文字母学习",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct16" : "[]",
				"productName" : "益智游戏",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct31" : "[]",
				"productName" : "小提琴兴趣培养班",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m318marqueeProduct43" : "[]",
				"productName" : "涂鸦上色进阶",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			} ];
			Fai.top.Product318.paramLayoutType = 1;
			Site.loadProductMarquee(318, true, true, 0);
			Fai.top.changeMarquee318 = function() {
				Fai.stopInterval('marquee318');
				Site.loadProductMarquee(318, true, true, 0);
			};

			Fai.top.Product320 = {};
			Fai.top.Product320.ieOpt = {
				"effType" : 1,
				"borderType" : false,
				"backgroundType" : false,
				"wordType" : false,
				"borderColor" : "",
				"borderWidth" : 1,
				"borderStyle" : 1,
				"fullmaskBackgroundColor" : "",
				"fullmaskBackgroundOpacity" : 80,
				"fullmaskWordResize" : 12,
				"fullmaskWordStyle" : "",
				"fullmaskWordColor" : "",
				"style" : 3
			};
			Fai.top.Product320.tgOpt = {
				"mallShowBuy" : false,
				"productSelect" : true,
				"targetParent" : "productMarqueeForm",
				"target" : "imgDiv",
				"paramLayoutType" : 1,
				"propNameShow" : true,
				"productNameShow" : true,
				"productTextCenter" : false,
				"productNameWordWrap" : true
			};
			Fai.top.Product320.callbackArgs = [ {
				"m320marqueeProduct27" : "[]",
				"productName" : "有声读物\u2014\u2014白雪公主",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m320marqueeProduct25" : "[]",
				"productName" : "涂鸦上色基础",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m320marqueeProduct22" : "[]",
				"productName" : "童话故事\u2014\u2014三只小猪",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m320marqueeProduct20" : "[]",
				"productName" : "看图识物基础课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m320marqueeProduct16" : "[]",
				"productName" : "益智游戏",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			} ];
			Fai.top.Product320.paramLayoutType = 1;
			Site.loadProductMarquee(320, true, true, 0);
			Fai.top.changeMarquee320 = function() {
				Fai.stopInterval('marquee320');
				Site.loadProductMarquee(320, true, true, 0);
			};

			Fai.top.Product321 = {};
			Fai.top.Product321.ieOpt = {
				"effType" : 1,
				"borderType" : false,
				"backgroundType" : false,
				"wordType" : false,
				"borderColor" : "",
				"borderWidth" : 1,
				"borderStyle" : 1,
				"fullmaskBackgroundColor" : "",
				"fullmaskBackgroundOpacity" : 80,
				"fullmaskWordResize" : 12,
				"fullmaskWordStyle" : "",
				"fullmaskWordColor" : "",
				"style" : 3
			};
			Fai.top.Product321.tgOpt = {
				"mallShowBuy" : false,
				"productSelect" : true,
				"targetParent" : "productMarqueeForm",
				"target" : "imgDiv",
				"paramLayoutType" : 1,
				"propNameShow" : true,
				"productNameShow" : true,
				"productTextCenter" : false,
				"productNameWordWrap" : true
			};
			Fai.top.Product321.callbackArgs = [ {
				"m321marqueeProduct45" : "[]",
				"productName" : "零基础认识数字",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m321marqueeProduct44" : "[]",
				"productName" : "识字基础课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m321marqueeProduct43" : "[]",
				"productName" : "涂鸦上色进阶",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m321marqueeProduct42" : "[]",
				"productName" : "空间思维训练",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			} ];
			Fai.top.Product321.paramLayoutType = 1;
			Site.loadProductMarquee(321, true, true, 0);
			Fai.top.changeMarquee321 = function() {
				Fai.stopInterval('marquee321');
				Site.loadProductMarquee(321, true, true, 0);
			};

			Fai.top.Product322 = {};
			Fai.top.Product322.ieOpt = {
				"effType" : 1,
				"borderType" : false,
				"backgroundType" : false,
				"wordType" : false,
				"borderColor" : "",
				"borderWidth" : 1,
				"borderStyle" : 1,
				"fullmaskBackgroundColor" : "",
				"fullmaskBackgroundOpacity" : 80,
				"fullmaskWordResize" : 12,
				"fullmaskWordStyle" : "",
				"fullmaskWordColor" : "",
				"style" : 3
			};
			Fai.top.Product322.tgOpt = {
				"mallShowBuy" : false,
				"productSelect" : true,
				"targetParent" : "productMarqueeForm",
				"target" : "imgDiv",
				"paramLayoutType" : 1,
				"propNameShow" : true,
				"productNameShow" : true,
				"productTextCenter" : false,
				"productNameWordWrap" : true
			};
			Fai.top.Product322.callbackArgs = [ {
				"m322marqueeProduct41" : "[]",
				"productName" : "简笔画入门",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m322marqueeProduct40" : "[]",
				"productName" : "算数能力培养",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m322marqueeProduct39" : "[]",
				"productName" : "英文字母学习",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m322marqueeProduct38" : "[]",
				"productName" : "乐理入门",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			} ];
			Fai.top.Product322.paramLayoutType = 1;
			Site.loadProductMarquee(322, true, true, 0);
			Fai.top.changeMarquee322 = function() {
				Fai.stopInterval('marquee322');
				Site.loadProductMarquee(322, true, true, 0);
			};

			Fai.top.Product323 = {};
			Fai.top.Product323.ieOpt = {
				"effType" : 1,
				"borderType" : false,
				"backgroundType" : false,
				"wordType" : false,
				"borderColor" : "",
				"borderWidth" : 1,
				"borderStyle" : 1,
				"fullmaskBackgroundColor" : "",
				"fullmaskBackgroundOpacity" : 80,
				"fullmaskWordResize" : 12,
				"fullmaskWordStyle" : "",
				"fullmaskWordColor" : "",
				"style" : 3
			};
			Fai.top.Product323.tgOpt = {
				"mallShowBuy" : false,
				"productSelect" : true,
				"targetParent" : "productMarqueeForm",
				"target" : "imgDiv",
				"paramLayoutType" : 1,
				"propNameShow" : true,
				"productNameShow" : true,
				"productTextCenter" : false,
				"productNameWordWrap" : true
			};
			Fai.top.Product323.callbackArgs = [ {
				"m323marqueeProduct37" : "[]",
				"productName" : "国画介绍课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m323marqueeProduct36" : "[]",
				"productName" : "吉他兴趣培养班",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m323marqueeProduct34" : "[]",
				"productName" : "数学入门",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m323marqueeProduct33" : "[]",
				"productName" : "基础声乐",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m323marqueeProduct32" : "[]",
				"productName" : "绘画技能提高",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			} ];
			Fai.top.Product323.paramLayoutType = 1;
			Site.loadProductMarquee(323, true, true, 0);
			Fai.top.changeMarquee323 = function() {
				Fai.stopInterval('marquee323');
				Site.loadProductMarquee(323, true, true, 0);
			};

			Fai.top.Product324 = {};
			Fai.top.Product324.ieOpt = {
				"effType" : 1,
				"borderType" : false,
				"backgroundType" : false,
				"wordType" : false,
				"borderColor" : "",
				"borderWidth" : 1,
				"borderStyle" : 1,
				"fullmaskBackgroundColor" : "",
				"fullmaskBackgroundOpacity" : 80,
				"fullmaskWordResize" : 12,
				"fullmaskWordStyle" : "",
				"fullmaskWordColor" : "",
				"style" : 3
			};
			Fai.top.Product324.tgOpt = {
				"mallShowBuy" : false,
				"productSelect" : true,
				"targetParent" : "productMarqueeForm",
				"target" : "imgDiv",
				"paramLayoutType" : 1,
				"propNameShow" : true,
				"productNameShow" : true,
				"productTextCenter" : false,
				"productNameWordWrap" : true
			};
			Fai.top.Product324.callbackArgs = [ {
				"m324marqueeProduct31" : "[]",
				"productName" : "小提琴兴趣培养班",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m324marqueeProduct30" : "[]",
				"productName" : "基础数学",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m324marqueeProduct29" : "[]",
				"productName" : "国画入门课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m324marqueeProduct28" : "[]",
				"productName" : "钢琴入门课程",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			}, {
				"m324marqueeProduct23" : "[]",
				"productName" : "硬笔书法",
				"productBuyBtnText" : "购买",
				"productBuyBtnClick" : ""
			} ];
			Fai.top.Product324.paramLayoutType = 1;
			Site.loadProductMarquee(324, true, true, 0);
			Fai.top.changeMarquee324 = function() {
				Fai.stopInterval('marquee324');
				Site.loadProductMarquee(324, true, true, 0);
			};

			Fai.top.tabModule325Switch = false;

			Site.initMulColModuleInIE('#module319');
			Site.setFullMeasureBgHightInIe6(329);

			Site.loadPhotoList(379, false, true, 1);
			jzUtils.run({
				"name" : "ImageEffect.FUNC.BASIC.Init",
				"callMethod" : true
			}, {
				"moduleId" : 379,
				"imgEffOption" : {
					"effType" : 1,
					"borderType" : false,
					"borderColor" : "#000",
					"borderWidth" : 1,
					"borderStyle" : 1,
					"style" : 4,
					"fullMaskCusBg" : false,
					"fullMaskCusName" : false,
					"fullMaskCusDisc" : false,
					"fullMaskOpenDisc" : false
				},
				"tagetOption" : {
					"nameHidden" : false,
					"nameWordWrap" : true,
					"targetParent" : "photoForm",
					"target" : "imgDiv"
				},
				"callback" : Site.createImageEffectContent_photo,
				"callbackArgs" : []
			});

			Site.initMulColModuleInIE('#module336');
			Site.setFullMeasureBgHightInIe6(345);

			Site.initPage(); // 这个要放在最后，因为模块组初始化时会把一些模块隐藏，导致没有高度，所以要放最后执行

			setTimeout("afterModuleLoaded()", 0);

			if (_manageMode) {

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
		var _signupHours = 27;
		var _cid = 10308282;
		var _resRoot = 'http://0.ss.faisys.com';
		var _colId = 2;
		var _extId = 0;
		var _fromColId = -1;
		var _designAuth = false;
		var _manageMode = false;
		var _oem = false;
		var _siteAuth = 0;
		var _adm = false;
		var _siteVer = 10;
		var _manageStatus = false;

		var nav2SubMenu = [];
		var nav107SubMenu = [];
		var nav108SubMenu = [];
		var nav105SubMenu = [];
		var nav13SubMenu = [];
		var nav110SubMenu = [];
		var nav9SubMenu = [];

		var _customBackgroundData = {
			"styleDefault" : true,
			"s" : true,
			"h" : false,
			"r" : 3,
			"o" : "",
			"sw" : -1,
			"e" : 0,
			"wbh" : -1,
			"wbw" : -1,
			"clw" : -1,
			"crw" : -1,
			"id" : "",
			"p" : "",
			"bBg" : {
				"y" : 0,
				"r" : 3,
				"f" : "",
				"p" : "",
				"c" : "#000"
			},
			"cBg" : {
				"y" : 0,
				"r" : 3,
				"f" : "",
				"p" : "",
				"c" : "#000"
			},
			"cmBg" : {
				"y" : 0,
				"r" : 3,
				"f" : "",
				"p" : "",
				"c" : "#000"
			}
		}; //自定义的数据
		var _templateBackgroundData = {
			"id" : "",
			"bBg" : {
				"y" : 0,
				"r" : 3,
				"f" : "",
				"p" : "",
				"c" : "#000"
			},
			"cBg" : {
				"y" : 0,
				"r" : 3,
				"f" : "",
				"p" : "",
				"c" : "#000"
			},
			"cmBg" : {
				"y" : 0,
				"r" : 3,
				"f" : "",
				"p" : "",
				"c" : "#000"
			},
			"sw" : 1200,
			"o" : "#fff",
			"s" : true,
			"h" : false,
			"r" : 3,
			"e" : 0,
			"wbh" : -1,
			"wbw" : -1,
			"clw" : -1,
			"crw" : -1,
			"p" : ""
		};// 模版的数据
		var _useTemplateBanner = true; // 是否使用全局模版
		var _templateBannerData = {
			"ce" : {},
			"pl" : 0,
			"l" : [
					{
						"i" : "title",
						"p" : "images/title.jpg",
						"w" : 1900,
						"h" : 400,
						"tp" : "images/title.jpg",
						"w" : 1900,
						"h" : 400,
						"tp" : "images/title.jpg",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM.jpg",
						"w" : 1900,
						"h" : 400,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM!100x100.jpg"
					},
					{
						"i" : "ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM",
						"p" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM.png",
						"w" : 1900,
						"h" : 400,
						"tp" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM!100x100.png"
					},
					{
						"i" : "ABUIABACGAAgzeeWvAUootHygwcw7A44kAM",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg",
						"w" : 1900,
						"h" : 400,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM!100x100.jpg"
					},
					{
						"i" : "ABUIABACGAAgmeeWvAUoqry3tQcwwAw4kAM",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgmeeWvAUoqry3tQcwwAw4kAM.jpg",
						"w" : 1600,
						"h" : 400,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgmeeWvAUoqry3tQcwwAw4kAM!100x100.jpg"
					},
					{
						"i" : "ABUIABACGAAg5uaWvAUo4MHI7gEwiA44wgM",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg5uaWvAUo4MHI7gEwiA44wgM.jpg",
						"w" : 1800,
						"h" : 450,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg5uaWvAUo4MHI7gEwiA44wgM!100x100.jpg"
					},
					{
						"i" : "ABUIABACGAAg__WWvAUonf6vvQcw4BI42AQ",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg__WWvAUonf6vvQcw4BI42AQ.jpg",
						"w" : 2400,
						"h" : 600,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg__WWvAUonf6vvQcw4BI42AQ!100x100.jpg"
					},
					{
						"i" : "ABUIABACGAAgw6SRvAUo4MrE_gEwjQs4sQM",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgw6SRvAUo4MrE_gEwjQs4sQM.jpg",
						"w" : 1421,
						"h" : 433,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgw6SRvAUo4MrE_gEwjQs4sQM!100x100.jpg"
					},
					{
						"i" : "ABUIABAEGAAg9oDkswUoxtjdyAYwgA84jgM",
						"p" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg9oDkswUoxtjdyAYwgA84jgM.png",
						"w" : 1920,
						"h" : 398,
						"tp" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg9oDkswUoxtjdyAYwgA84jgM!100x100.png"
					},
					{
						"i" : "ABUIABAEGAAg8eKWvAUo7NHYHzDsCTipAg",
						"p" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg8eKWvAUo7NHYHzDsCTipAg.png",
						"w" : 1260,
						"h" : 297,
						"tp" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAg8eKWvAUo7NHYHzDsCTipAg!100x100.png"
					},
					{
						"i" : "ABUIABACGAAghOOWvAUotPalmwYw7Qk4qQI",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAghOOWvAUotPalmwYw7Qk4qQI.jpg",
						"w" : 1261,
						"h" : 297,
						"tp" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAghOOWvAUotPalmwYw7Qk4qQI!100x100.jpg"
					} ],
			"n" : [
					{
						"t" : 1,
						"i" : "ABUIABACGAAgzeeWvAUootHygwcw7A44kAM",
						"e" : 1,
						"u" : "AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t",
						"jType" : 103,
						"jName" : "http://www.baidu.com",
						"jUrl" : "http://www.baidu.com",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgzeeWvAUootHygwcw7A44kAM.jpg",
						"w" : 1900,
						"h" : 400,
						"el" : "",
						"er" : ""
					},
					{
						"t" : 1,
						"i" : "ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM",
						"e" : 1,
						"u" : "AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t",
						"jType" : 103,
						"jName" : "http://www.baidu.com",
						"jUrl" : "http://www.baidu.com",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgveiWvAUo8uuSvgQw7A44kAM.jpg",
						"w" : 1900,
						"h" : 400,
						"el" : "",
						"er" : ""
					},
					{
						"t" : 1,
						"i" : "ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM",
						"e" : 1,
						"u" : "AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t",
						"jType" : 103,
						"jName" : "http://www.baidu.com",
						"jUrl" : "http://www.baidu.com",
						"p" : "http://10308282.s21i-10.faiusr.com/4/ABUIABAEGAAgvuiWvAUo4M_W6QMw7A44kAM.png",
						"w" : 1900,
						"h" : 400,
						"el" : "",
						"er" : ""
					},
					{
						"t" : 1,
						"i" : "ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM",
						"e" : 1,
						"u" : "AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t",
						"jType" : 103,
						"jName" : "http://www.baidu.com",
						"jUrl" : "http://www.baidu.com",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAgyeiWvAUokNXNqgMw7A44kAM.jpg",
						"w" : 1900,
						"h" : 400,
						"el" : "",
						"er" : ""
					},
					{
						"t" : 1,
						"i" : "ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM",
						"e" : 1,
						"u" : "AGcI/////w8SFGh0dHA6Ly93d3cuYmFpZHUuY29t",
						"jType" : 103,
						"jName" : "http://www.baidu.com",
						"jUrl" : "http://www.baidu.com",
						"p" : "http://10308282.s21i-10.faiusr.com/2/ABUIABACGAAg3eiWvAUo8LOhkAIw7A44kAM.jpg",
						"w" : 1900,
						"h" : 400,
						"el" : "",
						"er" : ""
					} ],
			"s" : 4,
			"c" : 5,
			"bt" : 0,
			"i" : 4000,
			"a" : 1500,
			"h" : false,
			"o" : false,
			"t" : 1,
			"p" : 0,
			"pt" : 0,
			"f" : {},
			"at" : 0,
			"ws" : false
		}; // 模版的数据
		var _pageBannerData = {
			"s" : 0,
			"i" : 4000,
			"a" : 1500,
			"h" : false,
			"o" : false,
			"t" : 1,
			"p" : 0,
			"pt" : 0,
			"pl" : 0,
			"bt" : 1,
			"l" : [],
			"f" : {},
			"ce" : {},
			"n" : [],
			"c" : 3,
			"at" : 0,
			"ws" : false
		}; // 当前页面的自定义数据（页面独立样式设置）
		var _bannerData = _templateBannerData;

		var _mallOpen = false;

		var _navStyleChanged = 0;
		var _navItemOnCkOpen = false; // 有下级菜单不可点击

		var _navStyleData = {
			"no" : true,
			"s" : 0,
			"ns" : {
				"w" : 889,
				"h" : 61
			},
			"cs" : {
				"w" : 889,
				"h" : 61
			},
			"np" : {},
			"ncp" : {
				"y" : 1,
				"t" : 41,
				"r" : -1,
				"b" : -1,
				"l" : 365,
				"hl" : 826,
				"ht" : 0
			},
			"cp" : {
				"y" : 0,
				"t" : -1,
				"l" : -1
			},
			"nis" : {
				"w" : 125,
				"h" : 61
			},
			"gt" : {
				"y" : 1,
				"f" : "微软雅黑",
				"s" : 16,
				"w" : 0,
				"c" : "#6f6f6f"
			},
			"ht" : {
				"y" : 1,
				"c" : "#e70c72"
			},
			"nb" : {
				"y" : 1,
				"c" : "#000",
				"f" : "",
				"r" : 0,
				"p" : ""
			},
			"cb" : {
				"c" : "#000",
				"f" : "",
				"r" : 0,
				"p" : "",
				"y" : 0
			},
			"nib" : {
				"c" : "#000",
				"r" : 0,
				"f" : "",
				"p" : "",
				"y" : 0
			},
			"nihb" : {
				"y" : 1,
				"c" : "#000",
				"r" : 0,
				"f" : "",
				"p" : ""
			},
			"niss" : {
				"w" : 0,
				"h" : 0
			},
			"nisb" : {
				"c" : "#000",
				"r" : 0,
				"f" : "",
				"p" : "",
				"y" : 0
			},
			"nsigt" : {
				"f" : "宋体",
				"s" : 12,
				"w" : 0,
				"c" : "#000",
				"y" : 0
			},
			"nsiht" : {
				"c" : "#000",
				"y" : 0
			},
			"nsis" : {
				"w" : -1,
				"h" : -1
			},
			"nsib" : {
				"c" : "#000",
				"r" : 0,
				"f" : "",
				"p" : "",
				"y" : 0
			},
			"nsihb" : {
				"c" : "#000",
				"r" : 0,
				"f" : "",
				"p" : "",
				"y" : 0
			},
			"nsiho" : 0,
			"nmove" : 1,
			"v" : 2,
			"nsmt" : {},
			"nsmb" : {},
			"nrs" : {
				"n" : {
					"t" : 0
				},
				"c" : {
					"t" : 0
				},
				"i" : {
					"t" : 0
				},
				"smt" : {
					"t" : 0
				},
				"smb" : {
					"t" : 0
				},
				"si" : {
					"t" : 0
				},
				"is" : {
					"t" : 0
				},
				"sis" : {
					"t" : 0
				}
			},
			"nsw" : {
				"n" : {
					"t" : 0
				},
				"c" : {
					"t" : 0
				},
				"i" : {
					"t" : 0
				},
				"sm" : {
					"t" : 0
				},
				"si" : {
					"t" : 0
				},
				"is" : {
					"t" : 0
				},
				"sis" : {
					"t" : 0
				}
			},
			"nbr" : {
				"n" : {
					"t" : 0
				},
				"i" : {
					"t" : 0
				},
				"sm" : {
					"t" : 0
				},
				"si" : {
					"t" : 0
				},
				"is" : {
					"t" : 0
				},
				"sis" : {
					"t" : 0
				}
			}
		}; // 栏目导航样式
		var _navHidden = false; //true:隐藏；flase：显示
		var _navPositionFixTop = false; // 导航栏固定到顶部
		var _navHeightChange = true; //导航栏高度改变，逻辑分界点2015-08-21
		var _siteDemo = false;

		var _backToTop = false;
		var _aid = 10308282;
		var _cloneAid = 7980515;
		var _templateLayout = 1;
		var _webBannerHeight = -1;
		var _isTemplateVersion2 = false;
		var _uiMode = false;
	</script>

	<script type="text/javascript">
		var fk_old_onload = window.onload;
		window.onload = function() {
			if (typeof fk_old_onload == "function") {
				fk_old_onload.apply(this, arguments);
			}

			Site.pageOnload();

		};

		$LAB
				.script("http://1.ss.faisys.com/js/photoSlide.min.js?v=201605161742");
		$LAB.script(
				"http://1.ss.faisys.com/js/imageEffect.min.js?v=201606131822")
				.wait(function() {
					jzUtils.trigger({
						"name" : "ImageEffect.FUNC.BASIC.Init",
						"base" : Site
					});
				});
	</script>



</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ page import="dwz.framework.constants.Constants"%>
<%@ page import="common.tree.Tree"%>
<html>
	<head>
		<!-- s:text name="ui.title" /-->
		<title>流程系统新平台</title>
		<%
			String path = "http://127.0.0.1:9999";
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			Object obj = session.getAttribute(Constants.AUTHENTICATION_KEY);
			System.out.println("登陆信息为：" + obj);
			if (obj == null)
				response.sendRedirect("/management/index!login.do");
		%>
		<script type="text/javascript">
var appPath= "<%=path%>
	";
</script>
		<base href="/">
			<link href="/styles/management/themes/default/style.css"
				rel="stylesheet" type="text/css" />
			<link href="/styles/management/themes/css/core.css" rel="stylesheet"
				type="text/css" />
			<link href="/uploadify/css/uploadify.css" rel="stylesheet"
				type="text/css" />
			<link href="/gridTree/GridTree.css" rel="stylesheet" type="text/css" />
			<script src="/styles/management/js/jquery-1.4.4.min.js"
				type="text/javascript">
</script>
			<script src="/uploadify/scripts/jquery.uploadify.js"
				type="text/javascript">
</script>
			<script src="/highcharts_3.0.10/js/highcharts.js"
				type="text/javascript">
</script>
			<script src="/highcharts_3.0.10/js/highcharts-more.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/speedup.js" type="text/javascript">
</script>
			<script src="/js/report/hightChartsUtil.js" type="text/javascript">
</script>
			<script src="/styles/management/js/jquery.cookie.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/jquery.validate.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/jquery.bgiframe.js"
				type="text/javascript">
</script>
			<!--	
	<script src="/styles/xheditor/xheditor-1.1.9-zh-cn.min.js"
		type="text/javascript"></script>

	<link rel="stylesheet" type="text/css"
		href="/styles/flexigrid_my/css/flexigrid_blue.css" />
	<script type="text/javascript" src="/styles/flexigrid_my/flexigrid.js"></script> 

	<!-- 下面是jquery的form插件. -->
			<script src="/styles/jquery.form.js" type="text/javascript">
</script>

			<!--  下面引入表格树 -->
			<script src="/gridTree/hashMap.js" type="text/javascript">
</script>
			<script src="/gridTree/GridTree.All.js" type="text/javascript">
</script>

			<script src="/styles/management/js/src/dwz.core.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.util.date.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.validate.method.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.regional.zh.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.barDrag.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.drag.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.tree.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.accordion.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.ui.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.theme.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.switchEnv.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.alertMsg.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.contextmenu.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.navTab.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.tab.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.resize.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.dialog.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.dialogDrag.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.cssTable.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.stable.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.taskBar.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.ajax.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.pagination.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.database.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.datepicker.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.effects.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.panel.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.checkbox.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.history.js"
				type="text/javascript">
</script>
			<script src="/styles/management/js/src/dwz.combox.js"
				type="text/javascript">
</script>



			<!-- 下面引入ZTree -->
			<link rel="stylesheet" href="/ztree2/css/zTreeStyle/zTreeStyle.css"
				type="text/css">
				<script type="text/javascript"
					src="/ztree2/js/jquery.ztree.core-3.5.js">
</script>
				<script type="text/javascript"
					src="/ztree2/js/jquery.ztree.excheck-3.5.js">
</script>
				<script type="text/javascript">
$(function() {
	DWZ.init("/styles/management/dwz.frag.xml", {
		loginUrl : "/management/index!login.do",
		loginTitle : "Login", // 弹出登录对话框 
		debug : false, // 调试模式 【true|false】
		callback : function() {
			initEnv();
			$("#themeList").theme( {
				themeBase : "styles/management/themes"
			});
		}
	});
});
//清理浏览器内存,/只对IE起效,FF不需要
if ($.browser.msie) {
	window.setInterval("CollectGarbage();", 10000);
}

function logout() {
	$.ajax( {
		type : 'POST',
		url : '/passport!logout.do',
		success : function() {
			location.reload();
		},
		error : DWZ.ajaxError
	});
}
</script>
	</head>
	<body scroll="no">
		<div id="layout">
			<div id="header">
				<div class="headerNav2">
					<font style='color: white;' size="8">欢迎使用生产管理系统</font>
					<!--  a target=blank
					href=tencent://message/?uin=1246910068&Site=思程工作室&Menu=yes><img
					border='0' SRC=http://wpa.qq.com/pa?p=1:1246910068:1 alt='后台开发'>
				</a-->
					<ul class="nav">
						<li>
							<a href="/money/myuser!myContact.do" target="dialog" mask="true">我的资料</a>
						</li>
						<li>
							<a href="/management/index!editPwd.do" target="dialog"
								mask="true">修改密码</a>
						</li>
						<li>
							<a onclick="logout()">退出登录</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="leftside">
				<div id="sidebar_s">
					<div class="collapse">
						<div class="toggleCollapse">
							<div></div>
						</div>
					</div>
				</div>
				<div id="sidebar">
					<div class="toggleCollapse">
						<h2>
							系统演示
						</h2>
						<div>
							收缩
						</div>
					</div>
					<div class="accordion" fillSpace="sideBar">
						${request.allMenu}
					</div>
				</div>
			</div>
			<div id="container">
				<div id="navTab" class="tabsPage">
					<div class="tabsPageHeader">
						<div class="tabsPageHeaderContent">
							<!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
							<ul class="navTab-tab">
								<li tabid="main" class="main">
									<a href="javascript:void(0)"><span><span
											class="home_icon">首页</span> </span> </a>
								</li>
							</ul>
						</div>
						<div class="tabsLeft">
							left
						</div>
						<!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
						<div class="tabsRight">
							right
						</div>
						<!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
						<div class="tabsMore">
							more
						</div>
					</div>
					<ul class="tabsMoreList">
						<li>
							<a href="javascript:void(0)">首页</a>
						</li>
					</ul>
					<div class="navTab-panel tabsPageContent"> 

							<div class="pageFormContent" layoutH="-80"> 
								 

								<div id="rep_chartdiv1" class="highcharts" type="column"
									serialName="时间" title='按月份统计注册用户数'
									style="width: 500px; height: 400px; float: left; border: 1 red;"
									url="/services/repReportService!reportUserByYearAndMonth.do"></div>

								<div id="rep_chartdiv2" class="highcharts" type="pie"
									serialName="区域" title='按区域统计注册用户数'
									style="width: 500px; height: 400px; float: left; border: 1 red;"
									url="/services/repReportService!reportUserByLocation.do"></div>
							</div>  
					</div>
				</div>
			</div>

		</div>

		<!--  div id="footer">© www.thinksafari.com &nbsp;&nbsp;&nbsp;&nbsp;
		思程工作室版权所有</div>-->
	</body>
</html>
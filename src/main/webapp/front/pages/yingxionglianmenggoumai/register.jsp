<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>注册</title>
		<link rel="stylesheet" href="../../assets/css/relys/login.css">
	</head>
	<body>
		<div class="container" id="app">
			<div class="loginBox">
				<h3>注册</h3>
				<form id="loginForm">
					<div class="input-wrapper">
						<label>卖家账号:</label>
						<input v-model="maijiazhanghao" type="text" name="" placeholder="请输入卖家账号">
					</div>
					<div class="input-wrapper">
						<label>卖家姓名:</label>
						<input v-model="maijiaxingming" type="text" name="" placeholder="请输入卖家姓名">
					</div>
					<div class="input-wrapper">
						<label>商品编号:</label>
						<input v-model="shangpinbianhao" type="text" name="" placeholder="请输入商品编号">
					</div>
					<div class="input-wrapper">
						<label>账号标题:</label>
						<input v-model="zhanghaobiaoti" type="text" name="" placeholder="请输入账号标题">
					</div>
					<div class="input-wrapper">
						<label>网络大区:</label>
						<input v-model="wangluodaqu" type="text" name="" placeholder="请输入网络大区">
					</div>
					<div class="input-wrapper">
						<label>游戏区服:</label>
						<input v-model="youxiqufu" type="text" name="" placeholder="请输入游戏区服">
					</div>
					<div class="input-wrapper">
						<label>游戏等级:</label>
						<input v-model="youxidengji" type="text" name="" placeholder="请输入游戏等级">
					</div>
					<div class="input-wrapper">
						<label>当前段位:</label>
						<input v-model="dangqianduanwei" type="text" name="" placeholder="请输入当前段位">
					</div>
					<div class="input-wrapper">
						<label>英雄数量:</label>
						<input v-model="yingxiongshuliang" type="text" name="" placeholder="请输入英雄数量">
					</div>
					<div class="input-wrapper">
						<label>皮肤数量:</label>
						<input v-model="pifushuliang" type="text" name="" placeholder="请输入皮肤数量">
					</div>
					<div class="input-wrapper">
						<label>账号价格:</label>
						<input v-model="zhanghaojiage" type="text" name="" placeholder="请输入账号价格">
					</div>
					<div class="input-wrapper">
						<label>手续费:</label>
						<input v-model="shouxufei" type="text" name="" placeholder="请输入手续费">
					</div>
					<div class="input-wrapper">
						<label>平台保障:</label>
						<input v-model="pingtaibaozhang" type="text" name="" placeholder="请输入平台保障">
					</div>
					<div class="input-wrapper">
						<label>实付金额:</label>
						<input v-model="shifujine" type="text" name="" placeholder="请输入实付金额">
					</div>
					<div class="input-wrapper">
						<label>用户名:</label>
						<input v-model="yonghuming" type="text" name="" placeholder="请输入用户名">
					</div>
					<div class="input-wrapper">
						<label>姓名:</label>
						<input v-model="xingming" type="text" name="" placeholder="请输入姓名">
					</div>
				</form>
				<a href="../login/login.jsp">已有账号？去登录</a>
				<button type="button" @click="userRegister">注册</button>
			</div>
		</div>
		<script src="../../assets/js/relys/jquery.js"></script>
		<script src="../../assets/js/relys/vue.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
			<script src="../../assets/js/validate.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					"maijiazhanghao": "",
					"maijiaxingming": "",
					"shangpinbianhao": "",
					"zhanghaobiaoti": "",
					"wangluodaqu": "",
					"youxiqufu": "",
					"youxidengji": "",
					"dangqianduanwei": "",
					"yingxiongshuliang": "",
					"pifushuliang": "",
					"zhanghaojiage": "",
					"shouxufei": "",
					"pingtaibaozhang": "",
					"shifujine": "",
					"yonghuming": "",
					"xingming": "",
				},
				methods: {
					userRegister(){
						var data = {
							"maijiazhanghao": this.maijiazhanghao,
							"maijiaxingming": this.maijiaxingming,
							"shangpinbianhao": this.shangpinbianhao,
							"zhanghaobiaoti": this.zhanghaobiaoti,
							"wangluodaqu": this.wangluodaqu,
							"youxiqufu": this.youxiqufu,
							"youxidengji": this.youxidengji,
							"dangqianduanwei": this.dangqianduanwei,
							"yingxiongshuliang": this.yingxiongshuliang,
							"pifushuliang": this.pifushuliang,
							"zhanghaojiage": this.zhanghaojiage,
							"shouxufei": this.shouxufei,
							"pingtaibaozhang": this.pingtaibaozhang,
							"shifujine": this.shifujine,
							"yonghuming": this.yonghuming,
							"xingming": this.xingming,
						}
						register('yingxionglianmenggoumai', data, function(res){
							if(res.code==0){
								alert('注册成功')
								window.parent.location.href = '../login/login.jsp'
							}
						})
					}
				}
			})
		</script>
	</body>
</html>

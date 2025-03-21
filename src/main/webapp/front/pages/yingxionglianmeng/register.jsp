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
						<label>游戏等级:</label>
						<input v-model="youxidengji" type="text" name="" placeholder="请输入游戏等级">
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
						<label>qq等级:</label>
						<input v-model="qqdengji" type="text" name="" placeholder="请输入qq等级">
					</div>
					<div class="input-wrapper">
						<label>账号价格:</label>
						<input v-model="zhanghaojiage" type="text" name="" placeholder="请输入账号价格">
					</div>
					<div class="input-wrapper">
						<label>赞:</label>
						<input v-model="thumbsupnum" type="text" name="" placeholder="请输入赞">
					</div>
					<div class="input-wrapper">
						<label>踩:</label>
						<input v-model="crazilynum" type="text" name="" placeholder="请输入踩">
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
					"youxidengji": "",
					"yingxiongshuliang": "",
					"pifushuliang": "",
					"qqdengji": "",
					"zhanghaojiage": "",
					"thumbsupnum": "",
					"crazilynum": "",
				},
				methods: {
					userRegister(){
					if(!isIntNumer(this.yingxiongshuliang)){
						alert(`英雄数量应输入整数`);
						return
					}
					if(!isIntNumer(this.pifushuliang)){
						alert(`皮肤数量应输入整数`);
						return
					}
					if(!isIntNumer(this.zhanghaojiage)){
						alert(`账号价格应输入整数`);
						return
					}
					if(!isIntNumer(this.thumbsupnum)){
						alert(`赞应输入整数`);
						return
					}
					if(!isIntNumer(this.crazilynum)){
						alert(`踩应输入整数`);
						return
					}
						var data = {
							"maijiazhanghao": this.maijiazhanghao,
							"maijiaxingming": this.maijiaxingming,
							"shangpinbianhao": this.shangpinbianhao,
							"zhanghaobiaoti": this.zhanghaobiaoti,
							"youxidengji": this.youxidengji,
							"yingxiongshuliang": this.yingxiongshuliang,
							"pifushuliang": this.pifushuliang,
							"qqdengji": this.qqdengji,
							"zhanghaojiage": this.zhanghaojiage,
							"thumbsupnum": this.thumbsupnum,
							"crazilynum": this.crazilynum,
						}
						register('yingxionglianmeng', data, function(res){
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

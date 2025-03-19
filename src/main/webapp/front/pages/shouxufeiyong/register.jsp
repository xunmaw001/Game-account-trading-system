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
						<label>价格区间:</label>
						<input v-model="jiagequjian" type="text" name="" placeholder="请输入价格区间">
					</div>
					<div class="input-wrapper">
						<label>手续费:</label>
						<input v-model="shouxufei" type="text" name="" placeholder="请输入手续费">
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
					"jiagequjian": "",
					"shouxufei": "",
				},
				methods: {
					userRegister(){
					if(!isIntNumer(this.shouxufei)){
						alert(`手续费应输入整数`);
						return
					}
						var data = {
							"jiagequjian": this.jiagequjian,
							"shouxufei": this.shouxufei,
						}
						register('shouxufeiyong', data, function(res){
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

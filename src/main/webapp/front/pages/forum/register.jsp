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
						<label>帖子标题:</label>
						<input v-model="title" type="text" name="" placeholder="请输入帖子标题">
					</div>
					<div class="input-wrapper">
						<label>父节点id:</label>
						<input v-model="parentid" type="text" name="" placeholder="请输入父节点id">
					</div>
					<div class="input-wrapper">
						<label>用户id:</label>
						<input v-model="userid" type="text" name="" placeholder="请输入用户id">
					</div>
					<div class="input-wrapper">
						<label>用户名:</label>
						<input v-model="username" type="text" name="" placeholder="请输入用户名">
					</div>
					<div class="input-wrapper">
						<label>是否关闭[关闭/开放]:</label>
						<input v-model="isdone" type="text" name="" placeholder="请输入是否关闭[关闭/开放]">
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
					"title": "",
					"parentid": "",
					"userid": "",
					"username": "",
					"isdone": "",
				},
				methods: {
					userRegister(){
						if(!this.content){
							alert(`帖子内容不能为空`);
							return
						}
						if(!this.userid){
							alert(`用户id不能为空`);
							return
						}
						var data = {
							"title": this.title,
							"parentid": this.parentid,
							"userid": this.userid,
							"username": this.username,
							"isdone": this.isdone,
						}
						register('forum', data, function(res){
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

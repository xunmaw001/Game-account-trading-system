<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../../assets/css/relys/bootstrap.min.css"/>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link rel="stylesheet" type="text/css" href="../../assets/css/relys/style.css"/>
		<link rel="stylesheet" type="text/css" href="style.css"/>
		<style type="text/css">
			.contact-area {
			  background: #efefef none repeat scroll 0 0;
			  margin-top: 50px;
			  padding: 50px 0;
			}
			.contact-form {
			  background: #fff none repeat scroll 0 0;
			  padding: 20px 25px;
			}
			.message-title > p {
			  margin-bottom: 31px;
			}
			.input-filed{}
			.input-filed input {
				border: 1px solid #e3e3e3;
				border-radius: 0;
				box-shadow: none;
				font-size: 13px;
				height: 45px;
				margin-bottom: 20px;
				padding-left: 15px;
				width: 100%;
			}
			.contact-textarea{}
			.contact-textarea label{ }
			.contact-textarea textarea {
				border: 1px solid #e3e3e3;
				border-radius: 0;
				font-size: 13px;
				height: 124px;
				padding: 10px 15px;
				width: 100%;
			}
			.contact-textarea > input {
				background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
				border: 1px solid #e3e3e3;
				height: 40px;
				margin-top: 15px;
				padding: 3px 40px;
				text-transform: uppercase;
				transition: all 0.3s ease 0s;
			}
			.contact-textarea > input:hover{background:#FE4847;border-color:#FE4847;color:#fff}
			.contact-info {
			  background: #fff none repeat scroll 0 0;
			  padding: 20px 25px 38px;
			}
			.message-title {
			  margin-bottom: 25px;
			}
			.single-contact {
			}
			.single-contact p{margin-bottom:14px}
			.single-contact p:last-child{margin-bottom:0}
			.single-contact label {
				color: #444;
				display: block;
				font-weight: normal;
				font-weight: 600;
			}
			.contact-icon {
			  float: left;
			}
			.contact-icon i {
			  color: #fe4847;
			  font-size: 30px;
			}
			.contact-method {
			  margin-left: 45px;
			}
			.contact-method h2,.message-title h1 {
			  color: #242424;
			  font-size: 20px;
			  font-weight: 600;
			  text-transform: uppercase;
			}
			.contact-method span {
			  text-transform: capitalize;
			}
			.map-area {
				background: #fff none repeat scroll 0 0;
				padding: 10px;
				margin-bottom: 90px;
			}
			#googleMap{height:385px}
			.recharge-box {
				display: flex !important;
			}
		
			.recharge-btn {
				font-weight: 500 !important;
				color: #444 !important;
				font-size: 12px !important;
				margin-left: 10px;
			}
		
			.recharge-btn:hover {
				color: #1a73e8 !important;
			}
		
			.update-btn {
				font-size: 15px !important;
				color: #444 !important;
				margin-left: 10px;
				font-weight: 500 !important;
			}
		
			.update-btn:hover {
				color: #1a73e8 !important;
			}
		
			.logout-btn {
				height: 40px;
				margin-top: 15px;
				padding: 3px 40px;
				color: #fff;
				background-color: #1a73e8;
				border: 0;
			}
		
			.avator {
				width: 100px;
				height: 100px;
				border-radius: 50%;
				border: 1px solid #EEEEEE;
				margin: 20px 0;
			}
			.contact-form button{
				border: 1px solid #e3e3e3;
				line-height: 45px;
				padding: 0 30px;
				background-color: #fff;
			},
			.atavar-btn {
				display: inline-block;
				margin-left: 20px!important;
			}
			.atavar-btn:hover{
				color: #1a73e8;
			}
			.pay-type-box{
				clear: both;
				margin-top: 20px;
			}
			.pay-type-box ul{
					display: flex;
					flex-wrap: wrap;
					justify-content: space-between;
					padding: 0 15px;
			}
			.pay-type-box ul li {
				width: 30%;
				border: 1px solid #CCCCCC;
				padding: 20px;
				box-sizing: border-box;
				height: 90px;
				display: flex;
				justify-content: space-between;
				align-items: center;
				margin-bottom: 20px;
			}
			.pay-type-box ul li input{
				margin-right: 10px;
			}
			.pay-type-box ul li .radio-box span.active{
				font-weight: 600;
				color: #444;
			}
			.pay-type-box ul li img{
				width: auto;
				height: 100%;
			}
			.layui-form-label{
				padding: 0!important;
				width: auto!important;
				line-height: 45px;
			}
		</style>
	</head>
	<body>
		<div id="app">
			<!-- page-title-area start -->
			<section class="page-header bg_img padding-tb">
				<div class="overlay"></div>
				<div class="container">
					<div class="page-header-content-area">
						<h4 class="ph-title">个人中心</h4>
						<ul class="agri-ul">
							<li><a href="../../index.jsp">首页</a></li>
							<li><a class="active">个人中心</a></li>
						</ul>
					</div>
				</div>
			</section>
			<!-- page-title-area end -->
			<!-- contact-area start -->
			<div class="contact-area pad-60" v-if="'maijia'==usertable">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="contact-info">
								<div class="message-title">
									<h1>个人信息<label class="update-btn" v-if="formType=='recharge'" @click="updateFormType('updateuser')">(信息修改)</label></h1>
								</div>
								<div class="single-contact">
									<div class="avator-box">
										<label>认证照片</label>
										<img class="avator" :src="maijiauser.renzhengzhaopian?maijiauser.renzhengzhaopian:'../../assets/images/author.jpg'">
									</div>
									<p style="display: flex;">
										<label style="margin-right: 20px;">卖家姓名</label>
										{{maijiauser.maijiaxingming}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">性别</label>
										{{maijiauser.xingbie}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">出生年月</label>
										{{maijiauser.chushengnianyue}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">qq账号</label>
										{{maijiauser.qqzhanghao}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">联系电话</label>
										{{maijiauser.lianxidianhua}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">电子邮箱</label>
										{{maijiauser.dianziyouxiang}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">身份证号</label>
										{{maijiauser.shenfenzhenghao}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">家庭地址</label>
										{{maijiauser.jiatingdizhi}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">是否审核</label>
										{{maijiauser.sfsh}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">审核回复</label>
										{{maijiauser.shhf}}
									</p>

								</div>
								<a :href="`${houtaiurl}`" target="view_window" style="display: block;">
									<button class="logout-btn" @click="myhoutai">我的后台</button>
								</a>
								<button style="display: block;" class="logout-btn" @click="logout">退出登录</button>
								<button style="display: block;" class="logout-btn" @click="resetPass('../maijia/reset.jsp')">重置密码</button>
							</div>
						</div>
						<div class="col-md-8">
							<div class="contact-form" v-if="formType=='updateuser'">
								<div class="message-title">
									<h1>信息修改</h1>
								</div>
								<div class="row layui-form" lay-filter="layform">
									<div class="input-filed">
										<div class="col-md-12">
											<label>认证照片：</label>
											<img @click="onAvatorTap('renzhengzhaopian')" class="avator" :src="maijiauser.renzhengzhaopian?maijiauser.renzhengzhaopian:'../../assets/images/author.jpg'">
											<label class="atavar-btn" @click="onAvatorTap('renzhengzhaopian')" style="margin-left: 20px;">更换认证照片</label>
											<input type="file" ref="fileInput" accept="image/*" @change="getFile" style="display: none">
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">卖家姓名</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.maijiaxingming" type="text" name="" placeholder="请输入卖家姓名" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">性别</label>
												<div class="layui-input-block">
													<select :value="maijiaform.xingbie" style="height: 45px;width:100px;" lay-filter="maijiaxingbie" id="maijiaxingbie" name="interest">
														<option :value="item" v-for="(item,index) in maijiaxingbieOptions">{{item}}</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">出生年月</label>
												<div class="layui-input-block">
													<input :value="maijiaform.chushengnianyue" type="text" name="" placeholder="请输入出生年月" autocomplete="off" class="layui-input"  id="maijiachushengnianyue">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">qq账号</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.qqzhanghao" type="text" name="" placeholder="请输入qq账号" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">联系电话</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.lianxidianhua" type="text" name="" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">电子邮箱</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.dianziyouxiang" type="text" name="" placeholder="请输入电子邮箱" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">身份证号</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.shenfenzhenghao" type="text" name="" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">家庭地址</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.jiatingdizhi" type="text" name="" placeholder="请输入家庭地址" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">审核回复</label>
												<div class="layui-input-block">
													<input v-model="maijiaform.shhf" type="text" name="" placeholder="请输入审核回复" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea">
											<button @click="onUpdateTap">修改</button>
										</div>
									</div>
								</div>
							</div>
							<div class="contact-form" v-if="formType=='recharge'">
								<div class="message-title">
									<h1>余额充值</h1>
								</div>
								<div class="row">
									<div class="input-filed">
										<div class="col-md-12">
											<input name="name" v-model="num" type="number" placeholder="充值额度" />
										</div>
									</div>
									<div class="pay-type-box">
										<ul>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="微信支付" v-model="paytype" />
													<span :class="paytype=='微信支付'">微信支付</span>
												</div>
												<img src="../../assets/images/iconpay/wx.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="支付宝支付" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/zfb.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="建设银行" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/js.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="交通银行" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/jt.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="中国邮政" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/yz.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="中国银行" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/zg.png">
											</li>
										</ul>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea">
											<button @click="onRechargeTap">充值</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="contact-area pad-60" v-if="'yonghu'==usertable">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="contact-info">
								<div class="message-title">
									<h1>个人信息<label class="update-btn" v-if="formType=='recharge'" @click="updateFormType('updateuser')">(信息修改)</label></h1>
								</div>
								<div class="single-contact">
									<div class="avator-box">
										<label>个人照片</label>
										<img class="avator" :src="yonghuuser.gerenzhaopian?yonghuuser.gerenzhaopian:'../../assets/images/author.jpg'">
									</div>
									<p style="display: flex;">
										<label style="margin-right: 20px;">姓名</label>
										{{yonghuuser.xingming}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">年龄</label>
										{{yonghuuser.nianling}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">出生年月</label>
										{{yonghuuser.chushengnianyue}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">qq账号</label>
										{{yonghuuser.qqzhanghao}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">电话号码</label>
										{{yonghuuser.dianhuahaoma}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">邮箱号码</label>
										{{yonghuuser.youxianghaoma}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">身份证号</label>
										{{yonghuuser.shenfenzhenghao}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">家庭地址</label>
										{{yonghuuser.jiatingdizhi}}
									</p>

								</div>
								<a :href="`${houtaiurl}`" target="view_window" style="display: block;">
									<button class="logout-btn" @click="myhoutai">我的后台</button>
								</a>
								<button style="display: block;" class="logout-btn" @click="logout">退出登录</button>
								<button style="display: block;" class="logout-btn" @click="resetPass('../yonghu/reset.jsp')">重置密码</button>
							</div>
						</div>
						<div class="col-md-8">
							<div class="contact-form" v-if="formType=='updateuser'">
								<div class="message-title">
									<h1>信息修改</h1>
								</div>
								<div class="row layui-form" lay-filter="layform">
									<div class="input-filed">
										<div class="col-md-12">
											<label>个人照片：</label>
											<img @click="onAvatorTap('gerenzhaopian')" class="avator" :src="yonghuuser.gerenzhaopian?yonghuuser.gerenzhaopian:'../../assets/images/author.jpg'">
											<label class="atavar-btn" @click="onAvatorTap('gerenzhaopian')" style="margin-left: 20px;">更换个人照片</label>
											<input type="file" ref="fileInput" accept="image/*" @change="getFile" style="display: none">
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">姓名</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.xingming" type="text" name="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">年龄</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.nianling" type="text" name="" placeholder="请输入年龄" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">出生年月</label>
												<div class="layui-input-block">
													<input :value="yonghuform.chushengnianyue" type="text" name="" placeholder="请输入出生年月" autocomplete="off" class="layui-input"  id="yonghuchushengnianyue">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">qq账号</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.qqzhanghao" type="text" name="" placeholder="请输入qq账号" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">电话号码</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.dianhuahaoma" type="text" name="" placeholder="请输入电话号码" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">邮箱号码</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.youxianghaoma" type="text" name="" placeholder="请输入邮箱号码" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">身份证号</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.shenfenzhenghao" type="text" name="" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">家庭地址</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.jiatingdizhi" type="text" name="" placeholder="请输入家庭地址" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea">
											<button @click="onUpdateTap">修改</button>
										</div>
									</div>
								</div>
							</div>
							<div class="contact-form" v-if="formType=='recharge'">
								<div class="message-title">
									<h1>余额充值</h1>
								</div>
								<div class="row">
									<div class="input-filed">
										<div class="col-md-12">
											<input name="name" v-model="num" type="number" placeholder="充值额度" />
										</div>
									</div>
									<div class="pay-type-box">
										<ul>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="微信支付" v-model="paytype" />
													<span :class="paytype=='微信支付'">微信支付</span>
												</div>
												<img src="../../assets/images/iconpay/wx.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="支付宝支付" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/zfb.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="建设银行" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/js.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="交通银行" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/jt.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="中国邮政" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/yz.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="中国银行" v-model="paytype" />
												</div>
												<img src="../../assets/images/iconpay/zg.png">
											</li>
										</ul>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea">
											<button @click="onRechargeTap">充值</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- contact-area end -->
		</div>
		<script src="../../assets/js/relys/jquery.js"></script>
		<!-- vue.js -->
		<script src="../../assets/js/relys/vue.js"></script>
		<!-- 网络请求 -->
		<script src="../../assets/js/api/api.js"></script>
		<!-- 用户相关 -->
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script src="../../layui/layui.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script src="../../assets/js/relys/storage.js"></script>
		<script src="../../assets/js/validate.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					houtaiurl: "",
					imgTemp: '',
					formType: 'updateuser',
					pictureKey: "",
					maijiauser: {
						id: "",
						maijiazhanghao: "",
						mima: "",
						maijiaxingming: "",
						xingbie: "",
						chushengnianyue: "",
						qqzhanghao: "",
						lianxidianhua: "",
						dianziyouxiang: "",
						shenfenzhenghao: "",
						jiatingdizhi: "",
						renzhengzhaopian: "",
						sfsh: "",
						shhf: "",
					},
					yonghuuser: {
						id: "",
						yonghuming: "",
						mima: "",
						xingming: "",
						nianling: "",
						chushengnianyue: "",
						qqzhanghao: "",
						dianhuahaoma: "",
						youxianghaoma: "",
						shenfenzhenghao: "",
						jiatingdizhi: "",
						gerenzhaopian: "",
					},
					maijiaform: {
						id: "",
						maijiazhanghao: "",
						mima: "",
						maijiaxingming: "",
						xingbie: "",
						chushengnianyue: "",
						qqzhanghao: "",
						lianxidianhua: "",
						dianziyouxiang: "",
						shenfenzhenghao: "",
						jiatingdizhi: "",
						renzhengzhaopian: "",
						sfsh: "",
						shhf: "",
					},
					yonghuform: {
						id: "",
						yonghuming: "",
						mima: "",
						xingming: "",
						nianling: "",
						chushengnianyue: "",
						qqzhanghao: "",
						dianhuahaoma: "",
						youxianghaoma: "",
						shenfenzhenghao: "",
						jiatingdizhi: "",
						gerenzhaopian: "",
					},
					num: null,
					usertable: "maijia",
					paytype: "",
					maijiaxingbieOptions: [],
				},
				created() {
					this.maijiaxingbieOptions = "男,女".split(',')
					var usertable = getStorage("sessionTable")
					if(usertable=="users"||usertable=="user" ){
						window.location.href = '../login/login.jsp'
					}
					this.usertable = usertable
					this.getUser()
				},
				updated() {
					layui.form.render('select','layform');
				},
				methods: {
					myhoutai(){
						this.houtaiurl = adminurl
					},
					getUser(){
						var _this = this;
						session(`${this.usertable}`, function(res) {
							for(var key in res.data){
								_this[`${_this.usertable}user`][key] = res.data[key]
								_this[`${_this.usertable}form`][key] = res.data[key]
							}
						});
					},
					logout(){
						localStorage.removeItem('Token')
						localStorage.removeItem("sessionTable") 
						window.location.href = '../login/login.jsp'
					},
					resetPass(url){
						window.location.href = url
					},
					updateFormType(type) {
						this.formType = type
					},
					onUpdateTap() {
						if(this.usertable=="maijia"){
						this[`${this.usertable}form`].chushengnianyue = $("#maijiachushengnianyue").val()
						}
						if(this.usertable=="yonghu"){
						this[`${this.usertable}form`].chushengnianyue = $("#yonghuchushengnianyue").val()
						}
						if(this.usertable=="youxileibie"){
						}
						if(this.usertable=="shouxufeiyong"){
						}
						if(this.usertable=="dixiachengyuyongshi"){
						}
						if(this.usertable=="dixiachengzhanghaogoumai"){
						}
						if(this.usertable=="dixiachengzhanghaohuanbang"){
						}
						if(this.usertable=="dixiachengzhanghaoshensu"){
						}
						if(this.usertable=="dixiachengsixinliaotian"){
						}
						if(this.usertable=="dixiachengsixinhuifu"){
						}
						if(this.usertable=="yingxionglianmeng"){
						}
						if(this.usertable=="yingxionglianmenggoumai"){
						}
						if(this.usertable=="yingxionglianmenghuanbang"){
						}
						if(this.usertable=="yingxionglianmengshensu"){
						}
						if(this.usertable=="yingxionglianmengsixin"){
						}
						if(this.usertable=="yingxionglianmenghuifu"){
						}
						if(this.usertable=="youxizhanghao"){
						}
						if(this.usertable=="zhanghaojiaoyijilu"){
						}
						if(this.usertable=="youxizhanghaohuanbang"){
						}
						if(this.usertable=="youxizhanghaoshensu"){
						}
						if(this.usertable=="sixinliaotianjilu"){
						}
						if(this.usertable=="sixinliaotianhuifu"){
						}
						if(this.usertable=="chat"){
						}
						if(this.usertable=="forum"){
						}
						if(this.usertable=="storeup"){
						}
						if(this.usertable=="news"){
						}
						if(this.usertable=="messages"){
						}
						if(this.usertable=="discussdixiachengyuyongshi"){
						}
						if(this.usertable=="discussyingxionglianmeng"){
						}
						if(this.usertable=="discussyouxizhanghao"){
						}
						if(this.usertable=="maijia"){
							if(!isIntNumer(this[`${this.usertable}form`].qqzhanghao)){
								alert(`qq账号应输入整数`);
								return
							}
							if(!isMobile(this[`${this.usertable}form`].lianxidianhua)){
								alert(`联系电话应输入电话格式`);
								return
							}
							if(!isEmail(this[`${this.usertable}form`].dianziyouxiang)){
								alert(`电子邮箱应输入邮件格式`);
								return
							}
							if(!checkIdCard(this[`${this.usertable}form`].shenfenzhenghao)){
								alert(`身份证号应输入身份证格式`);
								return
							}
						}
						if(this.usertable=="yonghu"){
							if(!isIntNumer(this[`${this.usertable}form`].nianling)){
								alert(`年龄应输入整数`);
								return
							}
							if(!isIntNumer(this[`${this.usertable}form`].qqzhanghao)){
								alert(`qq账号应输入整数`);
								return
							}
							if(!isMobile(this[`${this.usertable}form`].dianhuahaoma)){
								alert(`电话号码应输入电话格式`);
								return
							}
							if(!isEmail(this[`${this.usertable}form`].youxianghaoma)){
								alert(`邮箱号码应输入邮件格式`);
								return
							}
							if(!checkIdCard(this[`${this.usertable}form`].shenfenzhenghao)){
								alert(`身份证号应输入身份证格式`);
								return
							}
						}
						updateUser(`${this.usertable}`, this[`${this.usertable}form`], (res) => {
							this.getUser()
							alert('修改成功');
						})
					},
					onAvatorTap(pictureKey) {
						this.pictureKey = pictureKey
						console.log(this.pictureKey)
						this.$refs.fileInput.click()
					},
					//第三步: 文件选择后, 后在页面上显示出来    转base64位的操作
					getFile(event) {
						var _this = this;
						const files = event.target.files
						let filename = files[0].name //只有一个文件
						if (filename.lastIndexOf('.') <= 0) {
							return alert("请上传一个有效的文件") //判断图片是否有效
						}
						upload(files[0], function(res) {
							console.log(res.file)
							_this[`${_this.usertable}user`][`${_this.pictureKey}`] = baseurl + 'upload/' + res.file
							_this[`${_this.usertable}form`][`${_this.pictureKey}`] = baseurl + 'upload/' + res.file
						})
					},
					onRechargeTap() {
						var _this = this;
						if (!this.num) {
							alert("请输入充值金额");
							return
						}
						if(!this.paytype){
							alert("请选择充值方式")
							return
						}
						var money = parseInt(_this[`${this.usertable}user`].money?_this[`${this.usertable}user`].money:0) +  parseFloat(this.num);
						this[`${this.usertable}form`].money = money
						updateUser(`${this.usertable}`, this[`${this.usertable}form`], (res) => {
							this.getUser()
							alert('充值成功');
						})
					}
				}
			})
			$(function(){
				layui.use('laydate', function(){
					var laydate = layui.laydate;

					// 日期选择器
					laydate.render({
						elem: '#maijiachushengnianyue',
						type: 'date'
					});

					// 日期选择器
					laydate.render({
						elem: '#yonghuchushengnianyue',
						type: 'date'
					});
				});

				layui.use(['form','layedit'], function(){
					var form = layui.form,
						layedit = layui.layedit,
						$ = layui.jquery,
						layer = layui.layer;
					form.on('select(maijiaxingbie)', function(data){
						app[`${app.usertable}form`].xingbie = data.value
					});
				});

			});
		</script>
	</body>
</html>

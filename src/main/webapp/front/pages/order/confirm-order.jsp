<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>确认订单</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="../../assetsimages/x-icon/agricul.png">
		<link rel="stylesheet" href="../../assets/css/relys/animate.css">
		<link rel="stylesheet" href="../../assets/css/relys/bootstrap.min.css">
		<link rel="stylesheet" href="../../assets/css/relys/all.min.css">
		<link rel="stylesheet" href="../../assets/css/relys/icofont.min.css">
		<link rel="stylesheet" href="../../assets/css/relys/lightcase.css">
		<link rel="stylesheet" href="../../assets/css/relys/swiper.min.css">
		<link rel="stylesheet" href="../../assets/css/relys/style.css">
		<style type="text/css">
			.cart-checkout-box button, .address-btn-box button{
					padding: 11px 30px;
					border: 1px solid #f0f0f0;
					-webkit-border-radius: 3px;
					-moz-border-radius: 3px;
					border-radius: 3px;
					font-size: 16px;
					border: none;
					background: #1a73e8;
					color: #fff;
					outline: none;
					border: none;
				}
		</style>
	</head>
	<body>
		<div id="app">
			<!-- Page Header Section Start Here -->
			<section class="page-header bg_img padding-tb">
			    <div class="overlay"></div>
			    <div class="container">
			        <div class="page-header-content-area">
			            <h4 class="ph-title">确认订单</h4>
			            <ul class="agri-ul">
			                <li><a href="index.jsp">首页</a></li>
			                <li><a class="active">确认订单</a></li>
			            </ul>
			        </div>
			    </div>
			</section>
			<!-- Page Header Section Ending Here -->
			
			
			<!-- Shop Cart Page Section start here -->		            
			<div class="shop-cart padding-tb">
			    <div class="container">
			        <div class="section-wrapper">
						<div class="cart-top">
							<h4>地址列表</h4>
							<ul style="list-style: none;">
								<li v-for="item in addressList" style="line-height: 30px;">
									<input type="radio" v-model="address" :value="item.address" name="address" />
									{{item.name}} {{item.phone}} {{item.address}}
								</li>
							</ul>
							<div class="address-btn-box">
								<button style="margin-top:20px;" class="btn_1" @click="onPageTap('../address/address-edit.jsp')">新增收货地址</button>
							</div>
						</div>
			            <div class="cart-top">
							<h4>订单详细</h4>
			                <table>
			                    <thead>
			                        <tr>
			                            <th>商品</th>
			                            <th>价格</th>
			                            <th>数量</th>
			                            <th>总价</th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr v-for="(item, i) in orderGoods">
			                            <td class="product-item" style="display: flex;">
											<!-- <input type="checkbox" name="cart" style="margin-right: 10px;" /> -->
			                                <div class="p-thumb">
			                                    <img style="width: 85px;height: 85px;object-fit: cover;" :src="item.picture" alt="product">
			                                </div>
			                                <div class="p-content" style="width: auto;">
			                                    <a href="#">{{item.goodname}}</a>
			                                </div>
			                            </td>
			                            <td>￥{{item.price}}</td>
			                            <td>
			                                <div class="cart-plus-minus">
			                                    <input readonly="readonly" style="background-color: #f8f8f8;" class="cart-plus-minus-box" type="text" name="qtybutton" :value="item.buynumber">
			                                </div>
			                            </td>
			                            <td>￥{{item.price*item.buynumber}}</td>
			                        </tr>
			                    </tbody>
			                </table>
			            </div>
						<div class="cart-checkout-box" style="float: right;">
							<h5>总价：<span style="color: red;">￥{{totalPrice}}</span></h5>
						    <button @click="onOrderTap">立即支付</button>
						</div>
					</div>
			    </div>
			</div>
			<!-- Shop Cart Page Section ending here -->
		</div>
	</body>
	<script src="../../assets/js/relys/jquery.js"></script>
	<script src="../../assets/js/relys/fontawesome.min.js"></script>
	<script src="../../assets/js/relys/waypoints.min.js"></script>
	<script src="../../assets/js/relys/bootstrap.min.js"></script>
	<script src="../../assets/js/relys/wow.min.js"></script>
	<script src="../../assets/js/relys/swiper.min.js"></script>
	<script src="../../assets/js/relys/jquery.countdown.min.js"></script>
	<script src="../../assets/js/relys/jquery.counterup.min.js"></script>
	<script src="../../assets/js/relys/isotope.pkgd.min.js"></script>
	<script src="../../assets/js/relys/lightcase.js"></script>
	<script src="../../assets/js/relys/vue.js"></script>
	<!-- 异步请求 -->
	<script src="../../assets/js/api/api.js"></script>
	<!-- 工具类 -->
	<script src="../../assets/js/relys/utils.js"></script>
	<!-- 用户接口 -->
	<script src="../../assets/js/api/defaultuser.js"></script>
	<!-- 购物车 -->
	<script src="../../assets/js/api/shop-cart.js"></script>
	<!-- 地址接口 -->
	<script src="../../assets/js/api/shop-address.js"></script>
	<!-- 订单接口 -->
	<script src="../../assets/js/api/tplist.js"></script>
	<script src="../../assets/js/api/order.js"></script>
	<script type="text/javascript">
		var app = new Vue({
			el: '#app',
			data: {
				orderGoods: [],
				totalPrice: 0,
				addressList: [],
				user: {},
				address: '',
				xuanzuo: "",
				type: 0
			},
			created() {
				var xuanzuo = getParam('xuanzuo')
				var type = getParam('type')
				// 积分兑换
				if(type==2){
					this.type = 2;
				}
				this.xuanzuo = xuanzuo?xuanzuo:0
				var _this = this;
				var orderGoods = JSON.parse(localStorage.getItem('orderGoods'));
				this.orderGoods = orderGoods;
				var totalPrice = 0;
				for (var i = 0; i < orderGoods.length; i++) {
					totalPrice += parseFloat(orderGoods[i].price) * parseFloat(orderGoods[i].buynumber);
				}
				this.totalPrice = totalPrice;
				addressList(1, 100, function(res) {
					_this.addressList = res.data.list
				});
				var user = localStorage.getItem("sessionTable")
				session(`${user}`, function(res) {
					_this.user = res.data
				});
			},
			methods: {
				onPageTap(url){
					window.location.href = url
				},
				onOrderTap() {
					let _this = this;
					var msg = ""
					var status = ""
					if (!_this.address) {
						alert('请选择收货地址');
						return
					}
					if (_this.user.money < _this.totalPrice) {
						msg = "账户余额不足，请移步个人中心充值"
						status = "未支付"
					}else if(_this.type==2 && (_this.user.jifen < _this.totalPrice) ){
						alert('账户积分不足，兑换失败');
						return
					}else{
						msg = "支付成功"
						status = "已支付"
						if(_this.type==2){
							_this.user.jifen = _this.user.jifen - _this.totalPrice;
						}else{
							_this.user.money = _this.user.money - _this.totalPrice;
							if(_this.user.jifen||_this.user.jifen==0){
								_this.user.jifen = _this.user.jifen +  _this.totalPrice;
							}
						}
						var user = localStorage.getItem("sessionTable")
						updateUser(`${user}`, _this.user, function() {});
						// _this.user.money = _this.user.money - _this.totalPrice;
						// var user = localStorage.getItem("sessionTable")
						// updateUser(`${user}`, _this.user, function() {});
					}
					
					for (let i = 0; i < _this.orderGoods.length; i++) {
						ordersSave({
							orderid: genTradeNo(),
							tablename: _this.orderGoods[i].tablename,
							userid: _this.user.id,
							goodid: _this.orderGoods[i].goodid,
							goodname: _this.orderGoods[i].goodname,
							picture: _this.orderGoods[i].picture,
							buynumber: _this.orderGoods[i].buynumber,
							discountprice: _this.orderGoods[i].price,
							price: _this.orderGoods[i].price,
							total: _this.orderGoods[i].price * _this.orderGoods[i].buynumber,
							discounttotal: _this.orderGoods[i].price * _this.orderGoods[i].buynumber,
							type: 1,
							address: _this.address,
							status: status
						}, function(res) {
							if(_this.xuanzuo){
								var data = JSON.parse(localStorage.getItem("xuanzuo"))
								data.selected = data.oldSelected + "," + data.selected;
								updateFun(`${ _this.orderGoods[i].tablename}`, data, (res)=>{
									if(res.code==0){
										alert(`${msg}`);
										window.location.href = '../order/order-list.jsp'
									}
									})
							}else{
								if (_this.orderGoods[i].id) {
									localStorage.removeItem(`cart${_this.orderGoods[i].goodid}`)
									cartDelete([_this.orderGoods[i].id], function(res) {
										if(i==_this.orderGoods.length-1){
											alert(`${msg}`);
											window.location.href = '../order/order-list.jsp'
										}
									})
									// 库存减少
									goodsInfo(_this.orderGoods[i].tablename,_this.orderGoods[i].goodid,function(res){
										res.data.alllimittimes = res.data.alllimittimes - _this.orderGoods[i].buynumber;
										// 更新库存信息
										updateFun(_this.orderGoods[i].tablename, res.data, function(res){});
									})
								}else{
									if(i==_this.orderGoods.length-1){
										alert(`${msg}`);
										window.location.href = '../order/order-list.jsp'
									}
								}
							}
							// if (_this.orderGoods[i].id) {
							// 	localStorage.removeItem(`cart${_this.orderGoods[i].goodid}`)
							// 	cartDelete([_this.orderGoods[i].id], function(res) {
							// 		if(i==_this.orderGoods.length-1){
							// 			alert(`${msg}`);
							// 			window.location.href = '../order/order-list.jsp'
							// 		}
							// 	})
							// }else{
							// 	if(i==_this.orderGoods.length-1){
							// 		alert(`${msg}`);
							// 		window.location.href = '../order/order-list.jsp'
							// 	}
							// }
						});
					}
				}
			}
		})
	</script>
</html>

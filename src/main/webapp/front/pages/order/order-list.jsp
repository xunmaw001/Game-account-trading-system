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
			.cart-checkout-box button{
					padding: 11px 30px;
					border: 1px solid #f0f0f0;
					-webkit-border-radius: 3px;
					-moz-border-radius: 3px;
					border-radius: 3px;
					font-size: 16px;
					border: none;
					background: #ffb11f;
					color: #fff;
					outline: none;
					border: none;
					font-weight: 700;
			}
			.product-add-to-cart{
				display: flex;
				flex-flow: column;
				align-items: flex-end;
			}
			.product-add-to-cart button {
				width: 130px;
				padding: 0 30px;
				line-height: 40px;
				background-color: #252525;
				text-align: center;
				border: 0;
				color: #fff;
			}
			
			.product-add-to-cart button:first-of-type {
				margin-bottom: 10px;
			}
			
			.product-add-to-cart button:last-of-type {
				margin-bottom: 0px;
			}
			
			.product-add-to-cart button:hover {
				background-color: #fe4847;
			}
			
			.product-name,
			.product-address {
				max-width: 125px;
			}
			.order-tab{
				width: 100%;
				height: 50px;
				display: flex;
				justify-content: center;
				background-color: #222;
			}
			.order-tab li{
				background-color: #222;
				color: #fff;
				font-size: 18px;
				line-height: 50px;
				width: 100px;
				text-align: center;
				cursor: default;
			}
			.order-tab li:hover{
				color: #fe4847;
			}
			.order-tab li.active{
				color: #FE4847;
			}
			ul.order-tab li{
				list-style: none!important;
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
							<h4>订单列表</h4>
							<ul class="order-tab">
								<li :class="ordertype==item?'active':''" v-for="(item, i) in ordertypes" :key="i" @click="orderTypeTap(item)">{{item}}</li>
							</ul>
			                <table>
			                    <thead>
			                        <tr>
			                            <th>商品</th>
			                            <th>单价</th>
			                            <th>数量</th>
			                            <th>总价</th>
										<th>收货地址</th>
										<th>状态</th>
										<th>操作</th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr v-for="(item, i) in list">
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
			                            <td>￥{{item.total}}</td>
										<td class="product-item" style="display: flex;">
										    <div class="p-content" style="width: auto;">
										        <a href="#">{{item.address}}</a>
										    </div>
										</td>
										<td>{{item.status}}</td>
										<td class="product-add-to-cart">
											<button v-if="item.status=='未支付'" @click="onBuyTap(item)">立即支付</button>
													<button v-if="item.status=='未支付'" @click="onCancelTap(item)">取消订单</button>
													<button v-if="item.status=='已发货'" @click="onConfirmTap(item)">确认收货</button>
													<button v-if="item.status=='已支付'" @click="onRefundTap(item)">退款</button>
													<span v-if="item.status=='已完成'">/</span>
													<span v-if="item.status=='已取消'">/</span>
													<span v-if="item.status=='已退款'">/</span>
										</td>
			                        </tr>
			                    </tbody>
			                </table>
			            </div>
						<div class="paginations">
							<ul class="agri-ul d-flex flex-wrap justify-content-center" id="paginator">
							</ul>
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
	<script src="../../assets/js/relys/functions.js"></script>
	<script src="../../assets/js/relys/vue.js"></script>
	<script src="../../assets/js/api/api.js"></script>
	<!-- 工具类 -->
	<script src="../../assets/js/relys/utils.js"></script>
	<!-- 用户接口 -->
	<script src="../../assets/js/api/defaultuser.js"></script>
	<!-- 订单接口 -->
	<script src="../../assets/js/api/order.js"></script>
	<script src="../../assets/js/relys/jq-paginator.min.js"></script>
	<script type="text/javascript">
		var app = new Vue({
			el: '#app',
			data: {
				list: [],
				page: 1,
				limit: 6,
				total: 0,
				user: {},
				ordertype: '全部',
				ordertypes: ['全部'],
				usertable: ""
			},
			async created() {
				this.usertable = localStorage.getItem("sessionTable")
				session(`${this.usertable}`, (res) => {
					this.user = res.data
				});
				this.getOrderTypeTap()
				var data = await this.pageList();
				this.pageFun(data)
			},
			methods: {
				getOrderTypeTap(){
					var frontRoleMenus = JSON.parse(localStorage.getItem("frontRoleMenus"))
					var sessionRole = frontRoleMenus[`${this.usertable}`]
					if(typeof sessionRole == "object"){
						sessionRole.forEach(item => {
							if(item.menutable.split("dingdan")!=-1&&item.menutable!="dingdan"){
								var menuname = item.menuname.split("订单")[0]
								if(menuname=="未支付"){
									this.ordertypes.push("未支付")
								}else if(menuname=="已支付"){
									this.ordertypes.push("已支付")
								}else if(menuname=="已完成"){
									this.ordertypes.push("已完成")
								}else if(menuname=="已取消"){
									this.ordertypes.push("已取消")
								}else if(menuname=="已退款"){
									this.ordertypes.push("已退款")
								}else if(menuname=="已发货"){
									this.ordertypes.push("已发货")
								}
							}
						})
					}
				},
			orderTypeTap(status){
					this.ordertype = status
					this.page = 1
					this.pageList()
				},
				pageList() {
					return new Promise((resolve) => {
						var _this = this;
						ordersList(this.page, this.limit, this.ordertype, function(res) {
							_this.list = res.data.list;
							_this.total = res.data.total
							resolve(res.data)
						});
					})
				},
				pageFun(data){
					var that = this
					$('#paginator').jqPaginator({
						totalPages: data.totalPage,
						visiblePages: 7,
						currentPage: that.page,
						prev: '<li class="d-none d-sm-block"><a href="javascript: pageFun()">&lt;</a></li>',
						next: '<li class="d-none d-sm-block"><a href="javascript: pageFun()">&gt;</a></li>',
						page: `<li class="d-none d-sm-block"><a href="javascript: pageFun()">{{page}}</a></li>`,
						onPageChange: function(num, type) {
							that.page = num
						}
					});
				},
				onCancelTap(order) {
					var _this = this;
					var r = confirm("是否取消订单");
					if (r == true) {
						order.status = '已取消';
						// 设置订单状态为取消
						ordersUpdate(order, function(res) {
							_this.page = 1;
							_this.pageList();
							alert("订单已取消")
						});
					}
				},
				onRefundTap(order) {
					var _this = this;
					var r = confirm("是否确认退款");
					if (r == true) {
						order.status = '已退款';
						ordersUpdate(order, function(res) {
							_this.page = 1;
							_this.pageList();
							// 退回用户余额
							_this.user.money = _this.user.money + order.total;
							updateUser(`${_this.usertable}`, _this.user, (result) => {
								if(result&&result.code==0){
									alert("退款成功")
								}
							});
						});
					}
				},
				onConfirmTap(order) {
					var _this = this;
					var r = confirm("是否确认收货");
					if (r == true) {
						order.status = '已完成';
						// 设置订单状态为取消
						ordersUpdate(order, function(res) {
							if(res&&res.code==0){
								_this.page = 1;
								_this.pageList();
								alert("确认收货成功")
							}
						});
					}
				},
				onBuyTap(order) {
					var _this = this;
					var r = confirm("是否支付此订单");
					if (r == true) {
						if(_this.user.money<order.total){
							alert('账户余额不足')
							return
						}else{
							order.status = '已支付';
							ordersUpdate(order, function(res) {
								_this.page -= 1;
								_this.pageList();
								_this.user.money = _this.user.money - order.total;
								updateUser(`${_this.usertable}`, _this.user, (result) => {
									if(result&&result.code==0){
										alert("订单支付成功")
									}
								});
							});
						}
					}
				}
			}
		})
		function pageFun(){
			app.pageList()
		}
	</script>
</html>

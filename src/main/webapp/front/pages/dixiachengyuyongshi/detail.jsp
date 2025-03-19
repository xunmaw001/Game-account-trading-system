<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="../../assetsimages/x-icon/agricul.png">
<link rel="stylesheet" href="../../assets/css/relys/animate.css">
<link rel="stylesheet" href="../../assets/css/relys/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/relys/all.min.css">
<link rel="stylesheet" href="../../assets/css/relys/icofont.min.css">
<link rel="stylesheet" href="../../assets/css/relys/lightcase.css">
<link rel="stylesheet" href="../../assets/css/relys/swiper.min.css">
<link rel="stylesheet" href="../../assets/css/relys/style.css">
<style type="text/css">
	.shop-thumb {
		height: 0;
		padding-top: 100%;
		position: relative;
		overflow: hidden;
	}
	
	.shop-thumb img {
		width: 100%;
		position: absolute;
		top: 0;
		object-fit: cover;
		height: 100%;
		left: 0;
	}
	.description img{
		width: 100%;
	}
	.shop-single .product-details .post-content .form button {
		padding: 10px 20px;
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
				<h4 class="ph-title">地下城与勇士详情</h4>
				<ul class="agri-ul">
					<li><a href="../../index.jsp">首页</a></li>
					<li><a class="active">地下城与勇士详情</a></li>
				</ul>
			</div>
		</div>
	</section>
	<!-- Page Header Section Ending Here -->
	<!-- Shop Page Section start here -->
	<section class="shop-single padding-tb">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10 col-12 sticky-widget">
					<div class="product-details">
						<div class="row">
							<div class="col-md-6 col-12">
								<div class="product-thumb">
									<div class="swiper-container gallery-top">
										<div class="swiper-wrapper">
											<div class="swiper-slide" v-for="(item, i) in swiperList" :key="i">
												<div class="shop-item">
													<div class="shop-thumb">
														<img :src="item" alt="shop-single">
													</div>
												</div>
											</div>
										</div>
										<div class="shop-navigation d-flex flex-wrap">
											<div class="shop-nav shop-slider-prev"><i class="icofont-simple-left"></i></div>
											<div class="shop-nav shop-slider-next"><i class="icofont-simple-right"></i></div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="post-content" v-if="detail">
									<h4>卖家账号：{{detail.maijiazhanghao}}</h4>
									<h4>卖家姓名：{{detail.maijiaxingming}}</h4>
									<h4>商品编号：{{detail.shangpinbianhao}}</h4>
									<h4>账号标题：{{detail.zhanghaobiaoti}}</h4>
									<h4>游戏区服：{{detail.youxiqufu}}</h4>
									<h4>游戏跨区：{{detail.youxikuaqu}}</h4>
									<h4>角色等级：{{detail.jiaosedengji}}</h4>
									<h4>角色职业：{{detail.jiaosezhiye}}</h4>
									<h4>角色性别：{{detail.jiaosexingbie}}</h4>
									<h4>封号记录：{{detail.fenghaojilu}}</h4>
									<h4>qq等级：{{detail.qqdengji}}</h4>
									<h4>qq好友：{{detail.qqhaoyou}}</h4>
									<h4>账号价格：{{detail.zhanghaojiage}}</h4>
									<h4>价格区间：{{detail.jiagequjian}}</h4>
									<h4>手续费：{{detail.shouxufei}}</h4>
									<h4>平台保障：{{detail.pingtaibaozhang}}</h4>
									<h4>账号简介：{{detail.zhanghaojianjie}}</h4>
									<h4>发布日期：{{detail.faburiqi}}</h4>
									<p class="rating">
										<span @click="onThumbsUp(1)" style="cursor: pointer">赞：{{detail.thumbsupnum}}</span>
										<span @click="onThumbsUp(2)" style="cursor: pointer">踩：{{detail.crazilynum}}</span>
									</p>

									<div class="form">
										<button v-for="item in buttons" @click="onCrossTap('dixiachengzhanghaogoumai')" v-if="item=='购买'">购买</button>
										<button v-for="item in buttons" @click="onCrossTap('dixiachengsixinliaotian')" v-if="item=='私信'">私信</button>
										<button @click="onStoreTap">收藏</button>
									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="review">
						<ul class="agri-ul review-nav">
							<li class="desc active" data-target="description-show">详情</li>		
							<li :class="['rev', !hsdetail?'active':'']" data-target="review-content-show">评论 {{comments.length}}</li>
						</ul>
						<div :class="['review-content', hsdetail?'description-show':'review-content-show']">
							<p>账号详情</p>
							<div class="description" v-html="detail.zhanghaoxiangqing"></div>
							<div class="review-showing">
								<ul class="agri-ul content">
									<li v-for="(item, i) in comments" :key="i">
										<div class="post-thumb">
											<img src="../../assets/images/author.jpg" alt="shop">
										</div>
										<div class="post-content">
											<div class="entry-meta">
												<div class="posted-on">
													<a>******</a>
												</div>
											</div>
											<div class="entry-content">
												<p>{{item.content}}</p>
											</div>
										</div>
									</li>
								</ul>
								<div class="client-review">
									<div class="review-form">
										<div class="review-title">
											<h5>您的评论</h5>
										</div>
										<form @submit.prevent="onCommentTap" class="row">
											<div class="col-md-12 col-12">
												<textarea v-model="comment" rows="8" placeholder="请填写评论"></textarea>
											</div>
											<div class="col-12">
												<button class="defult-btn" type="submit">提交</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<script src="../../assets/js/relys/jquery.js"></script>
<script src="../../assets/js/relys/fontawesome.min.js"></script>
<script src="../../assets/js/relys/waypoints.min.js"></script>
<script src="../../assets/js/relys/bootstrap.min.js"></script>
<script src="../../assets/js/relys/wow.min.js"></script>
<script src="../../assets/js/relys/jquery.countdown.min.js"></script>
<script src="../../assets/js/relys/jquery.counterup.min.js"></script>
<script src="../../assets/js/relys/isotope.pkgd.min.js"></script>
<script src="../../assets/js/relys/lightcase.js"></script>
<script src="../../assets/js/relys/vue.js"></script>
<script src="../../assets/js/api/api.js"></script>
<script src="../../assets/js/api/tplist.js"></script>
<script src="../../assets/js/api/shop-cart.js"></script>
<script src="../../assets/js/api/defaultuser.js"></script>
<script src="../../assets/js/relys/utils.js"></script>
<div id="script"></div>
</body>
<script type="text/javascript">
	var app = new Vue({
		el: "#app",
		data: {
			id: "",
			buynum: 1,
			detail: null,
			swiperList: [],
			curImg: '',
			hsdetail: false,
			comments: [],
			comment: "",
			buttons: [],
			count: 0,
			inter: null
		},
		computed: {
			SecondToDate: function() {
				var time = this.count;
				if (null != time && "" != time) {
					if (time > 60 && time < 60 * 60) {
						time =
							parseInt(time / 60.0) +
							"分钟" +
							parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
							"秒";
					} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
						time =
							parseInt(time / 3600.0) +
							"小时" +
							parseInt(
								(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
							) +
							"分钟" +
							parseInt(
								(parseFloat(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) -
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									)) *
								60
							) +
							"秒";
					} else if (time >= 60 * 60 * 24) {
						time =
							parseInt(time / 3600.0 / 24) +
							"天" +
							parseInt(
								(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
								24
							) +
							"小时" +
							parseInt(
								(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
							) +
							"分钟" +
							parseInt(
								(parseFloat(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) -
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									)) *
								60
							) +
							"秒";
					} else {
						time = parseInt(time) + "秒";
					}
				}
				return time;
			}
		},
		destroyed: function() {
			window.clearInterval(this.inter);
		},
		async created() {
			var frontmenus = JSON.parse(localStorage.getItem("daohangmenus"))
			if(typeof frontmenus == "object"){
				frontmenus.forEach(item => {
					if(item.menutable == "dixiachengyuyongshi"){
						this.buttons = item.buttons
					}
				})
			}
			var id = getParam('id')
			this.id = id
			
			this.hsdetail = true
			await this.getDetail(id)
			this.getComments()
			var scripts = [
				"../../assets/js/relys/swiper.min.js",
				"../../assets/js/relys/functions.js"
			]
			setTimeout(() => {
				scripts.forEach(ele => {
					var new_element=document.createElement("script");
					new_element.setAttribute("type","text/javascript");
					new_element.setAttribute("src",ele);// 在这里引入了a.js
					$('#script').append(new_element);
				})
			}, 500)
		},
		methods: {
			download(file){
				window.open(file)
			},
			buynumDec(){
				if(this.buynum!=1){
					this.buynum--
				}
			},
			buynumInc(){
				this.buynum++
			},
			getSession(){
				return new Promise((resolve) => {
					var tablename = localStorage.getItem("sessionTable")
					session(`${tablename}`, (data) => {
						if(data&&data.code==0){
							resolve(data.data)
						}
					})
				})
			},
			addCart(){
				var _this = this;
				console.log(localStorage.getItem(`cart${this.detail.id}`));
				if (localStorage.getItem(`cart${this.detail.id}`)) {
					alert('该商品已添加到购物车')
					return
				}
				cartSave({
					tablename: 'dixiachengyuyongshi',
					goodid: this.detail.id,
					goodname: this.detail.zhanghaobiaoti,
					picture: this.swiperList[0],
					buynumber: this.buynum,
					price: this.detail.price,
					userid: localStorage.getItem("userid"),
					discountprice: this.detail.price
				}, function(res) {
					localStorage.setItem(`cart${_this.detail.id}`, true);
					alert('添加到购物车成功')
				});
			},
			onBuyTap() {
				let orderGoods = [];
				// 跳转到下单页面,需要购买的数据保存在缓存
				localStorage.setItem('orderGoods', JSON.stringify([{
					tablename: 'dixiachengyuyongshi',
					goodid: this.detail.id,
					goodname: this.detail.zhanghaobiaoti,
					picture: this.swiperList[0],
					buynumber: this.buynum,
					price: this.detail.price,
					userid: localStorage.getItem("userid"),
					discountprice: this.detail.price
				}]))
				// 跳转到支付页面
				window.location.href = '../order/confirm-order.jsp';
			},
			
			getDetail(id){
				return new Promise((resolve) => {
					goodsInfo('dixiachengyuyongshi',id, (res) => {
						this.detail = res.data
						this.$nextTick(() => {
							var _this = this;
							
							this.swiperList = []
							var arr = this.detail.fengmiantupian.split(',')
							arr.forEach(item => {
								this.swiperList.push(item)
							})
							this.curImg = this.swiperList[0]
							resolve(res)
						})
					})
				})
			},
			onCrossTap(tablename){
				localStorage.setItem("crossObj", JSON.stringify(this.detail))
				window.location.href = `../${tablename}/add.jsp?tablename=dixiachengyuyongshi`
			},
			async onStoreTap(){
				var user = await this.getSession()

				var data = {
					refid: this.detail.id,
					tablename: "dixiachengyuyongshi",
					userid: user.id,
					name: "",
					picture: ""
				}
					data.name = this.detail.zhanghaobiaoti
					data.picture = this.detail.fengmiantupian
				storeUpAdd("dixiachengyuyongshi", data, (res) => {
					if(res&&res.code==0){
						alert("收藏成功")
					}
				})
			},
			onThumbsUp(type){
				thumbsUp("dixiachengyuyongshi", this.detail.id, type, (res) => {
					if(res&&res.code==0){
						if(type==1){
							alert("点赞成功")
							this.getDetail(this.id)
						}else{
							alert("踩成功")
							this.getDetail(this.id)
						}
					}
				})
			},
			getComments(){
				commentList("dixiachengyuyongshi", this.detail.id, (res) => {
					if(res&&res.code==0){
						this.comments = res.data.list
					}
				})
			},

			async onCommentTap(){
				var user = await this.getSession()
				if(user){
					var data = {
						refid: this.detail.id,
						content: this.comment,
						userid: user.id 
					}
					addComment("dixiachengyuyongshi", data, (res) => {
						if(res&&res.code==0){
							alert("评论成功")
							this.getComments()
						}
					})
				}else{
					alert("评论失败")
				}
			},
		}
	})
</script>
</html>

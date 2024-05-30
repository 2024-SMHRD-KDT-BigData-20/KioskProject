<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차트 예제</title>
<!-- Chart.js를 CDN을 통해 포함 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- jQuery를 CDN을 통해 포함 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	var cpath = "${cpath}";
</script>
</head>
<body>

	<div>
		<canvas id="myChart"></canvas>
	</div>


	<script type="text/javascript">
		const ctx = document.getElementById('myChart').getContext('2d');
		let myChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [],
				datasets : [ {
					label : '판매량',
					data : [],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});

		function load_sales() {
			$.ajax({
				url : cpath + '/load_sales',
				type : 'get',
				dataType : 'json',
				success : function(sales) {
					update_chart(sales);
				},
				error : function() {
					alert("판매량 로딩 실패");
				}
			});
		}

		function update_chart(sales) {
		    var labels = [];
		    var salesData = [];

		    for (var i = 0; i < sales.length; i++) {
		        labels.push(sales[i].menu_idx); // 'menu_idx'가 라벨이라고 가정
		        salesData.push(sales[i].total_sales); // 'total_sales'가 데이터라고 가정
		        console.log(sales[i].menu_idx + ": " + sales[i].total_sales); // 확인용 로그
		    }

		    myChart.data.labels = labels;
		    myChart.data.datasets[0].data = salesData;
		    myChart.update();
		}

		// 페이지가 로드될 때 판매량 데이터 로드
		$(document).ready(function() {
		    load_sales();
		});


	</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<button id="btn">클릭</button>
<button id="btn2">클릭2</button>
<script>
	var t1 = this;
	console.log(t1);

	// 오브젝트 window.car 내부 function move() this
	// 메서드 내부의 this는 그 메서드를 감싸고 있는 오브젝트
	var car = {
		name: '소나타',
		move: function() {
			console.log('car 오브젝트의 function');
			console.log(this.name);
			
		}
	};
	car.move();

	let _ddd;
	
	$('#btn').click(function(){
		_ddd = this;
		var hello = () => {
				console.log("inner 함수");	
				console.log(this);
		};
		
	});

	$('#btn2').click(function(){
		console.log(_ddd);
		
	});
	
	

</script>
</body>
</html>



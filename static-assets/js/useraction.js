$(document).ready(function(){
	$('#link').magnificPopup({
		items: {
			src: '<div class="white-popup">Code Copied</div>',
			type: 'inline'
		},
		closeBtnInside: true,
		showCloseBtn: false
	});
	$('a.display-block').click(function () {
        	$.ajax({
    			type: "POST",
    			url: "https://api.rakutenmarketing.com/coupon/1.0?mid=44543",
    			headers: {
    				"Authorization": "Bearer a5865b14e1b4ecd5944921cc88b8ff7"
    			},
    			success: function (res) {
    				console.log("data", res);
    			},
    			error: function(errorThrown){
             			alert(errorThrown);
          		}
    		});
	
    	});
    
    	$('a.code-css').click(function () {
        	$.ajax({
    			type: "POST",
    			url: "https://api.rakutenmarketing.com/coupon/1.0?mid=44543",
    			headers: {
    				"Authorization": "Bearer a5865b14e1b4ecd5944921cc88b8ff7"
    			},
    			success: function (res) {
    				console.log("data", res);
    			},
    			error: function(errorThrown){
             			alert(errorThrown);
          		}
    		});
	
    	});
});
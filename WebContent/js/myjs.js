function myjs(){
	var imgDiv = document.getElementsByName("img");
	imgDiv.onclick = function() {
		for(var i=0;i<imgDiv.length;i++){
			//为每一个元素的onclick属性赋值即为文本框增加点击事件
			luckElements[i].onclick=function(){
				alert(this.value);
			}
		}		
	}
}
	
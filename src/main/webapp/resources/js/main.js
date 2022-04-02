console.log('main js running....');
//let carts = document.querySelectorAll('.addtocart'); //it will load all the produacts ex-15


let subTotal = 0;
let productList = [];//list
var cartBean = {
	'productList': productList,//object
	'totalCartAmount': 0
};
//javascrpt object


/*function callViewCartRequest(){
	console.log(cartBean);
	//var cartBeanJson = jQuery.parseJSON(cartBean);
	console.log('----');
	console.log(JSON.stringify(cartBean)); //js obj to json string
	//alert(JSON.stringify(cartBean));
	 $.ajax({
		type: "POST",
		url: "viewCart",
		contentType: 'application/json',
	  //  data: JSON.stringify({"id":77, "name":"Banana","price":307.4,"imagename":"008.jpg"}),//JSON.stringify(cartBean),//above js class name
	  //	data: JSON.stringify({"productList":[{"id":7,"name":"Banana","price":307.4,"imagename":"008.jpg"}],"totalCartAmount":307.4}),
	  data: JSON.stringify(cartBean),//obj to json
		success: function (result) {
			console.log("received successe from virwcartController");
			location.href="viewCart?name="+result;
		},
		error: function (result) {
			alert('something is wrong, please try agian !!!');
		}
	});
    
}*/

/*$('#viewCartDetails').click(function(e) {
	
	console.log('inside viewCartDetails');
	
	callViewCartRequest();
});
*/
/*for (let i = 0; i < carts.length; i++) {

	console.log('counter...');
	carts[i].addEventListener('click', (event) => {
		//cartNumbers(event);
	})
}*/

/*function onloadCartNumbers() {
	let productNumbers = localStorage.getItem('cartNumbers');
	if (productNumbers) {
		document.querySelector("#cart-total").textContent = productNumbers;
	}
}*/

function captureLogin() {
	console.log('capture login');
	var usr = localStorage.getItem('user_login');
	if (usr) {

	} else {


		usr = document.getElementById("usr_name").value;
		var usrError = document.getElementById("usr_error").value;
		console.log('error ' + usrError);
		if (usrError) {
			console.log('not set usr in db');
			localStorage.setItem('user_login', '');


		} else if(usr) {
			console.log('put usr' + usr);
			localStorage.setItem('user_login', usr);
			localStorage.setItem('user_email', document.getElementById("user_email").value);


		}
	}
	document.getElementById('usr_name_vaue').innerText = usr;

}




function cartNumbers1(event) {
	console.log("before");
	console.log(event);
	console.log("after");
	console.log(event.target.elements.quantity.value);


	//alert("cartNumbers1 method"+numb.value);
	/*alert(event.target.elements.quantity.value)
			alert(event.target.elements.productDetails.value)*/

	/*return false;*/


	/*	console.clear();
	*/	//console.log("product clicked is",event);
	let productNumbers = localStorage.getItem('cartNumbers');//initially getting null value
	productNumbers = parseInt(productNumbers);

	if (productNumbers) {
		var totalItems = productNumbers + 1;
		localStorage.setItem('cartNumbers', totalItems);
		//document.querySelector('.shopcart spam').textContent=productNumbers+1;
		document.querySelector("#cart-total").innerHTML = 'Item' + totalItems; //updation on frontend

	} else {
		localStorage.setItem('cartNumbers', 1);
		//document.querySelector('.shopcart spam').textContent=1;
		document.querySelector("#cart-total").innerHTML = 'Item' + 1;

	}
	//product desc part
	console.log(event);
	const productValue = event.target.elements.productDetails.value;
	var qty = event.target.elements.quantity.value;
	console.log(qty);

	console.log(productValue);
	var product = jQuery.parseJSON(productValue);//json string to js obj


	document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70"></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity" min="1" value=' + qty + ' type="number"></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
	subTotal = subTotal + product.price * qty;
	document.getElementById("totalCartAmt").innerText = '₹ ' + subTotal;



	var productBean = {
		'id': product.id,
		'name': product.name,
		'price': product.price,
		'imagename': product.imagename,
		'quantity': qty
	};
	productList.push(productBean);
	console.log(productList);
	cartBean.productList = productList;
	cartBean.totalCartAmount = subTotal;
	console.log(cartBean.totalCartAmount);
	console.log("kooo" + subTotal);
	localStorage.setItem("productObjs", JSON.stringify(cartBean));





	document.getElementById("viewCartDetails1").value = JSON.stringify(cartBean);
	document.getElementById("cheackOutDetails").value = JSON.stringify(cartBean);//js obj to json string
	//setItem();

	return false;

}
/*function cartNumbers(event) {
	console.clear();
	//console.log("product clicked is",event);
	let productNumbers = localStorage.getItem('cartNumbers');//initially getting null value
	productNumbers = parseInt(productNumbers);

	if (productNumbers) {
		var totalItems = productNumbers + 1;
		localStorage.setItem('cartNumbers', totalItems);
		//document.querySelector('.shopcart spam').textContent=productNumbers+1;
		document.querySelector("#cart-total").innerHTML = 'Item' + totalItems; //updation on frontend

	} else {
		localStorage.setItem('cartNumbers', 1);
		//document.querySelector('.shopcart spam').textContent=1;
		document.querySelector("#cart-total").innerHTML = 'Item' + 1;

	}
	//product desc part
	console.log(event);
	const productValue = event.target.value;
	console.log(productValue);
	var product = jQuery.parseJSON(productValue);//json string to js obj


	document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="' + product.imagename + '" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity" min="1" value="1" type="number"></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
	subTotal = subTotal + product.price;
	document.getElementById("totalCartAmt").innerText = '₹ ' + subTotal;



	var productBean = {
		'id': product.id,
		'name': product.name,
		'price': product.price,
		'imagename': product.imagename
	};
	productList.push(productBean);
	console.log(productList);
	cartBean.productList = productList;
	cartBean.totalCartAmount = subTotal;
	console.log(cartBean.totalCartAmount);
	console.log("kooo" + subTotal);
	localStorage.setItem("productObjs", JSON.stringify(cartBean));




	document.getElementById("viewCartDetails1").value = JSON.stringify(cartBean);
	document.getElementById("cheackOutDetails").value = JSON.stringify(cartBean);//js obj to json string
	//setItem();
}*/


let de_productsobj = JSON.parse(localStorage.getItem("productObjs"));
/*console.log("kooo");
//console.log(de_productsobj.id);
/*forEach(function(element) {  })*/
/*var productObjs=localStorage.getItem(jQuery.parseJSON(cartBean));*/
/*localstorage.getItem(cartBean).forEach((element) => {
  
    
	 console.log("kooo");
  
})*/

/*function test() {
	document.
		alert(JSON.stringify(document.getElementById("cartBeanObj").value));

}
*/
/*$('#button-confirm').click(function(e) {
	console.log("inside confirmbutton");
	localStorage.setItem('cartNumbers', 0);
	localStorage.setItem('productObjs', "");
});*/
function confirm_order_localstore() {
	console.log("inside funnnn");
	localStorage.setItem('cartNumbers', 0);
	localStorage.setItem('productObjs', "");

}

function login() {
	console.log("loginnnn");
}

function loginWalaMethod() {


}

function homePageOnLoad() {
	captureLogin();
	//loginWalaMethod();
	console.log("inside homepageloaddddd");
	var count = localStorage.getItem('cartNumbers');
	if (count && count > 0) {	//null==false

		document.querySelector("#cart-total").innerHTML = 'Item' + count;

		let data = jQuery.parseJSON(localStorage.getItem("productObjs"));
		console.log(localStorage.getItem("productObjs"));
		console.log("data " + data);

		console.log(data.totalCartAmount);
		var prodList = data.productList;
		var a = data.totalCartAmount;
		console.log(a);
		console.log("count" + prodList.length);
		for (let i = 0; i < prodList.length; i++) {
			var product = prodList[i];

/*		alert(product.price)
*/			document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity" value=' + product.quantity + ' type="number" readonly></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
			/*console.log("amount" + data.totalCartAmount);
			console.log("name" + product_Desc.imagename);*/

			document.getElementById("viewCartDetails1").value = JSON.stringify(data);
			document.getElementById("cheackOutDetails").value = JSON.stringify(data);//js obj to json string

			/* text += product_Desc + "<br>";
			 console.log(product_Desc.id);
			   console.log(product_Desc.totalCartAmount);*/

		}
		productList = prodList;
		//	subTotal = data.totalCartAmount;
		document.getElementById("totalCartAmt").innerText = '₹ ' + Math.round(data.totalCartAmount);

	}

}




function check() {
	console.log("onchange methood");
	var pw1 = document.getElementById("password").value;
	var pw2 = document.getElementById("confirmpassword").value;
	console.log("kjlkl" + pw1 + pw2);
	if (pw1.length < 8) {
		document.getElementById("pass_msg").innerHTML = "**Password length must be atleast 8 characters";
		return false;
	}
	if (pw1.length > 15) {
		document.getElementById("pass_msg").innerHTML = "**Password length must not exceed 15 characters";
		return false;
	}
	if (pw1 != pw2) {
		document.getElementById("pass_msg").innerHTML = "**Passwords are not same";
		return false;
	}
	else {
		document.getElementById("pass_msg").innerHTML = "**Register Successfully";

		return "true";
	}
}





function cartNumbers2(event) {


	console.log("before");
	console.log(event);
	console.log("after");
	console.log(event.target.elements.quantity.value);

	//product desc part
	console.log(event);
	const productValue = event.target.elements.productDetails.value;
	var qty = event.target.elements.quantity.value;

	console.log(productValue);
	console.log(qty);

	var productObj = jQuery.parseJSON(productValue);//json string to js obj

	var currentProduct = {
		'id': productObj.id,
		'name': productObj.name,
		'price': productObj.price,
		'imagename': productObj.imagename,
		'quantity': qty
	};


	var filterProductList = [];
	var count = 0;
	for (let i = 0; i < productList.length; i++) {
		var product = productList[i];
		if (product.id == currentProduct.id) {
			count = 1;
			product.quantity = parseInt(currentProduct.quantity) + parseInt(product.quantity);
		}

		filterProductList.push(product);

	}

	if (count == 0) {
		filterProductList.push(currentProduct);

		let productNumbers = localStorage.getItem('cartNumbers');//initially getting null value
		productNumbers = parseInt(productNumbers);

		if (productNumbers) {
			var totalItems = productNumbers + 1;
			localStorage.setItem('cartNumbers', totalItems);
			document.querySelector("#cart-total").innerHTML = 'Item' + totalItems; //updation on frontend

		} else {
			localStorage.setItem('cartNumbers', 1);
			document.querySelector("#cart-total").innerHTML = 'Item' + 1;

		}
	}



	productList = [];
	productList = filterProductList;
	var flag = 1;
	console.log("count" + filterProductList.length);
	for (let i = 0; i < filterProductList.length; i++) {


		var product = filterProductList[i];
		console.log("inside for loop" + product.id);
		/*if(currentProduct.id==product.id){
			product.quantity =product.quantity+currentProduct.quantity;
		}else if(i==productList.length-1){
			
		}*/
		if (flag == 1) {
			document.querySelector("#myItemCart").innerHTML = '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity"  value=' + product.quantity + ' type="number" readonly></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
			flag = 0;
			console.log("inside if");

		} else {
			document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity"  value=' + product.quantity + ' type="number" readonly></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
			console.log("inside else");

		}
		/*console.log("amount" + data.totalCartAmount);
		console.log("name" + product_Desc.imagename);*/


		/* text += product_Desc + "<br>";
		 console.log(product_Desc.id);
		   console.log(product_Desc.totalCartAmount);*/

		subTotal = subTotal + product.price * parseInt(product.quantity);
		subTotal = Math.round(subTotal);
		document.getElementById("totalCartAmt").innerText = '₹ ' + subTotal;
		console.log("totalcartamo===" + subTotal);
	}




	console.log(productList);
	cartBean.productList = productList;
	cartBean.totalCartAmount = subTotal;
	console.log(cartBean.totalCartAmount);
	console.log("kooo" + subTotal);
	localStorage.setItem("productObjs", JSON.stringify(cartBean));

	subTotal = 0;



	document.getElementById("viewCartDetails1").value = JSON.stringify(cartBean);
	document.getElementById("cheackOutDetails").value = JSON.stringify(cartBean);//js obj to json string
	//setItem();



	return false;

}
  /*const password = document.querySelector('input[name=password]');
const confirmpassword = document.querySelector('input[name=confirmpassword]');
if (confirmpassword.value === password.value) {
console.log('confirm');
} else {
console.log('confirm not');  }*/

/*function setItem()
{
	let cartItems=localStorage.getItem('productsInCart');
	cartItems=JSON.parse(cartItems);
	if(cartItems!=null){
		cartItems
	}

}*/

//onloadCartNumbers();


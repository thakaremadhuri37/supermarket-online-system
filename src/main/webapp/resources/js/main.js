console.log('main js running....');
//let carts = document.querySelectorAll('.addtocart'); //it will load all the produacts ex-15


let subTotal = 0;
let productList = [];//list
var cartBean = {
	'productList': productList,//object
	'totalCartAmount': 0
};




/*function captureLogin() {
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


		} else if (usr) {
			console.log('put usr' + usr);
			localStorage.setItem('user_login', usr);
			localStorage.setItem('user_email', document.getElementById("user_email").value);


		}
	}
	document.getElementById('usr_name_vaue').innerText = usr;

}*/




/*function cartNumbers1(event) {
	console.log("before");
	console.log(event);
	console.log("after");
	console.log(event.target.elements.quantity.value);



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

}*/



let de_productsobj = JSON.parse(localStorage.getItem("productObjs"));

function confirm_order_localstore() {
	console.log("inside funnnn");
	localStorage.setItem('cartNumbers', 0);
	localStorage.setItem('productObjs', "");

}



function homePageOnLoad() {

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

			document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity" value=' + product.quantity + ' type="text" readonly></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle" onclick=del(' + product.id + ')></i></a></td> </tr>';


			document.getElementById("viewCartDetails1").value = JSON.stringify(data);
			document.getElementById("cheackOutDetails").value = JSON.stringify(data);//js obj to json string



		}
		productList = prodList;
		document.getElementById("totalCartAmt").innerText = '₹ ' + Math.round(data.totalCartAmount);

	}
	$('#gotoconfirm').prop('disabled', true);

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

	var name = document.getElementById("name").value;
	var regEx = /^[a-z][a-z\s]*$/;
	console.log("name=="+name);
	if (!name.match(regEx)) {
		document.getElementById("name_error").innerHTML = "**Enter Proper Name";
		return false;
	}
	document.getElementById("pass_msg").innerHTML = "**Register Successfully";

	return "true";


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
	displayItemsInViewCart(filterProductList);



	return false;

}
function displayItemsInViewCart(filterProductList) {

	var flag = 1;
	console.log("count" + filterProductList.length);
	for (let i = 0; i < filterProductList.length; i++) {


		var product = filterProductList[i];
		console.log("inside for loop" + product.id);

		if (flag == 1) {
			document.querySelector("#myItemCart").innerHTML = '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity"  value=' + product.quantity + ' type="text" readonly></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle" onclick=del(' + product.id + ')></i></a></td> </tr>';
			flag = 0;
			console.log("inside if");

		} else {
			document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="resources/images/pro/' + product.imagename + '" width="70" width="70" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity"  value=' + product.quantity + ' type="text" readonly></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle" onclick=del(' + product.id + ')></i></a></td> </tr>';
			console.log("inside else");

		}


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
}

function del(id) {
	//alert('deleted' + id);

	let text = "Do you want to remove the product";
	if (confirm(text) == true) {

		let productNumbers = localStorage.getItem('cartNumbers');
		productNumbers = parseInt(productNumbers);

		if (productNumbers) {
			var totalItems = productNumbers - 1;
			localStorage.setItem('cartNumbers', totalItems);
			document.querySelector("#cart-total").innerHTML = 'Item' + totalItems; //updation on frontend

		}


		var filterListAfterDelete = [];
		console.log("count" + productList.length);
		for (let i = 0; i < productList.length; i++) {


			var product = productList[i];
			console.log("inside for loop" + product.id);

			if (id != product.id) {
				filterListAfterDelete.push(product)
			}
		}
		productList = [];
		productList = filterListAfterDelete;
		console.log(filterListAfterDelete);
		console.log(productList)
		displayItemsInViewCart(productList);

	}
}

function cardnumber() {


	var a = document.getElementById("ccnum").value;

	//const button = document.querySelector('gotoconfirm');
	if (a != null) {
		if (a.length == 16) {
			$('#gotoconfirm').removeAttr('disabled');
		}
		else {
			alert("enter 16 digit card number");
		}
	}
	console.log(a);
	//var btn = document.getElementById("gotoconfirm").value;
	/*btn.disabled = true;*/

	return false;
}




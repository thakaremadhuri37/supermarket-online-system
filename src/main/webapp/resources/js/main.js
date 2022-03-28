console.log('main js running....');
let carts = document.querySelectorAll('.addtocart'); //it will load all the produacts ex-15


let subTotal = 0;
let productList = [];
var cartBean = {
	'productList': productList,
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
for (let i = 0; i < carts.length; i++) {

	console.log('counter...');
	carts[i].addEventListener('click', (event) => {
		cartNumbers(event);
	})
}

/*function onloadCartNumbers() {
	let productNumbers = localStorage.getItem('cartNumbers');
	if (productNumbers) {
		document.querySelector("#cart-total").textContent = productNumbers;
	}
}*/
function cartNumbers(event) {
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
}


let de_productsobj = JSON.parse(localStorage.getItem("productObjs"));
console.log("kooo");
console.log(de_productsobj.id);
/*forEach(function(element) {  })*/
/*var productObjs=localStorage.getItem(jQuery.parseJSON(cartBean));*/
/*localstorage.getItem(cartBean).forEach((element) => {
  
    
	 console.log("kooo");
  
})*/

function test() {
	document.
		alert(JSON.stringify(document.getElementById("cartBeanObj").value));

}

$('#button-confirm').click(function(e) {

	localStorage.setItem('cartNumbers', 0);
	localStorage.setItem('productObjs',"");
});

function homePageOnLoad() {
	var count = localStorage.getItem('cartNumbers');
	if (count && count>0) {	//null==false

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
			document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="' + product.imagename + '" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity" min="1" value="1" type="number"></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
			/*console.log("amount" + data.totalCartAmount);
			console.log("name" + product_Desc.imagename);*/

			document.getElementById("viewCartDetails1").value = JSON.stringify(data);
			document.getElementById("cheackOutDetails").value = JSON.stringify(data);//js obj to json string

			/* text += product_Desc + "<br>";
			 console.log(product_Desc.id);
			   console.log(product_Desc.totalCartAmount);*/
		
		}
		productList=prodList;
		subTotal = data.totalCartAmount;
		document.getElementById("totalCartAmt").innerText = '₹ ' + data.totalCartAmount;

	}

}

/*function setItem()
{
	let cartItems=localStorage.getItem('productsInCart');
	cartItems=JSON.parse(cartItems);
	if(cartItems!=null){
		cartItems
	}

}*/

//onloadCartNumbers();


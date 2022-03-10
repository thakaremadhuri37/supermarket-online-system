console.log('main js running....');
let carts = document.querySelectorAll('.addtocart'); 
let subTotal = 0;
let productList=[];
var cartBean ={
	'productList': productList,
	'totalCartAmount' : 0
};
/*let products=[
	{
		name='apple',
		price=23,
		tag='appleprod'
		
	}
];	
*/

function callViewCartRequest(){
	console.log(cartBean);
	//var cartBeanJson = jQuery.parseJSON(cartBean);
	console.log('----');
	console.log(JSON.stringify(cartBean));
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
    
}

$('#viewCartDetails').click(function(e) {
	
	console.log('inside viewCartDetails');
	
	callViewCartRequest();
    // do what you want when click this element.
});

for (let i = 0; i < carts.length; i++) {
	console.log('counter...');
	carts[i].addEventListener('click', (event) => {
		cartNumbers(event);
	})
}

function onloadCartNumbers() {
	let productNumbers = localStorage.getItem('cartNumbers');
	if (productNumbers) {
		document.querySelector("#cart-total").textContent = productNumbers;
	}
}
function cartNumbers(event) {
	console.clear();
	//console.log("product clicked is",event);
	let productNumbers = localStorage.getItem('cartNumbers');
	productNumbers = parseInt(productNumbers);

	if (productNumbers) {
		var totalItems = productNumbers + 1;
		localStorage.setItem('cartNumbers', totalItems);
		//document.querySelector('.shopcart spam').textContent=productNumbers+1;
		document.querySelector("#cart-total").innerHTML = 'Item'+ totalItems;

	} else {
		localStorage.setItem('cartNumbers', 1);
		//document.querySelector('.shopcart spam').textContent=1;
		document.querySelector("#cart-total").innerHTML ='Item'+ 1;

	}
	console.log(event);
	const productValue = event.target.value;
	console.log(productValue);
	//console.log(product.name);
	var product = jQuery.parseJSON(productValue);
	//  alert( product.name);

	document.querySelector("#myItemCart").innerHTML = document.querySelector("#myItemCart").innerHTML + '<tr> <td class="text-center"><a href="#"><img src="' + product.imagename + '" ></a></td> <td class="text-left product-name"><a href="#">' + product.name + '</a> <span class="text-left price">₹ ' + product.price + '</span> <input class="cart-qty" name="product_quantity" min="1" value="1" type="number"></td> <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td> </tr>';
	subTotal = subTotal + product.price;
	document.getElementById("totalCartAmt").innerText = '₹ ' + subTotal;
	var productBean ={
		'id':product.id,
		'name' : product.name,
		'price' : product.price,
		'imagename' : product.imagename
	};
	productList.push(productBean);
	console.log(productList);
	cartBean.productList = productList;
	cartBean.totalCartAmount = subTotal;
	
	console.log(cartBean);
	document.getElementById("viewCartDetails1").value=JSON.stringify(cartBean);
	document.getElementById("cheackOutDetails").value=JSON.stringify(cartBean);
	//setItem();
}

function test()
{
	document.
		alert(JSON.stringify(document.getElementById("cartBeanObj").value));
	
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


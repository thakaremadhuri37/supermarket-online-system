<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>







<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


* {
  box-sizing: border-box;
}

.row1 {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container1 {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom:15px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 2px;
}

/* label {
  margin-bottom: 10px;
  display: block;
} */

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

/* .btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
} */

.btn:hover {
  background-color: #45a049;
}

/* a {
  color: #2196F3;
} */

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

.zoom:hover {
  -ms-transform: scale(1.1); /* IE 9 */
  -webkit-transform: scale(1.1); /* Safari 3-8 */
  transform: scale(1.1); 
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body onload="homePageOnLoad()" >

<div class="row1">
  <div class="col-75">
    <div class="container1">
      <form  onsubmit="return cardnumber()">
      
        <div class="row">
          <div class="col-50">
            <h3 class="zoom">Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" value="${sessionScope.user_login}" placeholder="Enter Name" required="required">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" value="${sessionScope.user_login_email }" placeholder="Enter email" required>
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="Eneter Address" required>
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="Enter City" required>

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" 	placeholder="Eneter State" required>
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="number" id="zip" name="zip" placeholder="10001" required>
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <!-- <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Enter the name"> -->
            <label for="ccnum">Credit card number</label>
            <input type="number" id="ccnum" name="text1"  placeholder="1111-2222-3333-4444" required>
           <br> <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September" required>
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="number" id="expyear" name="expyear" placeholder="2018" required>
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="number" id="cvv" name="cvv" placeholder="352" required>
              </div>
            </div>
          </div>
             
          
        </div>
        
       <input type="submit" value="submit the data" class="btn" > 
        <a data-toggle="collapse" data-parent="#accordion"  href="#collapseSix" style="font-family: sans-serif;background-color: white ;color:red;font-size:x-large;"><input type="submit" value="Go to Confirm order -->" class="btn"  id="gotoconfirm" disabled="disabled"></a>
        
      </form>
       <!-- <form action="login" method="post" >
       	<button type="submit" class="btn mt-10">Login</button>
       
       </form> -->
    </div>
  </div>
 
  </div>









</body>
</html>
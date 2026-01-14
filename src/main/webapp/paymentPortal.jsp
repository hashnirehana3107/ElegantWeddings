<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment methods</title>
    <link rel="stylesheet" href="./css/paymentPortal.css">
</head>

<body>
 <header class="HeaderForpayment">
<h1 class="HeaderForpayment">
    Payment Portal 
</h1><p class="HeaderForpayment">
    Complete your transaction securely<br>
</p>
</header>

<section class="payment-section">
    <main class="mainForPayment">
        <form action="process_payment.php" method="POST">
            <div class="discounted-price-display">
                <label for="total-to-pay" class="paymentlable">Total to Pay:</label>
                <input type="text" id="total-to-pay" name="total_to_pay" class="paymentInputs">
            </div>

            <div class="radio-container">    
                <table>
                    <tr>
                        <td><img src="https://static-00.iconduck.com/assets.00/visa-icon-2048x1313-o6hi8q5l.png" alt="visa img" width="100px" height="70px"></td>
                        <td><input type="radio" name="methodOfPayment" value="visa" required></td>
                        <td><img src="https://tse1.mm.bing.net/th?id=OIP.zypeFaQrVIN3Azn-TCvUqAHaEp&pid=Api&P=0&h=220" alt="master img" width="100px" height="70px"></td>
                        <td><input type="radio" name="methodOfPayment" value="master" required></td>
                    </tr>
                </table>
            </div>  

            <label for="Holdername" class="paymentlable">Card Holder's Name:</label><br> 
            <input type="text" name="holdername" class="paymentInputs" id="Holdername" required><br>

            <label for="CardNumber" class="paymentlable">Card Number:</label><br>
            <input type="text" name="cardnumber" class="paymentInputs" id="CardNumber" required><br>

            <label for="Month" class="paymentlable">Month:</label><br>
            <input type="number" name="month" class="paymentInputs" min="1" max="12" id="Month" required><br>

            <label for="Year" class="paymentlable">Year:</label><br>
            <input type="number" name="year" class="paymentInputs" min="2024" max="2030" id="Year" required><br>

            <label for="cvv" class="paymentlable">CVV:</label><br>
            <input type="number" name="inputcvv" class="paymentInputs" id="cvv" required><br>

            <img src="https://tse4.mm.bing.net/th?id=OIP.-OQDz_twKuatPUtxZ7dprAHaE8&pid=Api&P=0&h=220" alt="cvvimg" width="150px" height="100px"><br>

            <input type="submit" value="Purchase" class="paymentButton">
            <input type="reset" value="Clear" class="paymentButton">
        </form>
    </main>
</section>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
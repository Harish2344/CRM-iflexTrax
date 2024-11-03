<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRM Customer</title>
<style>
        * {
            margin: 4px;
            
            padding:0px;
            box-sizing:content-box;
        }
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #4f7dff, #82e4ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        
        .card {
            width: 80%;
            max-width: 500px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            padding: 70px;
            animation: fadeIn 0.8s ease-in-out;
        }
        
       
        .card-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .card-header h2 {
            font-size: 40px;
            background:linear-gradient(135deg, #3d0cb1, #82e4ff);
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-weight: bold;
        }
        .card-header p {
            font-size: 25px;
            background:linear-gradient(135deg, #736c83, #0c0f0f);
            -webkit-text-fill-color: transparent;
            background-clip: text;
            
        }

        
        .info-section {
            margin-bottom: 20px;
        }
        .info-item {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-bottom: 1px solid #b1aab9;
        }
        .info-item:last-child {
            border-bottom: none;
        }
        .info-item label {
            font-weight: bold;
            color: #0c0b0b;
            font-size: 20px;
        }
        


        .address-section {
            background-color: #f8f9fb;
            
            border-radius: 10px;
            padding: 15px;
            margin-top: 15px;
            box-shadow: inset 0 2px 6px rgba(0, 0, 0, 0.1);
        }
        .address-title {
            font-size: 25px;
            background:linear-gradient(135deg, #3d0cb1, #2396b6);
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-weight: bold;
            margin-bottom: 1px;
        }
        .address-item {
            color: #444;
            font-size: 18px;
            margin-bottom: 8px;
            display: flex;
            justify-content: space-between;
        }

        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .form-group input[type="submit"] {
            width: 90%;
            padding: 12px;
            font-size: 18px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="number"],
        .form-group select {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f7f7f7;
            outline: none;
            transition: border-color 0.3s ease;
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group input[type="number"]:focus,
        .form-group select:focus {
            border-color: #007bff;
        }

      
    </style>
    </head>
    <body>
    
<form action="updateCustomerData" method="post">
<div class="card">
    <div class="card-header">
        <h2>Customer Details</h2>
        <p>Detailed Information</p>
    </div>
     
        <div class="form-group">
            
            <input type="hidden" name="id"  value="${customer1.id}"   required>
            
        </div>

    <div class="info-section">
        <div class="form-group">
            <label for="firstname">First Name </label>
            <input type="text" id="firstname" name="firstname" placeholder="Enter First Name"
            value="${customer1.firstname}" required>
            
        </div>
        <div class="form-group">
            <label for="lastname">Last Name</label>
            <input type="text" id="lastname" name="lastname" placeholder="Enter last Name" 
            value="${customer1.lastname}" required>
            
        </div>
        <div class="form-group">
            <label for="email_id">Email</label>
            <input type="email" id="email_id" name="email_id" placeholder="Enter your email_id"
            value="${customer1.email_id}" required>
            
        </div>
        <div class="form-group">
            <label for="phone">Phone</label>
            <input type="number" id="phone" name="phone" placeholder="Enter your phone_No"
            value="${customer1.phone}" required>
            
        </div>
    </div>

    <div class="address-section">
        <div class="address-title">Address</div>
        <div class="address-item">
            <label for="addressLine1">Address Line 1</label>
            <input type="text" id="addressLine1" name="addressLine1" placeholder="Enter addressLine1" 
            value="${customer1.addressLine1}" required>
            
        </div>
        <div class="address-item">
            <label for="addressLine2">Address Line 2</label>
            <input type="text" id="addressLine2" name="addressLine2" placeholder="Enter addressLine2"
           value="${customer1.addressLine2}"  required>
            
        </div>
        <div class="address-item">
            <label for="city">City</label>
            <input type="text" id="city" name="city" placeholder="Enter your city" 
            value="${customer1.city}" required>
           
        </div>
        <div class="address-item">
            <label for="state">State</label>
            <input type="text" id="state" name="state" placeholder="Enter your State" 
            value="${customer1.state}" required>
           
        </div>
        <div class="address-item">
            <label for="country">Country</label>
            <input type="text" id="country" name="country" placeholder="Enter your country" 
            value="${customer1.country}" required>
            
        </div>
        <div class="address-item">
            <label for="pinCode">Pin Code</label>
            <input type="number" id="pinCode" name="pinCode" placeholder="Enter your pinCode"
            value="${customer1.pinCode}" required>
            
        </div>
        
        <div class="form-group">
            <input type="submit" value="Save Lead">
        </div>
    </div>
</div>
</form>
</body>
</html>
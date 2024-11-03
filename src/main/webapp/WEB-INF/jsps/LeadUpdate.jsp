<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            animation: backgroundAnimation 10s infinite alternate;
        }
        
        @keyframes backgroundAnimation {
            0% { background: linear-gradient(135deg, #be3439 0%, #2813e2 100%); }
            50% { background: linear-gradient(135deg, #14b8a2 0%, #420b38 100%); }
            100% { background: linear-gradient(135deg, #70941c 0%, #e4bb07 100%); }
        }
        .form-container {
            width: 100%;
            max-width: 550px;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            opacity: 0;
            transform: translateY(30px);
            animation: fadeInUp 1s forwards;
        }
        
        @keyframes fadeInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 1.8rem;
            position: relative;
        }
        h1::after {
            content: '';
            width: 50px;
            height: 3px;
            background-color: #007bff;
            position: absolute;
            left: 50%;
            bottom: -10px;
            transform: translateX(-50%);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-weight: bold;
            color: #666;
            display: block;
            margin-bottom: 8px;
            transition: color 0.3s ease;
        }
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="number"],
        .form-group select {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f7f7f7;
            outline: none;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group input[type="number"]:focus,
        .form-group select:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }
        .source-buttons {
            display: flex;
            gap: 15px;
        }
        .radio-label {
            font-weight: normal;
            color: #555;
            display: flex;
            align-items: center;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .radio-label input {
            margin-right: 6px;
        }
        .form-group input[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            color: #fff;
            background: linear-gradient(135deg, #16c910, #0562db);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group input[type="submit"]:hover {
            background: linear-gradient(135deg, #0056b3, #007bff);
        }
        .form-group .back-button {
            width: 95%;
            padding: 12px;
            font-size: 18px;
            color: #cacdd1;
            background: linear-gradient(135deg, #2554d4, #e710b2);
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .form-group .back-button:hover {
            background-color: #f0f0f0;
            
            background: linear-gradient(135deg, #7789b9, #4b2040);
        }
        /* Hover effect for labels */
        .form-group label:hover {
            color: #007bff;
        }
        /* Submit button animation */
        .form-group input[type="submit"] {
            position: relative;
            overflow: hidden;
        }
        .form-group input[type="submit"]::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.3);
            transition: left 0.4s ease;
        }
        .form-group input[type="submit"]:hover::before {
            left: 100%;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Lead Update</h1>
    <form action="updateLeadData" method="post">
        <div class="form-group">
            <input type="hidden" name="id" value="${lead1.id}" required>
        </div>
        <div class="form-group">
            <label for="fname">First Name</label>
            <input type="text" id="fname" name="fname" placeholder="Enter First Name" value="${lead1.fname}" required>
        </div>
        <div class="form-group">
            <label for="lname">Last Name</label>
            <input type="text" id="lname" name="lname" placeholder="Enter Last Name" value="${lead1.lname}" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" value="${lead1.email}" required>
        </div>
        <div class="form-group">
            <label for="mobile">Mobile</label>
            <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" value="${lead1.mobile}" required>
        </div>
        <div class="form-group">
            <label>Source</label>
            <div class="source-buttons">
                <label class="radio-label">
                    <input type="radio" name="source" value="Referral" required> Referral
                </label>
                <label class="radio-label">
                    <input type="radio" name="source" value="Social Media" required> Social Media
                </label>
                <label class="radio-label">
                    <input type="radio" name="source" value="Website" required> Website
                </label>
            </div>
        </div>
        <div class="form-group">
            <label for="leadType">Lead Type</label>
            <select id="leadType" name="leadType" required>
                <option value="Individual">Individual</option>
                <option value="Company">Company</option>
            </select>
        </div>
        <div class="form-group">
            <label for="estimatedValue">Estimated Value</label>
            <input type="number" id="estimatedValue" name="estimatedValue" placeholder="Enter Estimated Value" step="0.01" value="${lead1.estimatedValue}" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Save Lead">
        </div>
        <div class="form-group">
            <a href="listall" class="back-button">Back to lead</a>
        </div>
    </form>
</div>
</body>
</html>



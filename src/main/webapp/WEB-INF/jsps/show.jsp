<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | ZOHO CRM</title>
    <style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

    body {
    
    font-family: Arial, sans-serif;
    background: url('https://www.d4aonline.com/Zoho%20One.gif') no-repeat center center fixed;
    background-size: cover;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    overflow: hidden;
}

.form-container {
    width: 100%;
    max-width: 550px;
    background-color: rgba(243, 242, 242, 0.9); /* Semi-transparent background */
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    animation: bounceIn 0.8s ease-out forwards;
}


.navbar {
    display: flex;
    justify-content: center;
     background: rgba(172, 32, 32, 0.5);
    padding: 15px 0;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

        .navbar a {
            color: #ffffff;
            padding: 12px 20px;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            position: relative;
            text-transform: uppercase;
            transition: color 0.3s;
        }

        .navbar a::after {
            content: '';
            display: block;
            width: 0;
            height: 2px;
            background: #1abc9c;
            transition: width 0.3s;
            margin-top: 5px;
        }

        .navbar a:hover::after {
            width: 100%;
        }

       
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background: #1e272e;
            top: 100%;
            min-width: 160px;
            border-radius: 5px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
            z-index: 1;
        }

        .dropdown-content a {
            color: #ffffff;
            padding: 10px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s;
            text-transform: capitalize;
        }

        .dropdown-content a:hover {
            background-color: #1abc9c;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

       
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9fb;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
        }

        .form-container {
            width: 100%;
            max-width: 550px;
            background: rgba(44, 43, 44, 0.5);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            margin-top: 20px; /* Offset from navbar */
        }

        h2 {
            text-align: center;
            color: #000000;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            color: #000000;
            display: block;
            margin-bottom: 8px;
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
            transition: border-color 0.3s ease;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group input[type="number"]:focus,
        .form-group select:focus {
            border-color: #007bff;
        }

        .source-buttons {
            display: flex;
            gap: 15px;
        }

        .radio-label {
            font-weight: normal;
            color: #555;
            margin-right: 10px;
            display: flex;
            align-items: center;
        }

        .radio-label input {
            margin-right: 6px;
        }

        .form-group input[type="submit"] {
            width: 100%;
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
         
       
     @keyframes popUp {
     0% { opacity: 0; transform: scale(0.9) translateY(-20px); }
     60% { opacity: 0.8; transform: scale(1.05); }
     100% { opacity: 1; transform: scale(1) translateY(0); }
}

.navbar a {
    opacity: 0;
    animation: popUp 0.6s ease forwards;
}

.navbar a:nth-child(1) { animation-delay: 0.1s; }
.navbar a:nth-child(2) { animation-delay: 0.2s; }
.navbar .dropdown:nth-child(3) a { animation-delay: 0.3s; }
.navbar .dropdown:nth-child(4) a { animation-delay: 0.4s; }
.navbar .dropdown:nth-child(5) a { animation-delay: 0.5s; }
.navbar a:nth-child(6) { animation-delay: 0.6s; }
.navbar a:nth-child(7) { animation-delay: 0.7s; }


@keyframes bounceIn {
    0% { opacity: 0; transform: translateY(60px); }
    60% { opacity: 0.8; transform: translateY(-10px); }
    100% { opacity: 1; transform: translateY(0); }
}

.form-container {
    opacity: 0;
    animation: bounceIn 0.8s ease-out forwards;
}

/* Floating Placeholder Animation */
.form-group input[type="text"]:placeholder-shown + label,
.form-group input[type="email"]:placeholder-shown + label,
.form-group input[type="number"]:placeholder-shown + label,
.form-group select:placeholder-shown + label {
    transform: translateY(12px);
    font-size: 1rem;
    opacity: 0.6;
}

.form-group input[type="text"]:focus + label,
.form-group input[type="email"]:focus + label,
.form-group input[type="number"]:focus + label,
.form-group select:focus + label {
    color: #007bff;
    transform: translateY(-6px);
    font-size: 0.9rem;
    opacity: 1;
    transition: all 0.3s ease;
}


@keyframes pulseGlow {
    0% { box-shadow: 0 0 0px #0056b3; }
    50% { box-shadow: 0 0 12px #007bff; }
    100% { box-shadow: 0 0 0px #0056b3; }
}

.form-group input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 12px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    animation: pulseGlow 1.5s infinite alternate;
    transition: background-color 0.3s ease, transform 0.2s;
}

.form-group input[type="submit"]:hover {
    background-color: #3edf0d;
    transform: scale(1.03);
}

        
    </style>
</head>
<body>

    
    <div class="navbar">
        <a href="https://www.zoho.com/en-in/crm/">Home</a>
        <a href="https://help.zoho.com/portal/en/kb/crm/analytics-and-dashboards/analytics-or-dashboards/articles/create-dashboard">Dashboard</a>

        <div class="dropdown">
            <a href="#">Leads</a>
            <div class="dropdown-content">
                <a href="show">Add New Leads</a>
                <a href="listall">View All Leads Report</a>
            </div>
        </div>

        <div class="dropdown">
            <a href="#">Customer</a>
            <div class="dropdown-content">
                <a href="customer">Add New Customer</a>
                <a href="customerlist">View All Customer Report</a>
            </div>
        </div>

        <div class="dropdown">
            <a href="#">Billing</a>
            <div class="dropdown-content">
                <a href="billing">Create New Bill</a>
            </div>
        </div>

        <a href="customerlist">Reports</a>
        <a href="https://help.zoho.com/portal/en/kb/crm/organization-settings/personal-settings/articles/manage-account-settings">Settings</a>
    </div>

    <!-- Lead Information Form -->
    <div class="form-container">
        <h2>Lead Information</h2>
        <form action="leadSave" method="post">
            <!-- First Name -->
            <div class="form-group">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="fname" placeholder="Enter First Name" required>
            </div>

            <!-- Last Name -->
            <div class="form-group">
                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lname" placeholder="Enter Last Name" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required>
            </div>

            <!-- Mobile -->
            <div class="form-group">
                <label for="mobile">Mobile</label>
                <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" required>
            </div>

            <!-- Source -->
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

            <!-- Lead Type -->
            <div class="form-group">
                <label for="leadType">Lead Type</label>
                <select id="leadType" name="leadType" required>
                    <option value="Individual">Individual</option>
                    <option value="Company">Company</option>
                </select>
            </div>

            <!-- Estimated Value -->
            <div class="form-group">
                <label for="estimatedValue">Estimated Value</label>
                <input type="number" id="estimatedValue" name="estimatedValue" placeholder="Enter Estimated Value" step="0.01" required>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Save Lead">
            </div>
        </form>
    </div>

</body>
</html>
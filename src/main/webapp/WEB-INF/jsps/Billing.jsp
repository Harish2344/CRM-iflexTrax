<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <title>Billing form</title>
    <style>
        /* Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        
        .navbar {
            display: flex;
            justify-content: center;
            background: linear-gradient(135deg, rgb(219, 18, 18), rgb(123, 13, 187));
            padding: 15px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
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

        /* Show Dropdown */
        .dropdown:hover .dropdown-content {
            display: block;
        }

       
        .form-container {
            background-color: aliceblue;
            width: 400px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 20px;
        }

        .form-container h1 {
            text-align: center;
            background: linear-gradient(135deg, rgb(110, 2, 87), rgb(27, 26, 27));
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #000000;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 20px;
            font-size: 16px;
            color: #333;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color:gainsboro;
            outline: none;
        }

        .form-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            color: aliceblue;
            background: linear-gradient(135deg, rgb(219, 18, 18), rgb(123, 13, 187));
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background: linear-gradient(135deg, rgb(212, 192, 192), rgb(230, 13, 157)); 
        }

     
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}

.form-container {
    animation: fadeIn 0.8s ease-in-out;
}


@keyframes slideIn {
    from { opacity: 0; transform: translateY(-10px); }
    to { opacity: 1; transform: translateY(0); }
}

.navbar a {
    opacity: 0;
    animation: slideIn 0.6s ease-in-out forwards;
}

.navbar a:nth-child(1) { animation-delay: 0s; }
.navbar a:nth-child(2) { animation-delay: 0.1s; }
.navbar .dropdown:nth-child(3) a { animation-delay: 0.2s; }
.navbar .dropdown:nth-child(4) a { animation-delay: 0.3s; }
.navbar .dropdown:nth-child(5) a { animation-delay: 0.4s; }
.navbar a:nth-child(6) { animation-delay: 0.5s; }
.navbar a:nth-child(7) { animation-delay: 0.6s; }

    </style>
</head>
<body>
    <!-- Navbar -->
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

    <!-- Billing Form -->
    <div class="form-container">
        <h1>Billing Details</h1>
        <form action="billingSave" method="post">
            <div class="form-group">
                <label for="invoiceNumber">Invoice Number</label>
                <input type="number" name="invoiceNumber" placeholder="Invoice Number" required>
            </div>

            <div class="form-group">
                <label for="amount">Amount</label>
                <input type="number" name="amount" placeholder="Enter Amount" required>
            </div>

            <div class="form-group">
                <label for="tax">Tax</label>
                <input type="number" name="tax" placeholder="Enter Tax Amount" required>
            </div>

            <div class="form-group">
                <label for="discount">Discount</label>
                <input type="number" name="discount" placeholder="Enter Discount Amount" required>
            </div>

            <div class="form-group">
                <label for="paymentMethod">Payment Method</label>
                <select name="paymentMethod" required>
                    <option value="" disabled selected>Select Payment Method</option>
                    <option value="Credit Card">Credit Card</option>
                    <option value="Bank Transfer">Bank Transfer</option>
                    <option value="Cash">Cash</option>
                </select>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <select name="status" required>
                    <option value="" disabled selected>Select Status</option>
                    <option value="Paid">Paid</option>
                    <option value="Pending">Pending</option>
                    <option value="Overdue">Overdue</option>
                </select>
            </div>

            <div class="form-buttons">
                <button type="submit" class="btn">Save Invoice</button>
            </div>
        </form>
    </div>
</body>
</html>
 
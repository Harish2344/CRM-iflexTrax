<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
</title>
    <style>
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        
        .navbar {
            display: flex;
            justify-content: center;
            background: rgba(34, 49, 63, 0.9); /* Slightly transparent dark background */
            padding: 15px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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

        /* Underline Hover Effect */
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
                <a href="CustomerSave">Add New Customer </a>
                <a href="customerlist">View All customer Report </a>
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

</body>
</html>

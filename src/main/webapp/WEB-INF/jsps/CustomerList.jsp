<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <title>List Of Customers |ZOHO CRM</title>
    <style>
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        
        .navbar {
            display: flex;
            justify-content: center;
            background: linear-gradient(135deg, #df9b0a, #d440bc);
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

        
        .navbar a::after {
            content: '';
            display: block;
            width: 0;
            height: 2px;
            background: linear-gradient(135deg, #f0e9e9, #6e095d);
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
            
            background: linear-gradient(135deg, #dd0505, #963786);
        }

        
        .dropdown:hover .dropdown-content {
            display: block;
        }

        h1 {
            background:linear-gradient(135deg, #302a2a, #36b5d8);
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 28px;
            margin-top: 20px;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 90%;
            max-width: 1200px;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            overflow: hidden;
            opacity: 0;
            transform: translateY(20px);
            animation: fadeIn 1s ease-out forwards;
        }

        th, td {
            padding: 15px;
            text-align: left;
            color: #555;
            font-size: 14px;
        }

        th {
           
            background: linear-gradient(135deg, #3ca4c4, #d440bc);
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .btn {
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            font-size: 12px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-delete {
            background-color: #d60c0c;
            color: #fff;
        }

        .btn-delete:hover {
            background-color: #611108;
        }

        .btn-update {
            background-color: #3498db;
            color: #fff;
        }

        .btn-update:hover {
            background-color: #042d47;
        }

        
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(1500px);
            }
            100% {
                opacity: 1;
                transform: translateY(10px);
            }
        }

       
        tr:nth-child(1) td { animation-delay: 0.1s; }
        tr:nth-child(2) td { animation-delay: 0.2s; }
        tr:nth-child(3) td { animation-delay: 0.3s; }
        tr:nth-child(4) td { animation-delay: 0.4s; }
        tr:nth-child(5) td { animation-delay: 0.5s; }
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

    <h1>LIST OF ALL CUSTOMERS</h1>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone No</th>
            <th>Address Line 1</th>
            <th>Address Line 2</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Pin Code</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>

        <c:forEach var="customdata" items="${customdata}">
            <tr>
                <td>${customdata.firstname}</td>
                <td>${customdata.lastname}</td>
                <td>${customdata.email_id}</td>
                <td>${customdata.phone}</td>
                <td>${customdata.addressLine1}</td>
                <td>${customdata.addressLine2}</td>
                <td>${customdata.city}</td>
                <td>${customdata.state}</td>
                <td>${customdata.country}</td>
                <td>${customdata.pinCode}</td>
                <td><a href="deleteCustomer?id=${customdata.id}" class="btn btn-delete">Delete</a></td>
                <td><a href="updateCustomers?id=${customdata.id}" class="btn btn-update">Update</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
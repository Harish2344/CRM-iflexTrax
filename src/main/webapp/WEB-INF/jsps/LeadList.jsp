<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Lead |ZOHO CRM </title>

   
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
             /* Slightly transparent dark background */
            background: linear-gradient(135deg, #061847, #31bde4);
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
            background: #0f0f0f;
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

        
        .table-container {
            width: 100%;
            max-width: 11000px;
            background-color: #fdfafa;
            border-radius: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 70px;
            margin: 30px auto;
        }

        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th, td {
            padding: 20px;
            text-align: left;
        }

        th {
            background: linear-gradient(135deg, #4f7dff, #82e4ff);
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        
        .action-link {
            color: #fff;
            background-color: #ff4d4d;
            padding: 12px 30px;
           
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .action-link.update {
            background-color: #409943;
        }

        .action-link:hover {
            opacity: 0.9;
            background-color: #465347;
        }
        
        
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}

.navbar a {
    opacity: 0;
    animation: fadeIn 0.5s ease-in-out forwards;
}

.navbar a:nth-child(1) { animation-delay: 0s; }
.navbar a:nth-child(2) { animation-delay: 0.1s; }
.navbar .dropdown:nth-child(3) a { animation-delay: 0.2s; }
.navbar .dropdown:nth-child(4) a { animation-delay: 0.3s; }
.navbar .dropdown:nth-child(5) a { animation-delay: 0.4s; }
.navbar a:nth-child(6) { animation-delay: 0.5s; }
.navbar a:nth-child(7) { animation-delay: 0.6s; }

/* Slide-up Animation for Table Rows */
@keyframes slideUp {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

tbody tr {
    opacity: 0;
    animation: slideUp 0.4s ease-in-out forwards;
}

tbody tr:nth-child(1) { animation-delay: 0.1s; }
tbody tr:nth-child(2) { animation-delay: 0.2s; }
tbody tr:nth-child(3) { animation-delay: 0.3s; }
tbody tr:nth-child(4) { animation-delay: 0.4s; }
tbody tr:nth-child(5) { animation-delay: 0.5s; }
tbody tr:nth-child(6) { animation-delay: 0.6s; }
tbody tr:nth-child(7) { animation-delay: 0.7s; }

/* Button Hover Animation */
.action-link, .action-link.update {
    position: relative;
    overflow: hidden;
    z-index: 1;
}

.action-link::before, .action-link.update::before {
    content: "";
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.2);
    transition: all 0.3s ease-in-out;
    z-index: -1;
}

.action-link:hover::before, .action-link.update:hover::before {
    left: 0;
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

    <!-- Leads Table -->
    <div class="table-container">
        <h2 style="text-align:center; color:#030303; font-size:40px;">List of Leads</h2>
        <table border="2px">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Source</th>
                    <th>Lead Type</th>
                    <th>Estimated Value</th>
                    <th>Delete Lead</th>
                    <th>Update Lead</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="leaddata" items="${leaddata}">
                    <tr>
                        <td>${leaddata.fname}</td>
                        <td>${leaddata.lname}</td>
                        <td>${leaddata.email}</td>
                        <td>${leaddata.mobile}</td>
                        <td>${leaddata.source}</td>
                        <td>${leaddata.leadType}</td>
                        <td>${leaddata.estimatedValue}</td>
                        <td><a href="deleteLead?id=${leaddata.id}" class="action-link">Delete</a></td>
                        <td><a href="updateLead?id=${leaddata.id}" class="action-link update">Update</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>

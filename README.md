# Computer Order WebApp

## This is my practical test assignment for making Java Webapp
## In this webapp you can select specifications for Computer and Add it to new Order

# Setup:
1. Create new Database schema using "create-db" MySQL script. 
    Script can be found under "computer-order-webapp/src/main/resources"
    It will create 2 tables and populate them with data.
    
2. Change JDBC connection properties in file "persistence-mysql.properties".
    If not using default MySQL Host Name and Port  --> "jdbc.url=jdbc:mysql://**CHANGE THIS PART**/computer_order_webapp?useSSL=false".
    
    Change DB_USERNAME to your DB username
    
    Change DB_PASSWORD to your DB password
    
3. Import computer-order-webapp to IDE and run on WEB server.

# Possibilities of WebApp:
![Order Form](https://github.com/kicifans/computer-order-webapp/blob/main/src/main/resources/ComputerOrderForm.jpg)
![Order List](https://github.com/kicifans/computer-order-webapp/blob/main/src/main/resources/ComputerOrderList.jpg)

 ## Computer Order Form
  
    Create new order with computer from selected specifications
    
    Add comment / justification to this order
    
    Save Computer Order to database
  
  ## Computer Order List
    Gets orders and computers from database
    
    Show when order was made
    
    Ability to change Order status as Accepted or Rejected (default Pending)
    
    Ability to delete Order and Computer from database
    
    Rows change color depending from Order Status
    
    List is ordered by Date.


 # TO DO : 
 
    create Exception handlers
    
    remove hardcoded computer specifications from order-form
    
    make textarea safe from injections
    
    don't allow to save Order with empty textarea field
    
    needs visual adjustments
  
# Tech used to make this webapp:

  JAVA JDK11
  
  IntelliJ IDE
  
  Spring & Hibernate frameworks
  
  Maven for dependencies
  
  Bootstrap library
  
  Tomcat Webserver
  
  MySQL
  
  
    

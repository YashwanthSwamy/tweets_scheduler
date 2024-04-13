# The Model View Controller (MVC) Pattern

GET /about HTTP/1.1
Host: 127.0.01

GET for '/about'


## Routes
Matchers for the URL that is requested

GET for '/about'

I see you requested '/about', we'll give that to the AboutController to handle


## Models
Database wrapper

User
* query for records
* wrap individual records


## Views
Your response body content

* HTML
* CSS
* PDF
* XML
  
This is waht gets sent back to the browser and displayed


## Controller
Decides how to process a request and define a response
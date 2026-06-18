# ABOUT
    A small  rails API for managing orders.
    Each 'order' should have a 'total' and a 'status'.
    I should be able to 'create' an order and 'view all orders'.”

# STEPS
- rails db:migrate:status
- rails g model order total:string status:string
- rails db:migrate:status
- rails g controller orders 
- build controller logic
- build routes logic/maping
- amend migration file for default status
- test following TESTING

# TESTING
1. rails s (on a new terminal)

2. open localhost on a browser

3. ## Tests Creating a POST
curl -X POST http://127.0.0.1:3000/orders -H "Content-Type: application/json" -d '{"order":{"total":"200", "status":"unpaid"}}'

4. ## Tests Creating a POST
curl -X POST http://127.0.0.1:3000/orders -H "Content-Type: application/json" -d '{"order":{"total":"20", "status":"paid"}}'

5. ## Tests Creating a POST and the default status 
curl -X POST http://127.0.0.1:3000/orders -H "Content-Type: application/json" -d '{"order":{"total":"0.90"}}'

6. ## Tests Creating a POST and the downcase status
curl -X POST http://127.0.0.1:3000/orders -H "Content-Type: application/json" -d '{"order":{"total":"20", "status":"Paid"}}'

6. http://127.0.0.1:3000/orders

7. http://127.0.0.1:3000/orders/2

8. http://127.0.0.1:3000/orders/
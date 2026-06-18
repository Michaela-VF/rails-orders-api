# Orders API (Rails)

A small Ruby on Rails API for managing orders.
This project was built as a lightweight backend service 
to practice RESTful API design in Rails.

---

## Features

- Create new orders
- View all orders
- View individual orders
- Basic order attributes:
  - `total` (string)
  - `status` (string)

---

## API Endpoints

### Get all orders

```http
GET /orders
```

### Get a single order

```http
GET /orders/:id
```

### Create an order

```http
POST /orders
```

**Example request body:**

```json
{
  "order": {
    "total": "200",
    "status": "unpaid"
  }
}
```

N.B: `status` is required and validated by the application. 
The db also defines a default value of `pending` as a defensive fallback.
---

## Example Usage

Create an order:

```bash
curl -X POST http://127.0.0.1:3000/orders \
-H "Content-Type: application/json" \
-d '{"order":{"total":"20","status":"paid"}}'
```

Fetch all orders:

```http
GET http://127.0.0.1:3000/orders
```

Fetch a single order:

```http
GET http://127.0.0.1:3000/orders/1
```

---

## Tech Stack

- Ruby
- Ruby on Rails
- SQLite

---

## Purpose

This project was created to practice building a clean Rails API using RESTful routes, controllers, and database-backed models with basic validations. It serves as a simple example of creating and retrieving resources through HTTP endpoints.
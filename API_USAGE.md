# API Usage Examples

This document provides examples of how to interact with the Cafe Management System APIs.

## 1. Browse Menu

Retrieve all menu items:

```bash
curl -X GET http://localhost:3000/menu
```

Response example:
```json
[
  {
    "id": 1,
    "name": "Espresso",
    "price": 3.5,
    "stock": 100
  },
  {
    "id": 2,
    "name": "Cappuccino",
    "price": 4.0,
    "stock": 100
  },
  {
    "id": 3,
    "name": "Croissant",
    "price": 2.5,
    "stock": 50
  }
]
```

## 2. Create a Customer

```bash
curl -X POST http://localhost:3000/customers \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Emma Smith",
    "email": "emma.smith@example.com"
  }'
```

Response example:
```json
{
  "id": 1,
  "name": "Emma Smith",
  "email": "emma.smith@example.com",
  "loyaltyPoints": 0
}
```

## 3. Check Customer Loyalty Points

```bash
curl -X GET http://localhost:3000/customers/1
```

Response example:
```json
{
  "id": 1,
  "name": "Emma Smith",
  "email": "emma.smith@example.com",
  "loyaltyPoints": 10
}
```

## 4. Place an Order

```bash
curl -X POST http://localhost:3000/orders \
  -H "Content-Type: application/json" \
  -d '{
    "customerId": 1,
    "items": [
      {
        "menuItemId": 2,
        "quantity": 1
      },
      {
        "menuItemId": 3,
        "quantity": 1
      }
    ]
  }'
```

Response example:
```json
{
  "id": 1,
  "customerId": 1,
  "items": [
    {
      "menuItemId": 2,
      "name": "Cappuccino",
      "price": 4.0,
      "quantity": 1
    },
    {
      "menuItemId": 3,
      "name": "Croissant",
      "price": 2.5,
      "quantity": 1
    }
  ],
  "total": 6.5,
  "status": "pending"
}
```

## 5. Make a Payment

```bash
curl -X POST http://localhost:3000/payments \
  -H "Content-Type: application/json" \
  -d '{
    "orderId": 1,
    "amount": 6.5
  }'
```

Response example:
```json
{
  "id": 1,
  "orderId": 1,
  "amount": 6.5,
  "status": "completed"
}
```

## 6. Check Inventory Status

```bash
curl -X GET http://localhost:3000/inventory
```

Response example:
```json
[
  {
    "id": 1,
    "name": "Espresso",
    "stock": 100
  },
  {
    "id": 2,
    "name": "Cappuccino",
    "stock": 99
  },
  {
    "id": 3,
    "name": "Croissant",
    "stock": 49
  }
]
```

This example workflow demonstrates how Emma can:
1. Browse the menu
2. Create a customer profile
3. Check her loyalty points
4. Place an order for a latte and a muffin
5. Make a payment
6. Observe inventory updates

After completing these steps, Emma's loyalty points will be increased based on her purchase. 
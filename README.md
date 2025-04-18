# Cafe Management System

A Node.js microservices-based cafe management system designed for a bustling urban coffee shop.

## Overview

This system consists of six microservices, each with distinct responsibilities, using MongoDB for storage:

1. **API Gateway** (port 3000): Central entry point for routing requests
2. **Menu Service** (port 3001): Manages the cafe's menu
3. **Order Service** (port 3002): Handles order processing
4. **Payment Service** (port 3003): Processes payments
5. **Inventory Service** (port 3004): Maintains stock levels
6. **Customer Service** (port 3005): Manages customer profiles and loyalty points

## Getting Started

### Prerequisites

- Docker and Docker Compose
- Git

### Running the Application

```bash
# Clone the repository
git clone https://github.com/Minahilasif12/SCD-MID.git
cd SCD-MID

# Start all services
docker-compose up
```

## Usage Example

A customer, Emma, uses the cafe mobile app to:
1. Browse the menu
2. Check her loyalty points
3. Place an order for a latte ($4) and blueberry muffin ($3)
4. Make a payment
5. Receive confirmation

Behind the scenes, the system:
- Validates menu items and availability
- Processes the order
- Updates inventory
- Adds loyalty points to Emma's account
- Confirms the transaction

## Architecture

The system follows a microservices architecture where each service is independent and communicates via HTTP APIs through the central API Gateway. 
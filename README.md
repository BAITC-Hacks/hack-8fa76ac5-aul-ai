AqylQor — AI-Powered Inventory Management System
AqylQor is an AI-powered system designed to monitor inventory, forecast demand, and calculate replenishment orders for suppliers. Its goal is to simplify stock management, reduce shortages and excess inventory, and help businesses make purchasing decisions based on data.
The platform will be a responsive website that works comfortably on both mobile phones and laptops. A clear interface will give users quick access to essential information and everyday tasks.
The Problem
Managing inventory manually or through separate Excel files can lead to outdated information, calculation errors, and delayed purchasing decisions. As a result, some products run out while others remain in storage for too long.
AqylQor will bring inventory data into one system, making it easier to track stock movements and plan future purchases.
Admin and User Dashboards
The platform will provide separate dashboards for administrators and regular users. Access to information and actions will depend on each user’s role.
Admin Dashboard
Administrators will be able to:
- View overall inventory status and key metrics.
- Add users and manage their permissions.
- Manage products, categories, and suppliers.
- Monitor incoming stock, outgoing stock, and current balances.
- Review and approve purchasing recommendations and orders.
- Access reports and activity history.
User Dashboard
Depending on their permissions, users will be able to:
- View products and available stock.
- Record incoming and outgoing inventory.
- Upload data from Excel files.
- Receive low-stock alerts.
- View AI recommendations.
- Ask questions through the AI chat assistant.
Product and Inventory Management
Each product will have a dedicated record containing its name, SKU, category, unit of measurement, purchase price, supplier, current stock, and minimum stock level.
The system will record stock receipts, sales, and other inventory adjustments. Each transaction will include its date, quantity, and the user who recorded it, making stock changes traceable.
When a product’s stock falls below its configured threshold, the system will display an alert.
Data Entry
The platform will support two main methods of entering data:
1. Excel import: Upload existing spreadsheets to add products and initial stock balances.
2. Website forms: Add or update products, suppliers, and inventory transactions directly through the website.
During Excel imports, the system will validate required columns, data formats, and duplicate records. If errors are detected, it will identify the rows that need correction. Users will be able to preview the data before confirming the import.
Artificial Intelligence Features
Demand Forecasting
The AI will analyze historical sales and stock usage to estimate future demand. When sufficient data is available, it will account for seasonal patterns and changes in demand.
Forecasts will be displayed through charts and compared with actual results. If historical data is limited, the system will clearly communicate the uncertainty of its forecasts.
Purchasing Recommendations
The system will calculate suggested purchase quantities using current stock, expected demand, supplier lead times, and safety stock requirements. It will also consider outstanding orders to help prevent duplicate or unnecessary purchases.
Users will see:
- Which products need replenishment.
- Recommended order quantities.
- Suggested order dates.
- The data and reasoning behind each recommendation.
- Estimated purchasing costs when prices are available.
In the initial version, a responsible user will review and approve recommendations. Automatically sending orders to suppliers may be added later as a separate integration.
AI Chat Assistant
The chat assistant will answer questions using the data available within the system. Example questions include:
- “Which products are running low?”
- “What should we purchase next week?”
- “Which product had the highest demand this month?”
- “Why does the system recommend ordering this product?”
The assistant will respect user access permissions and clearly indicate when there is insufficient data to answer a question.
Suppliers and Purchase Orders
Supplier records will include company names, contact details, supplied products, and estimated delivery times.
Users will be able to create draft purchase orders from replenishment recommendations. Each order will include products, quantities, prices, and the total cost.
Order statuses will include:
- Draft
- Approved
- Sent
- Partially Received
- Received
Inventory balances will update only when goods are actually received.
Design and Additional Features
The website will have a modern, lightweight design suited to everyday use. The dashboard will highlight the total number of products, low-stock items, open orders, and purchasing needs.
Additional features will include:
- An FAQ section answering common questions.
- A link to the Telegram bot.
- Product search and filtering by name, category, and supplier.
- Clear notifications confirming actions and explaining errors.
- Subtle animations that support navigation and usability.
Telegram notifications and inventory queries through the bot may be introduced in a later development phase.
Technical Foundation
The backend will be built with Python and FastAPI, with PostgreSQL as the primary database. It will store users, products, suppliers, inventory transactions, purchase orders, and forecast results.
The frontend will communicate with the backend through an API. The AI components will support demand forecasting, purchasing recommendations, and the chat assistant.
Security measures will include role-based access control, secure password storage, input validation, and database backups.
Development Roadmap
Phase 1 — Core Platform
- Authentication and user roles.
- Product and supplier management.
- Incoming and outgoing inventory tracking.
- Excel imports.
- Separate admin and user dashboards.
- Low-stock alerts.
Phase 2 — AI Features
- Demand forecasting.
- Purchasing recommendations.
- Forecast accuracy evaluation.
- AI chat assistant.
Phase 3 — Expansion
- Telegram notifications.
- Multiple warehouse support.
- Integrations with external systems.
Expected Outcome
AqylQor will help business owners and warehouse staff understand what is in stock, which products are running low, and when to place new orders—all from one platform. The project aims to reduce time spent on manual tracking, improve purchasing decisions, and support more efficient inventory management.


17:28

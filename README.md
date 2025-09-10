# Cafe Sales & Performance Dashboard  

## 📌 Table of Contents  
1. [Project Overview](#-1-project-overview)  
2. [Business Problem / Objective](#-2-business-problem--objective)  
3. [Dataset Description](#-3-dataset-description)  
4. [Tools & Skills Used](#-4-tools--skills-used)  
5. [Approach / Methodology](#-5-approach--methodology)  
6. [Key Insights / Results](#-6-key-insights--results)  
7. [Dashboard / Output Screenshots](#-7-dashboard--output-screenshots)  
8. [Conclusion & Future Work](#-8-conclusion--future-work)  


##  1. Project Overview  
An interactive **Power BI Dashboard** for **Drincup Cafe**, powered by **SQL-based data extraction & analysis**.  
The solution provides a **360° view of KPIs** (orders, revenue, customer ratings) and delivers insights into:  
- Sales trends by **payment type**, **order source**, and **product category**  
- Peak operational hours  
- Customer satisfaction metrics  

👉 Designed to **optimize efficiency, boost revenue, and improve customer experience** through **data-driven decisions**.  


##  2. Business Problem / Objective  
The project aimed to transform raw transactional data into a **single source of truth dashboard** to answer:  

- **Performance Tracking:** Monitor daily, weekly & monthly sales trends.  
- **Operational Optimization:** Identify profitable order sources & payment modes.  
- **Product Strategy:** Track top-selling items/categories for menu planning.  
- **Customer Experience:** Use customer ratings to refine services.  
- **Resource Planning:** Align staffing schedules with peak demand hours.  



##  3. Dataset Description  
**Dataset:** `cafe_orders` (transaction-level).  
**Key Attributes:**  
- `order_date` → Sales trend & forecasting  
- `total_price` → Revenue per order  
- `item_name`, `category` → Item/category performance  
- `quantity` → Order volume  
- `customer_rating` → Satisfaction measure  
- `payment_type` → Cash, Card, UPI analysis  
- `peak_hour_flag` → Peak vs Non-peak segmentation  



##  4. Tools & Skills Used  

**🛠 Tools:**  
- **Power BI Desktop** → Data modeling, visualization & dashboarding  
- **SQL** → Data extraction, transformation & analysis  

**💡 Skills:**  
- **SQL Queries** → GROUP BY, ORDER BY, Window Functions (RANK)  
- **Data Modeling** → Robust schema design in Power BI  
- **Data Visualization** → Bar, Doughnut, Line & Area charts  
- **Business Insight Generation** → Translating requirements into decisions  



##  5. Approach / Methodology  
1. **Data Extraction:** SQL queries for cleaning, aggregations & filtering  
2. **Data Ingestion:** Load into Power BI & refine via Power Query  
3. **KPI Calculations:**  
   - Total Orders  
   - Total Revenue  
   - Avg Order Value  
   - Avg Customer Rating  
4. **Dashboard Design:**  
   - Doughnut Charts → Revenue by Source & Payment  
   - Bar Charts → Top Products  
   - Area Charts → Revenue Trend & Peak vs Non-Peak Orders  
5. **Insight Generation:** Drill-downs to reveal trends & patterns  



##  6. Key Insights / Results  

| Metric / Trend | Insight | Recommendation |
|----------------|---------|----------------|
| **Sales Performance** | 300 orders → **$63K revenue**, Avg Order Value = **$209.13** | Maintain growth by targeting repeat customers |
| **Order Sources** | Delivery: **54.7%**, Dine-in: **28.91%**, Takeaway: **16.39%** | Strengthen delivery channel & expand promotions |
| **Payment Modes** | Card: **52.88%**, UPI: **39.66%**, Cash: **7.46%** | Invest in digital infra & incentivize digital payments |
| **Product Mix** | Beverages = **47.4% of revenue**; Top items → Sandwich & Latte | Diversify Beverages & Snacks for higher margins |
| **Customer Ratings** | Avg = **4.25 / 5** | Sustain quality; address service gaps |
| **Operational Trends** | High order spikes during peak hours | Adjust staffing to match peak demand |  


##  7. Dashboard / Output Screenshots  
  <img width="883" height="516" alt="Drincup Cafe Dashboard Screenshot" src="https://github.com/user-attachments/assets/9c6dd754-d21e-47e3-a091-de437355f7ee" />




##  8. Conclusion & Future Work  
✅ Delivered an **interactive, insight-rich dashboard** that uncovered sales trends, customer behavior & operational efficiency.  
✅ Empowered management with **actionable insights** for profitability & customer satisfaction.  

**Next Steps:**  
- **Customer Segmentation** → Targeted campaigns (frequent buyers, high spenders)  
- **Profitability Analysis** → Integrate cost data for net margins  
- **Predictive Analytics** → Time-series forecasting for demand & inventory planning  



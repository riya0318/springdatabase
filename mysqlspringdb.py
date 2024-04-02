import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
import statistics as stats
import numpy as np

from sqlalchemy import create_engine

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="riyayadav",
    database="springdb")

cursor = conn.cursor()

query = "select * from customers_1"

cursor.execute(query)

result = cursor.fetchall()

# for x in result:
#   print(x)

df_c = pd.read_sql_query(query, conn)
print(df_c)
# print(df_c.info())
# print(df_c.describe())
# print(df_c.drop_duplicates())
# print(df_c.info())

# engine = create_engine('mysql+mysqlconnector://root:riyayadav@localhost/springdb')

# Write the DataFrame to the MySQL table
# df.to_sql(name="customers_1", con=engine, if_exists='replace', index=False, schema=None)
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="riyayadav",
    database="springdb")

cursor = conn.cursor()

query = "select * from sales_1"

cursor.execute(query)

result = cursor.fetchall()

# for x in result:
#   print(x)

df_s = pd.read_sql_query(query, conn)
print(df_s)

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="riyayadav",
    database="springdb")

cursor = conn.cursor()

query = "select * from products_1"

cursor.execute(query)

result = cursor.fetchall()

# for x in result:
#   print(x)

df = pd.read_sql_query(query, conn)
print(df)

# x = ["quantity"]
# y = ["total_sales"]

df_3 = pd.merge(df_c, df_s, on='customer_id', how='inner')
print("\nMerged DataFrame:")
print(df_3)
print(df_3.describe())

merged_df = pd.merge(df_s, df, on="product_id", how="inner")
print("\nMerged dataframe:")
print(merged_df)
print(merged_df.describe())

# category analysis
category_price = merged_df.groupby('category')['price'].sum()
print("category wise total price: ", category_price)

category_q = merged_df.groupby('category')['quantity'].sum()
print("quantity wise category: ", category_q)

total_spending = merged_df.groupby('category')['total_sales'].sum()
print("category wise total sale: ", total_spending)

# product analysis
product_sale = merged_df.groupby('product_id')['total_sales'].sum()
print("sum of product sales: ", product_sale)

pquantity_sale = merged_df.groupby('product_id')['quantity'].sum()
print("quantity wise productt sale: ", pquantity_sale)

high_performing = merged_df.groupby("category")["product_id"].sum()
print("high performing category based on product id sales:", high_performing)

top_products = product_sale.nlargest(5)
print("top 5 products: ", top_products)
least_products = product_sale.nsmallest(5)
print("least 5 products: ", least_products)
top_pquantity = pquantity_sale.nlargest(5)
print("top 5 quantity wise products: ", top_pquantity)
least_pquantity = pquantity_sale.nsmallest(5)
print("least 5 quantity wise products: ", least_pquantity)

# time analysis sale
yearly_revenue = merged_df.groupby('sale_date')['total_sales'].mean()
print("yearly revenue: ", yearly_revenue)

quantity_sales = merged_df.groupby('quantity')['total_sales'].sum()
print("quantity wise sales: ", quantity_sales)

month_sale = merged_df.groupby('month')["total_sales"].sum()
print("monthly sales: ", month_sale)

# customer analysis
customer_spending = merged_df.groupby('customer_id')['total_sales'].sum()
print("customer spending: ", customer_spending)

top_customers = customer_spending.nlargest(5)
print("top 5 customers: ", top_customers)

tp_price = df['price'].nsmallest(5)
print(tp_price)

totrevenue = df_s["total_sales"].sum()
avgorder = df_s["quantity"].mean()
avgprice = df["price"].mean()
category_avgprice = merged_df.groupby('category')['price'].mean()
print("category wise average price: ", category_avgprice)
print("total revenue: ", totrevenue)
print("avergae order: ", avgorder)
print("average price: ", avgprice)

# product sale analysis

plt.figure(figsize=(7, 5))
pquantity_sale.plot(kind='bar', color='skyblue')
plt.title('Quantity Wise sales of product')
plt.xlabel('Product ID')
plt.ylabel('Quantity Sold')
plt.show()

plt.figure(figsize=(7, 5))
product_sale.plot(kind='bar', color="lightgreen")
plt.title("sum of product sale")
plt.xlabel("product Id")
plt.ylabel("sum of sale")
plt.show()

plt.figure(figsize=(7, 5))
top_products.plot(kind="bar", color="red")
plt.title("top 5 product id as per sales ")
plt.xlabel("product id")
plt.ylabel("sale")
plt.show()

plt.figure(figsize=(7, 5))
top_pquantity.plot(kind="bar", color="red")
plt.title("top 5 product id as per quantity ")
plt.xlabel("product id")
plt.ylabel("quantity sold")
plt.show()

plt.figure(figsize=(7, 5))
least_products.plot(kind="bar", color="red")
plt.title("least 5 product id as per sales ")
plt.xlabel("product id")
plt.ylabel("sale")
plt.show()

plt.figure(figsize=(7, 5))
least_pquantity.plot(kind="bar", color="red")
plt.title("least 5 product id as per quantity ")
plt.xlabel("product id")
plt.ylabel("quantity sold")
plt.show()

# customer sale analysis

plt.figure(figsize=(7, 5))
top_customers.plot(kind="bar", color="yellow")
plt.title("top 5 customers id as per sale")
plt.xlabel("customer id")
plt.ylabel("sale")
plt.show()

plt.figure(figsize=(7, 5))
customer_spending.plot(kind="bar", color="pink")
plt.title("sum of customers sale")
plt.xlabel("customer id")
plt.ylabel("sale")
plt.show()

# category sales
plt.figure(figsize=(7, 5))
category_price.plot(kind="bar", color="purple")
plt.title("category wise sales")
plt.xlabel("category")
plt.ylabel("sale")
plt.show()

y = np.array([209, 206])
plt.pie(y)
plt.title("total quantity of category")
mylabels = ("Apparel= 209", "Electronics=206")
plt.pie(y, labels=mylabels)
plt.show()

y = np.array([153.12, 150.92])
plt.pie(y)
plt.title("average price of category")
mylabels = ("Apparel= 153.12", "Electronics=150.92")
plt.pie(y, labels=mylabels)
plt.show()

y = [totrevenue, avgprice, avgorder]
mylabels = ("totalrevenue", "avgprice", "avgorder")
print(y)
plt.pie(y, labels=mylabels)
plt.title("stats")
plt.show()

y = np.array([2296.91, 2263.94])
plt.pie(y)
plt.title("sum_of_category_price")
mylabels = ("Apparel= 2296.91", "Electronics=2263.94")
plt.pie(y, labels=mylabels)
plt.show()

# time analysis

plt.figure(figsize=(7, 5))
month_sale.plot(kind="bar", color="pink")
plt.title("monthly sale")
plt.xlabel("month")
plt.ylabel("sale")
plt.show()

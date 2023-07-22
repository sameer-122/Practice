import psycopg2

# Connect to your PostgreSQL database
conn = psycopg2.connect(
    host="localhost",
    database="Company",
    user="postgres",
    password="12345"
)

# Create a cursor to execute SQL queries
cursor = conn.cursor()

# Execute the query to get column names
table_name = "employees"
column_to_exclude = "id"
query = f"SELECT column_name FROM information_schema.columns WHERE table_name = '{table_name}' AND column_name != '{column_to_exclude}';"

cursor.execute(query)
results1 = cursor.fetchall()   # list of tuple of single column_name

# print( results1[0])

# Fetch all the column names except the one to exclude
column_names = [row[0] for row in results1]

# Construct the SELECT query dynamically
select_query = f"SELECT {', '.join(column_names)} FROM {table_name};"

# Execute the constructed SELECT query
cursor.execute(select_query)

# Fetch and print the results
results = cursor.fetchall()
# print('result', results)
print(column_names)
for row in results:
    print(row)

# Close the cursor and connection
cursor.close()
conn.close()

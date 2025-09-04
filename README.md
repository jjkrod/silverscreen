# Project: Silver Screen
Project made for Masterschool. 

## Description 
*Silver Screen* is a a chain of 3 movie theaters in New Jersey recently acquired by a major Entertainment Company. 
We want to know the revenue generated and costs rental of the movies in each locations. 
We will work with dbt to get a table that summarizes monthly performance for each movie across all locations. 

## Tools
* 📄 csv. (sources files)
* ❄️ Snowflakes (DW)
* ⚙️ dbt Cloud (ETL) 
* 🦊 GitHub (Repository)

## Sources
We received 5 source files.

### Movies
Description: the information of each movie differenciated by a unique identifier.
| Column Name | Description |
| ----------- | ----------- |
| movie_id  | Unique identifier for each movie, often composed of a combination of studio, year, and a unique code. |
| movie_title | The title of the movie. |
| release_date | The official release date of the movie in YYYY-MM-DD format. |
| genre | The genre of the movie, describing the type of content. |
| country | The country where the movie was produced. |
| studio | The production studio responsible for making the movie. |
| budget | The production budget of the movie, typically in dollars. |
| director | The director of the movie. |
| rating | The movie’s age rating, describing the appropriate audience (e.g., PG, R). |
| minutes | The runtime of the movie in minutes. |

### Invoices
Description: the invoices of the rental of the movies for all the NJ locations.
| Column Name | Description |
| ----------- | ----------- |
| movie_id  | A unique identifier for each movie, typically consisting of the studio, year, and a unique movie code. |
| invoice_id  | A unique identifier for each invoice issued for a specific movie at a specific location during a particular month. |
| month  | The month in which the invoice was issued, in the format YYYY-MM-DD. |
| location_id  | The identifier of the movie theater location, which is where the movie was shown. |
| studio  | The production studio responsible for the movie, such as Pixar, Marvel Studios, etc. |
| release Date  | The official release date of the movie, when it was first available to the public in theaters. |
| weekly price  | The weekly price charged for showing the movie at the specific location. |
| total_invoice_sum  | The total sum of the invoice for the week, typically calculated as the weekly price multiplied by the number of weeks or total shows. |

### NJ_001
Description: the information of the sales from the location NJ_001. 
| Column Name | Description |
| ----------- | ----------- |
| timestamp  | The date and time the transaction occurred, formatted as YYYY-MM-DD. |
| transaction_id  | A unique alphanumeric identifier assigned to each transaction. This ensures each transaction is uniquely identified. |
| movie_id  | A unique identifier for the movie being viewed in the transaction, usually tied to the movie's ID. |
| ticket_amount  | The number of tickets purchased in this particular transaction. |
| price  | The price per ticket for the transaction. This is the cost of a single ticket. |
| transaction_total  | The total amount of money spent in the transaction, calculated as ticket_amount * price. |
| is_discounted  | A boolean value indicating whether the transaction involved a discounted ticket. TRUE for discounted, FALSE for full price. |
| is_3D  | A boolean value indicating whether the movie shown was in 3D. TRUE if the movie was in 3D, FALSE if not. |

### NJ_002
Description: the information of the sales from the location NJ_002. 
| Column Name | Description |
| ----------- | ----------- |
| date  | The date of the ticket sales transaction, formatted as YYYY-MM-DD. This represents the day for which ticket sales are recorded. |
| movie_id  | A unique identifier for the movie being sold, typically tied to a movie's ID. |
| ticket_amount  | The number of tickets sold on the given day. |
| ticket_price  | The price per ticket sold on that particular day. |
| total_earned  | The total revenue earned from ticket sales on the specified date, calculated as ticket_amount * ticket_price. |

### NJ_003
Description: the information of the sales from the location NJ_003. 
| Column Name | Description |
| ----------- | ----------- |
| timestamp  | The date and time when the transaction occurred, formatted as YYYY-MM-DD. |
| transaction_id  | A unique alphanumeric identifier assigned to each transaction, ensuring that each transaction can be uniquely identified. |
| product_type  | The type of product involved in the transaction, which could be a ticket, drink, snack, etc. |
| details  | For tickets, this indicates the movie being viewed, represented by the movie_id. For other products, it remains empty or unspecified. |
| amount  | The quantity of the product purchased in the transaction. |
| price  | The price per unit of the product sold. This is the cost of one item, whether it's a ticket, drink, or snack. |
| total_value  | The total amount spent in the transaction, calculated as amount * price. |

-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer.customer_id,customer.first_name,customer.last_name,COUNT(payment.amount)
FROM customer
LEFT JOIN payment 
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(payment.amount) DESC
LIMIT 3;


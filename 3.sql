-- film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
(
	SELECT * FROM film
	WHERE rental_rate =
	(
		SELECT MIN(rental_rate) FROM film
	)
)
UNION
(
	SELECT * FROM film
	WHERE replacement_cost = 
	(
		SELECT MIN(replacement_cost) FROM film
	)
);

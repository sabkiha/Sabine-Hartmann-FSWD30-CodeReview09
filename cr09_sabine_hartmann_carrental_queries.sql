-- List of driver names with the reservation and car IDs
SELECT `car`.`car_id`, `reservation`.`reservation_id`, `driver`.`driver_name`
FROM `car`
    LEFT JOIN `reservation` ON `reservation`.`car_id` = `car`.`car_id`
    LEFT JOIN `driver` ON `reservation`.`driver_name` = `driver`.`driver_id`
WHERE `reservation`.`reservation_id` IS NOT NULL

--Find out when which car is reserved. Results in a list ordered by date
SELECT `car`.`car_id`, `reservation`.`reservation_id`, `driver`.`driver_name`
FROM `car`
    LEFT JOIN `reservation` ON `reservation`.`car_id` = `car`.`car_id`
    LEFT JOIN `driver` ON `reservation`.`driver_name` = `driver`.`driver_id`
WHERE `reservation`.`reservation_id` IS NOT NULL

-- list of final invoices, with reservations and driver details
SELECT `final_invoice`.*, `reservation`.*, `driver`.*
FROM `reservation`
    LEFT JOIN `final_invoice` ON `final_invoice`.`reservation_id` = `reservation`.`reservation_id`
    LEFT JOIN `driver` ON `reservation`.`driver_name` = `driver`.`driver_id`

    


--- not quite sure why this query does not work. Looked it up in documentation
-- SELECT DATEDIFF('reservation.reservation_date_from', 'reservation.reservation_date_until') 

-- calculate rental price. does not work
-- SELECT 'car'.'car_price_day' * 'reservation'.'reservation_days'
# Write your MySQL query statement below
# SELECT id FROM Weather WHERE temperature > (SELECT temperature FROM Weather WHERE recordDate = DATE_SUB(recordDate, INTERVAL 1 DAY) LIMIT 1);
# DATE(recordDate) >= DATE_SUB(recordDate, INTERVAL 1 DAY)
SELECT W.id
FROM Weather AS W
JOIN Weather AS W2
ON DATEDIFF(W.recordDate, W2.recordDate) = 1
WHERE W.temperature > W2.temperature
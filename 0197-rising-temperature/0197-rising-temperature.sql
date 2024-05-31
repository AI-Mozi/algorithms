# Write your MySQL query statement below
SELECT W.id
FROM Weather AS W
JOIN Weather AS W2
ON DATEDIFF(W.recordDate, W2.recordDate) = 1
WHERE W.temperature > W2.temperature
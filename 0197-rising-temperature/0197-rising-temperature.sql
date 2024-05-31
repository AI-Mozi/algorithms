# Write your MySQL query statement below
# SELECT id FROM Weather WHERE temperature > (SELECT temperature FROM Weather WHERE recordDate = DATE_SUB(recordDate, INTERVAL 1 DAY) LIMIT 1);
# DATE(recordDate) >= DATE_SUB(recordDate, INTERVAL 1 DAY)
SELECT W.id FROM Weather as W WHERE W.temperature > (SELECT T.temperature FROM Weather as T WHERE T.recordDate = DATE_SUB(W.recordDate, INTERVAL 1 DAY));
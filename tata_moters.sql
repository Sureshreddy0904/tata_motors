
# ques 2
# Rank the Sales of the branches in each region in 3 weeks.
select * from sales_data;
SELECT * , RANK ()  OVER ( ORDER BY TOTAL_SALES DESC) AS RANK_SALES FROM (
select BRANCH_ID,COUNT(SALE_ID) AS TOTAL_SALES from sales_data
WHERE WEEK(SALE_DATE) = 1 OR 2 OR 3 
group by branch_id ) X; 
#WHERE WEEK(SALE_DATE) = 1 OR 2 OR 3 ;
SELECT * FROM SALES_DATA;
# QUE3 
#Find out which sales branch made the highest sales in 1st week.
SELECT * FROM sales_data
WHERE WEEK(SALE_DATE) = 1;


 # QUE 4
 #Which variant of which car had the most sales in week 1?
SELECT * FROM  CAR_DETAILS C JOIN 
SALES_DATA S ON C.MODEL_NUM = S.CAR_MODEL
WHERE WEEK(S.SALE_DATE)=1
GROUP BY C.VARIANT
ORDER BY COUNT(C.VARIANT) DESC LIMIT 1;


# QUE 5
#Which variant of which car had the least sales in week 3?

SELECT C.VARIANT,COUNT(C.VARIANT) FROM  CAR_DETAILS C JOIN 
SALES_DATA S ON C.MODEL_NUM = S.CAR_MODEL
WHERE WEEK(S.SALE_DATE)=3 
GROUP BY C.VARIANT
ORDER BY COUNT(C.VARIANT) ASC LIMIT 1;

#QUE 6
# Show how many cars came for service in each branch of each region.

SELECT COUNT(SALE_ID) AS COUNT FROM SERVICE_DATA 
GROUP BY BRANCH_ID;







SELECT * FROM SERVICE_DATA;
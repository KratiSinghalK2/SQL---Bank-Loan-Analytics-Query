select*from finance_10;

                                     #KPI 1 -- Year wise loan amount

select year(issue_d) as Year , sum(loan_amnt) as Loan from finance_10 group by year order by year desc;

                                        #KPI 2-- Grade and Sub-grade wise revolving balance

select f1.Grade,f1.Sub_grade,sum(f2.revol_bal) from finance_10 f1 
inner join finance_20 f2 using(id) group by grade, sub_grade order by grade,sub_grade desc;
                                         #KPI 3-- Total Payment for Verified Status Vs Total Payment for Non Verified Status

select f1.verification_status , sum(f2.Total_Payment) as Total_Payment from finance_10 f1 inner join
 finance_20 f2  using(id) group by verification_status order by Total_Payment desc limit 2;  
                                         #KPI4-- State wise and last_credit_pull_d wise loan status

select f1.addr_state , count(f2.last_credit_pull_d) as month_wise,f1.loan_status from finance_10 f1 inner join finance_20 f2 using(id) 
group by f1.addr_state, f1.loan_status order by f1.addr_state ,month_wise desc;

                                           #KPI 5-- Home ownership Vs last payment date stats
select f1.home_ownership , count(f2.last_pymnt_d) as total from finance_10 f1 inner join finance_20 f2 using(id) 
group by f1.home_ownership order by total desc limit 3;
create database project

--renameing columns:
--one way is to right click to the variable name in the column and choose modify and rename it. or rename it when importing the data file

--or by using chatgpt search and getting this code:

EXEC sp_rename 'Project.Product_type','p_type'
EXEC sp_rename 'Project.Number_of_products_sold','no_prod_sold'
EXEC sp_rename 'Project.Revenue_generated','rev_gen'
EXEC sp_rename 'Project.Availability','avail_per'
EXEC sp_rename 'Project.Customer_demographics','gender'
EXEC sp_rename 'Project.Stock_levels','stock_per'
EXEC sp_rename 'Project.Lead_times','customer_lt'
EXEC sp_rename 'Project.Order_quantities','order_qun'
EXEC sp_rename 'Project.Shipping_times','shipping_lt'
EXEC sp_rename 'Project.Shipping_carriers','shipping_carr'
EXEC sp_rename 'Project.Shipping_costs','shipping_cost'
EXEC sp_rename 'Project.Supplier_name','sup_name'
EXEC sp_rename 'Project.Location','delv_location'
EXEC sp_rename 'Project.Lead_time','supplier_lt'
EXEC sp_rename 'Project.Production_volumes','prod_volum'
EXEC sp_rename 'Project.Manufacturing_lead_time','manfuct_lt'
EXEC sp_rename 'Project.Manufacturing_costs','manfuct_cost'
EXEC sp_rename 'Project.Inspection_results','inspect_resl'
EXEC sp_rename 'Project.Defect_rates','def_rate'
EXEC sp_rename 'Project.Transportation_modes','trans_modes'
EXEC sp_rename 'Project.Costs','other_cost'



--checking missing values:
select * 
from project
where p_type is null  or
      SKU is null Or Price is null
     Or avail_per is null Or no_prod_sold is null
     Or rev_gen is null Or  gender is null
     Or stock_per is null or customer_lt is null or order_qun is null or shipping_lt is null
     Or shipping_carr is null or shipping_cost is null 
     or sup_name is null or delv_location is null or supplier_lt is null or prod_volum is null
     Or manfuct_lt is null or manfuct_cost  is null or inspect_resl is null
     Or def_rate is null or trans_modes is null or Routes is null or other_cost is null

--or some do this:
select * from Project
where p_type is null
select * from Project
where SKU is null
select * from Project
where Price is null
select * from Project
where avail_per is null
select * from Project
where no_prod_sold is null
select * from Project
where rev_gen is null
select * from Project
where gender is null
select * from Project
where stock_per is null
select * from Project
where customer_lt is null
select * from Project
where order_qun is null
select * from Project
where shipping_lt is null
select * from Project
where shipping_carr is null
select * from Project
where shipping_cost is null
select * from Project
where sup_name is null
select * from Project
where delv_location is null
select * from Project
where supplier_lt is null
select * from Project
where prod_volum is null
select * from Project
where manfuct_lt is null
select * from Project
where manfuct_cost is null
select * from Project
where inspect_resl is null
select * from Project
where def_rate is null
select * from Project
where trans_modes is null
select * from Project
where Routes is null
select * from Project
where other_cost is null


--checking duplicated values:
Select* , count(*) as 'count duplicates'
from dbo.Project
group by p_type,SKU,Price,avail_per,no_prod_sold,rev_gen,
         gender,stock_per,customer_lt,order_qun,shipping_lt
         ,shipping_carr,shipping_cost,sup_name,delv_location,supplier_lt,prod_volum
		 ,manfuct_lt,manfuct_cost,inspect_resl,
		 def_rate,trans_modes,Routes,other_cost
Having count(*) > 1


--or some do this:
select SKU,count(p_type) as no_type,count(SKU) as no_sku,count(Price)as no_price, count(avail_per)as no_avail,count(no_prod_sold)as no_orod_sol,
count(rev_gen) as no_rev_gen, count(gender) as no_gend,count(stock_per) as no_stoc_per, count(customer_lt) as no_cust_lt, count(order_qun)as no_ord_qun,
count(shipping_lt)as no_ship_lt,count(shipping_carr)as no_ship_car,count(shipping_cost)as no_ship_cost,count(sup_name) as no_sup_nam,count(delv_location)as no_delv_loc, 
count(supplier_lt) as no_sup_lt,count(prod_volum)as no_prod_vol,count(manfuct_lt)as no_manf_lt,count(manfuct_cost)as no_manf_cost,count(inspect_resl) as no_insp_res,
count(def_rate)as no_def_rat, count(trans_modes) as no_tran_mod,count(Routes) as no_rout,count(other_cost)as no_oter_cost from Project
group by SKU
having count(p_type)>1 and count(SKU)>1 and count(Price)>1 and count(avail_per)>1 and count(no_prod_sold)>1 and count(rev_gen) >1 and count(gender) >1 and count(stock_per) >1 and count(customer_lt) >1 and count(order_qun)>1
and count(shipping_lt)>1 and count(shipping_carr)>1 and count(shipping_cost)>1 and count(sup_name) >1 and count(delv_location)>1 and count(supplier_lt) >1 and count(prod_volum)>1 and count(manfuct_lt)>1 and count(manfuct_cost)>1
and count(inspect_resl) >1 and count(def_rate)>1 and count(trans_modes) >1 and count(Routes) >1 and count(other_cost)>1



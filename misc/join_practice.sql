use murach;
-- Write a select clause that returns all columns from Vendors 
-- inner joined with all columns from the invoices table
-- should return 114 rows
SELECT * 
FROM vendors v
INNER JOIN invoices i on v.vendor_id = i.vendor_id;

-- Write a select clause that returns columns vendor_name, invoice_number, invoice_date
-- and balance_due. Return one row for each invoice with a non-zero balance. 
-- should return 11 rows
-- sort result by vendor_name in ascending order

SELECT distinct v.vendor_name, 
i.invoice_number as invoice_number, 
i.invoice_date as invoice_date,
(i.invoice_total - (i.payment_total + i.credit_total)) as balance_due
FROM invoices i
join vendors v on i.vendor_id = v.vendor_id
where (i.invoice_total - i.payment_total + credit_total) > 0.00 
order by v.vendor_name;
 
 -- write a select statement that returns vendor_name, default_account, and description
 -- return one row for each vendor
 -- should return 122 rows. sort by account_descirpiton and by vendor_name
 select distinct
 v.vendor_name as vendor_name,
 v.default_account_number as default_account,
 g.account_description as `description`
 from vendors v
 join general_ledger_accounts g on v.default_account_number = g.account_number
 order by g.account_description, v.vendor_name;
 
 -- write select statement that returns vendor_name, invoice_date, invoice_number,
 -- li_sequence, li_amount
 -- should return 118 rows, sort by vendor_name, invoice_date, invoice_number, invoice_sequence
 select v.vendor_name,
 i.invoice_date,
 i.invoice_number,
 li.invoice_sequence as li_sequence,
 li.line_item_amount as li_amount
 from vendors v
 join invoices i on v.vendor_id = i.vendor_id
 join invoice_line_items li on i.invoice_id = li.invoice_id
 order by v.vendor_name, i.invoice_date, i.invoice_number, li.invoice_sequence;
 
 -- write select statement that returns vendor_id, vendor_name, contact_name
 -- return one row for each vendor whose contact has the same last name as another
 -- vendor's contact. 
 -- should return two rows. HINT: use a self-join to check that the vendor_id columns aren't equal but 
 -- the vendor_contact_last_name columns are equal
SELECT distinct
v1.vendor_id as vendor_id,
v1.vendor_name as vendor_name,
concat_ws(' ', v1.vendor_contact_first_name, v1.vendor_contact_last_name) as contact_name
from vendors v1
 join vendors v2 on (v1.vendor_id <> v2.vendor_id) and (v1.vendor_contact_last_name = v2.vendor_contact_last_name)



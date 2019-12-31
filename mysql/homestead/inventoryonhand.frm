TYPE=VIEW
query=select `homestead`.`storeitems`.`store_issue_to` AS `store_issue_to`,`homestead`.`storeitems`.`productcode` AS `productcode`,`homestead`.`storeitems`.`rate` AS `rate`,`homestead`.`storeitems`.`description` AS `description`,`homestead`.`storeitems`.`unit` AS `unit`,sum(`homestead`.`storeitems`.`quantity`) AS `quantity`,`homestead`.`productcodes`.`name` AS `name`,`homestead`.`purchases`.`productcategory_id` AS `productcategory_id`,`homestead`.`purchases`.`supplier_id` AS `supplier_id`,`homestead`.`purchases`.`purchaseordernumber` AS `purchaseordernumber`,`homestead`.`storeitems`.`id` AS `id`,`homestead`.`storeitems`.`date` AS `date` from ((`homestead`.`storeitems` join `homestead`.`productcodes` on((`homestead`.`productcodes`.`productcode` = `homestead`.`storeitems`.`productcode`))) join `homestead`.`purchases` on((`homestead`.`storeitems`.`productcode` = `homestead`.`purchases`.`productcode`))) group by `homestead`.`storeitems`.`productcode`,`homestead`.`storeitems`.`store_issue_to` order by `homestead`.`storeitems`.`date`
md5=3fe0352601604cbdf8698ecef77cc815
updatable=0
algorithm=0
definer_user=homestead
definer_host=%
suid=2
with_check_option=0
timestamp=2019-12-31 18:38:51
create-version=1
source=select `storeitems`.`store_issue_to` AS `store_issue_to`,`storeitems`.`productcode` AS `productcode`,`storeitems`.`rate` AS `rate`,`storeitems`.`description` AS `description`,`storeitems`.`unit` AS `unit`,sum(`storeitems`.`quantity`) AS `quantity`,`productcodes`.`name` AS `name`,`purchases`.`productcategory_id` AS `productcategory_id`,`purchases`.`supplier_id` AS `supplier_id`,`purchases`.`purchaseordernumber` AS `purchaseordernumber`,`storeitems`.`id` AS `id`,`storeitems`.`date` AS `date` from ((`storeitems` join `productcodes` on((`productcodes`.`productcode` = `storeitems`.`productcode`))) join `purchases` on((`storeitems`.`productcode` = `purchases`.`productcode`))) group by `storeitems`.`productcode`,`storeitems`.`store_issue_to` order by `storeitems`.`date`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `homestead`.`storeitems`.`store_issue_to` AS `store_issue_to`,`homestead`.`storeitems`.`productcode` AS `productcode`,`homestead`.`storeitems`.`rate` AS `rate`,`homestead`.`storeitems`.`description` AS `description`,`homestead`.`storeitems`.`unit` AS `unit`,sum(`homestead`.`storeitems`.`quantity`) AS `quantity`,`homestead`.`productcodes`.`name` AS `name`,`homestead`.`purchases`.`productcategory_id` AS `productcategory_id`,`homestead`.`purchases`.`supplier_id` AS `supplier_id`,`homestead`.`purchases`.`purchaseordernumber` AS `purchaseordernumber`,`homestead`.`storeitems`.`id` AS `id`,`homestead`.`storeitems`.`date` AS `date` from ((`homestead`.`storeitems` join `homestead`.`productcodes` on((`homestead`.`productcodes`.`productcode` = `homestead`.`storeitems`.`productcode`))) join `homestead`.`purchases` on((`homestead`.`storeitems`.`productcode` = `homestead`.`purchases`.`productcode`))) group by `homestead`.`storeitems`.`productcode`,`homestead`.`storeitems`.`store_issue_to` order by `homestead`.`storeitems`.`date`

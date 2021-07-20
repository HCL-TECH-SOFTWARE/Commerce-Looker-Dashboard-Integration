connection: "testwcsdb"
label: "Ecommerce User and Order Details"

# include all the views
include: "/views/**/*.view"

datagroup: wcs_order_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: wcs_order_default_datagroup

explore: orders {
  label: "Order Data"

  join: orderitems {
     type: inner
    sql_on: ${orders.orders_id} = ${orderitems.orders_id} ;;
    relationship: one_to_many
  }
  join: address {
    type: inner
    sql_on: ${orderitems.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }
  join: catentdesc {
    type: inner
    sql_on: ${orderitems.catentry_id}=${catentdesc.catentry_id} ;;
    relationship: many_to_one
  }
  join: storeent {
    type: inner
    sql_on: ${orders.storeent_id} = ${storeent.storeent_id} ;;
    relationship: many_to_one
  }
  join: storedefcat {
    type: inner
    sql_on: ${storeent.storeent_id} = ${storedefcat.storeent_id} ;;
    relationship: many_to_one
  }
  join: catgpenrel {
    type: inner
    sql_on: ${orderitems.catentry_id} = ${catgpenrel.catentry_id} ;;
    sql_where: ${storedefcat.catalog_id}=${catgpenrel.catalog_id} ;;
    relationship: many_to_one
  }
  join: catgrpdesc {
    type: inner
    sql_on: ${catgpenrel.catgroup_id} = ${catgrpdesc.catgroup_id} ;;
    sql_where: ${catgrpdesc.language_id} =-1 ;;
    relationship: many_to_one
  }


}
explore: users {
  label: "User Data"
}

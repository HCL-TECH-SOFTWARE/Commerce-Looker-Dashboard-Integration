view: orderitems {
  sql_table_name: WCS.ORDERITEMS ;;
  drill_fields: [orderitems_id]

  dimension: orderitems_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ORDERITEMS_ID" ;;
  }

  dimension: address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ADDRESS_ID" ;;
  }

  dimension: allocaddress_id {
    type: number
    sql: ${TABLE}."ALLOCADDRESS_ID" ;;
  }

  dimension: allocationgroup {
    type: number
    sql: ${TABLE}."ALLOCATIONGROUP" ;;
  }

  dimension: allocffmc_id {
    type: number
    sql: ${TABLE}."ALLOCFFMC_ID" ;;
  }

  dimension: allocquantity {
    type: number
    sql: ${TABLE}."ALLOCQUANTITY" ;;
  }

  dimension: availquantity {
    type: number
    sql: ${TABLE}."AVAILQUANTITY" ;;
  }

  dimension: basecurrency {
    type: string
    sql: ${TABLE}."BASECURRENCY" ;;
  }

  dimension: baseprice {
    type: number
    sql: ${TABLE}."BASEPRICE" ;;
  }

  dimension: catentry_id {
    type: number
    sql: ${TABLE}."CATENTRY_ID" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: configurationid {
    type: string
    sql: ${TABLE}."CONFIGURATIONID" ;;
  }

  dimension: correlationgroup {
    type: number
    sql: ${TABLE}."CORRELATIONGROUP" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension_group: estavailtime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ESTAVAILTIME" ;;
  }

  dimension: ffmcenter_id {
    type: number
    sql: ${TABLE}."FFMCENTER_ID" ;;
  }

  dimension: field1 {
    type: number
    sql: ${TABLE}."FIELD1" ;;
  }

  dimension: field2 {
    type: string
    sql: ${TABLE}."FIELD2" ;;
  }

  dimension: fulfillmentstatus {
    type: string
    sql: ${TABLE}."FULFILLMENTSTATUS" ;;
  }

  dimension: inventorystatus {
    type: string
    sql: ${TABLE}."INVENTORYSTATUS" ;;
  }

  dimension: isexpedited {
    type: string
    sql: ${TABLE}."ISEXPEDITED" ;;
  }

  dimension: itemspc_id {
    type: number
    sql: ${TABLE}."ITEMSPC_ID" ;;
  }

  dimension_group: lastallocupdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTALLOCUPDATE" ;;
  }

  dimension_group: lastcreate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTCREATE" ;;
  }

  dimension_group: lastupdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTUPDATE" ;;
  }

  dimension: lineitemtype {
    type: string
    sql: ${TABLE}."LINEITEMTYPE" ;;
  }

  dimension: member_id {
    type: number
    sql: ${TABLE}."MEMBER_ID" ;;
  }

  dimension: neededquantity {
    type: number
    sql: ${TABLE}."NEEDEDQUANTITY" ;;
  }

  dimension: offer_id {
    type: number
    sql: ${TABLE}."OFFER_ID" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: orders_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ORDERS_ID" ;;
  }

  dimension: ordreleasenum {
    type: number
    sql: ${TABLE}."ORDRELEASENUM" ;;
  }

  dimension: outputq_id {
    type: number
    sql: ${TABLE}."OUTPUTQ_ID" ;;
  }

  dimension: partnum {
    type: string
    sql: ${TABLE}."PARTNUM" ;;
  }

  dimension: prepareflags {
    type: number
    sql: ${TABLE}."PREPAREFLAGS" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension_group: promisedavailtime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PROMISEDAVAILTIME" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension_group: requestedshipdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."REQUESTEDSHIPDATE" ;;
  }

  dimension: shipcharge {
    type: number
    sql: ${TABLE}."SHIPCHARGE" ;;
  }

  dimension: shipmode_id {
    type: number
    sql: ${TABLE}."SHIPMODE_ID" ;;
  }

  dimension: shippingoffset {
    type: number
    sql: ${TABLE}."SHIPPINGOFFSET" ;;
  }

  dimension: shiptaxamount {
    type: number
    sql: ${TABLE}."SHIPTAXAMOUNT" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: storeent_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."STOREENT_ID" ;;
  }

  dimension: supplierdata {
    type: string
    sql: ${TABLE}."SUPPLIERDATA" ;;
  }

  dimension: supplierpartnumber {
    type: string
    sql: ${TABLE}."SUPPLIERPARTNUMBER" ;;
  }

  dimension: taxamount {
    type: number
    sql: ${TABLE}."TAXAMOUNT" ;;
  }

  dimension: termcond_id {
    type: number
    sql: ${TABLE}."TERMCOND_ID" ;;
  }

  dimension: tiecode {
    type: number
    sql: ${TABLE}."TIECODE" ;;
  }

  dimension_group: timereleased {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TIMERELEASED" ;;
  }

  dimension_group: timeshipped {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TIMESHIPPED" ;;
  }

  dimension: totaladjustment {
    type: number
    sql: ${TABLE}."TOTALADJUSTMENT" ;;
  }

  dimension: totalproduct {
    type: number
    sql: ${TABLE}."TOTALPRODUCT" ;;
  }

  dimension_group: trackdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TRACKDATE" ;;
  }

  dimension: tracknumber {
    type: string
    sql: ${TABLE}."TRACKNUMBER" ;;
  }

  dimension: trading_id {
    type: number
    sql: ${TABLE}."TRADING_ID" ;;
  }



  measure: totalRevenue {
  type: sum
   sql: ${TABLE}."TOTALPRODUCT" ;;
    drill_fields: [order_detail*]
  }

  measure: count {
    type: count
    drill_fields: [order_detail*]
  }

  # ----- Sets of fields for drilling ------
  set: order_detail {
    fields: [
      orders.orders_id,
      orderitems_id,
      catentdesc.name,
      partnum,
       quantity,
      catentry_id,
      price
    ]
  }

  set: detail {
    fields: [
      orderitems_id,
      orders.orders_id,
      storeent.storeent_id,
      address.nickname,
      address.middlename,
      address.firstname,
      address.lastname,
      address.orgname,
      address.orgunitname,
      address.address_id

    ]
  }
}

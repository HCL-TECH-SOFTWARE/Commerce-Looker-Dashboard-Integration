view: storeent {
  sql_table_name: WCS.STOREENT ;;
  drill_fields: [storeent_id]

  dimension: storeent_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."STOREENT_ID" ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}."IDENTIFIER" ;;
  }

  dimension: markfordelete {
    type: number
    sql: ${TABLE}."MARKFORDELETE" ;;
  }

  dimension: member_id {
    type: number
    sql: ${TABLE}."MEMBER_ID" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: setccurr {
    type: string
    sql: ${TABLE}."SETCCURR" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [storeent_id, orderitems.count, orders.count]
  }
}

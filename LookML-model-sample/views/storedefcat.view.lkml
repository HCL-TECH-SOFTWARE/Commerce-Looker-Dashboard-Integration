view: storedefcat {
  sql_table_name: WCS.STOREDEFCAT ;;
  drill_fields: [storedefcat_id]

  dimension: storedefcat_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."STOREDEFCAT_ID" ;;
  }

  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }

  dimension: field1 {
    type: number
    sql: ${TABLE}."FIELD1" ;;
  }

  dimension: field2 {
    type: string
    sql: ${TABLE}."FIELD2" ;;
  }

  dimension: field3 {
    type: string
    sql: ${TABLE}."FIELD3" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: storeent_id {
    type: number
    sql: ${TABLE}."STOREENT_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [storedefcat_id]
  }
}

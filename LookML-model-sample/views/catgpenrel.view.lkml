view: catgpenrel {
  sql_table_name: WCS.CATGPENREL ;;

  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }

  dimension: catentry_id {
    type: number
    sql: ${TABLE}."CATENTRY_ID" ;;
  }

  dimension: catgroup_id {
    type: number
    sql: ${TABLE}."CATGROUP_ID" ;;
  }

  dimension: field1 {
    type: string
    sql: ${TABLE}."FIELD1" ;;
  }

  dimension: field2 {
    type: number
    sql: ${TABLE}."FIELD2" ;;
  }

  dimension: field3 {
    type: number
    sql: ${TABLE}."FIELD3" ;;
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

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: rule {
    type: string
    sql: ${TABLE}."RULE" ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}."SEQUENCE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

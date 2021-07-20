view: catentdesc {
  sql_table_name: WCS.CATENTDESC ;;

  dimension: auxdescription1 {
    type: string
    sql: ${TABLE}."AUXDESCRIPTION1" ;;
  }

  dimension: auxdescription2 {
    type: string
    sql: ${TABLE}."AUXDESCRIPTION2" ;;
  }

  dimension_group: availabilitydate {
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
    sql: ${TABLE}."AVAILABILITYDATE" ;;
  }

  dimension: available {
    type: number
    sql: ${TABLE}."AVAILABLE" ;;
  }

  dimension: catentry_id {
    type: number
    sql: ${TABLE}."CATENTRY_ID" ;;
  }

  dimension: fullimage {
    type: string
    sql: ${TABLE}."FULLIMAGE" ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}."KEYWORD" ;;
  }

  dimension: language_id {
    type: number
    sql: ${TABLE}."LANGUAGE_ID" ;;
  }

  dimension: longdescription {
    type: string
    sql: ${TABLE}."LONGDESCRIPTION" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: published {
    type: number
    sql: ${TABLE}."PUBLISHED" ;;
  }

  dimension: shortdescription {
    type: string
    sql: ${TABLE}."SHORTDESCRIPTION" ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}."THUMBNAIL" ;;
  }

  dimension: up_name {
    type: string
    sql: ${TABLE}."UP_NAME" ;;
  }

  dimension: xmldetail {
    type: string
    sql: ${TABLE}."XMLDETAIL" ;;
  }

  measure: count {
    type: count
    drill_fields: [up_name, name]
  }
}

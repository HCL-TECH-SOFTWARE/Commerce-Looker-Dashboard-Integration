view: catgrpdesc {
  sql_table_name: WCS.CATGRPDESC ;;

  dimension: catgroup_id {
    type: number
    sql: ${TABLE}."CATGROUP_ID" ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}."DISPLAY" ;;
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

  dimension: note {
    type: string
    sql: ${TABLE}."NOTE" ;;
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

  dimension: up_shortdesc {
    type: string
    sql: ${TABLE}."UP_SHORTDESC" ;;
  }

  measure: count {
    type: count
    drill_fields: [up_name, name]
  }
}

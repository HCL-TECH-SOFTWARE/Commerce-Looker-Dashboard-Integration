view: users {
  sql_table_name: WCS.USERS ;;
  drill_fields: [users_id]

  dimension: users_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."USERS_ID" ;;
  }

  dimension: dn {
    type: string
    sql: ${TABLE}."DN" ;;
  }

  dimension: field1 {
    type: string
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

  dimension: language_id {
    type: number
    sql: ${TABLE}."LANGUAGE_ID" ;;
  }

  dimension_group: lastorder {
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
    sql: ${TABLE}."LASTORDER" ;;
  }

  dimension_group: lastsession {
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
    sql: ${TABLE}."LASTSESSION" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: personalizationid {
    type: string
    sql: ${TABLE}."PERSONALIZATIONID" ;;
  }

  dimension_group: prevlastsession {
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
    sql: ${TABLE}."PREVLASTSESSION" ;;
  }

  dimension: profiletype {
    type: string
    sql: ${TABLE}."PROFILETYPE" ;;
  }

  dimension: registertype {
    type: string
    sql: ${TABLE}."REGISTERTYPE" ;;
  }

  dimension_group: registration {
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
    sql: ${TABLE}."REGISTRATION" ;;
  }

  dimension_group: registrationcancel {
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
    sql: ${TABLE}."REGISTRATIONCANCEL" ;;
  }

  dimension_group: registrationupdate {
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
    sql: ${TABLE}."REGISTRATIONUPDATE" ;;
  }

  dimension: setccurr {
    type: string
    sql: ${TABLE}."SETCCURR" ;;
  }

  measure: count {
    type: count
    drill_fields: [users_id]
  }
}

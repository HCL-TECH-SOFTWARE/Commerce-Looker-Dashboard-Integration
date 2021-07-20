view: account {
  sql_table_name: WCS.ACCOUNT ;;
  drill_fields: [account_id]

  dimension: account_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension: defaultcontract {
    type: number
    sql: ${TABLE}."DEFAULTCONTRACT" ;;
  }

  dimension: markfordelete {
    type: number
    sql: ${TABLE}."MARKFORDELETE" ;;
  }

  dimension: member_id {
    type: number
    sql: ${TABLE}."MEMBER_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: prcplcypref {
    type: string
    sql: ${TABLE}."PRCPLCYPREF" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."STATE" ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension_group: timeactivated {
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
    sql: ${TABLE}."TIMEACTIVATED" ;;
  }

  dimension_group: timeapproved {
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
    sql: ${TABLE}."TIMEAPPROVED" ;;
  }

  dimension_group: timecreated {
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
    sql: ${TABLE}."TIMECREATED" ;;
  }

  dimension_group: timeupdated {
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
    sql: ${TABLE}."TIMEUPDATED" ;;
  }

  dimension: up_name {
    type: string
    sql: ${TABLE}."UP_NAME" ;;
  }

  dimension: useprcplcypref {
    type: number
    sql: ${TABLE}."USEPRCPLCYPREF" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_id, name, up_name]
  }
}

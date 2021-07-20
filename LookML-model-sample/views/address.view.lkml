view: address {
  sql_table_name: WCS.ADDRESS ;;
  drill_fields: [address_id]

  dimension: address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ADDRESS_ID" ;;
  }

  dimension: addrbook_id {
    type: number
    sql: ${TABLE}."ADDRBOOK_ID" ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}."ADDRESS1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."ADDRESS2" ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}."ADDRESS3" ;;
  }

  dimension: addresstype {
    type: string
    sql: ${TABLE}."ADDRESSTYPE" ;;
  }

  dimension: bestcallingtime {
    type: string
    sql: ${TABLE}."BESTCALLINGTIME" ;;
  }

  dimension: billingcode {
    type: string
    sql: ${TABLE}."BILLINGCODE" ;;
  }

  dimension: billingcodetype {
    type: string
    sql: ${TABLE}."BILLINGCODETYPE" ;;
  }

  dimension: businesstitle {
    type: string
    sql: ${TABLE}."BUSINESSTITLE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: email1 {
    type: string
    sql: ${TABLE}."EMAIL1" ;;
  }

  dimension: email2 {
    type: string
    sql: ${TABLE}."EMAIL2" ;;
  }

  dimension: fax1 {
    type: string
    sql: ${TABLE}."FAX1" ;;
  }

  dimension: fax2 {
    type: string
    sql: ${TABLE}."FAX2" ;;
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

  dimension: firstname {
    type: string
    sql: ${TABLE}."FIRSTNAME" ;;
  }

  dimension: isprimary {
    type: number
    sql: ${TABLE}."ISPRIMARY" ;;
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

  dimension: lastname {
    type: string
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension: member_id {
    type: number
    sql: ${TABLE}."MEMBER_ID" ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}."MIDDLENAME" ;;
  }

  dimension: mobilephone1 {
    type: string
    sql: ${TABLE}."MOBILEPHONE1" ;;
  }

  dimension: mobilephone1_cntry {
    type: string
    sql: ${TABLE}."MOBILEPHONE1CNTRY" ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}."NICKNAME" ;;
  }

  dimension: officeaddress {
    type: string
    sql: ${TABLE}."OFFICEADDRESS" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: orgname {
    type: string
    sql: ${TABLE}."ORGNAME" ;;
  }

  dimension: orgunitname {
    type: string
    sql: ${TABLE}."ORGUNITNAME" ;;
  }

  dimension: packagesuppression {
    type: number
    sql: ${TABLE}."PACKAGESUPPRESSION" ;;
  }

  dimension: persontitle {
    type: string
    sql: ${TABLE}."PERSONTITLE" ;;
  }

  dimension: phone1 {
    type: string
    sql: ${TABLE}."PHONE1" ;;
  }

  dimension: phone1_type {
    type: string
    sql: ${TABLE}."PHONE1TYPE" ;;
  }

  dimension: phone2 {
    type: string
    sql: ${TABLE}."PHONE2" ;;
  }

  dimension: phone2_type {
    type: string
    sql: ${TABLE}."PHONE2TYPE" ;;
  }

  dimension: publishphone1 {
    type: number
    sql: ${TABLE}."PUBLISHPHONE1" ;;
  }

  dimension: publishphone2 {
    type: number
    sql: ${TABLE}."PUBLISHPHONE2" ;;
  }

  dimension: selfaddress {
    type: number
    sql: ${TABLE}."SELFADDRESS" ;;
  }

  dimension: shippinggeocode {
    type: string
    sql: ${TABLE}."SHIPPINGGEOCODE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: taxgeocode {
    type: string
    sql: ${TABLE}."TAXGEOCODE" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      address_id,
      nickname,
      middlename,
      firstname,
      lastname,
      orgname,
      orgunitname,
      orderitems.count,
      orders.count
    ]
  }
}

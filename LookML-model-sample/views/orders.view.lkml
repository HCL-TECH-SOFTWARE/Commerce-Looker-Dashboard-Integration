view: orders {
  sql_table_name: WCS.ORDERS ;;
  drill_fields: [orders_id]

  dimension: orders_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ORDERS_ID" ;;
  }

  dimension: address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ADDRESS_ID" ;;
  }

  dimension: blocked {
    type: number
    sql: ${TABLE}."BLOCKED" ;;
  }

  dimension: buschn_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."BUSCHN_ID" ;;
  }

  dimension: buyerpo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."BUYERPO_ID" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: editor_id {
    type: number
    sql: ${TABLE}."EDITOR_ID" ;;
  }

  dimension_group: expiredate {
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
    sql: ${TABLE}."EXPIREDATE" ;;
  }

  dimension: field1 {
    type: number
    sql: ${TABLE}."FIELD1" ;;
  }

  dimension: field2 {
    type: number
    sql: ${TABLE}."FIELD2" ;;
  }

  dimension: field3 {
    type: string
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

  dimension: locked {
    type: string
    sql: ${TABLE}."LOCKED" ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."MEMBER_ID" ;;
  }

  dimension: notificationid {
    type: number
    value_format_name: id
    sql: ${TABLE}."NOTIFICATIONID" ;;
  }

  dimension: opsystem_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."OPSYSTEM_ID" ;;
  }

  dimension: optcounter {
    type: number
    sql: ${TABLE}."OPTCOUNTER" ;;
  }

  dimension: ordchnltyp_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ORDCHNLTYP_ID" ;;
  }

  dimension: orgentity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ORGENTITY_ID" ;;
  }

  dimension: ormorder {
    type: string
    sql: ${TABLE}."ORMORDER" ;;
  }

  dimension: providerordernum {
    type: number
    sql: ${TABLE}."PROVIDERORDERNUM" ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}."SEQUENCE" ;;
  }

  dimension: shipascomplete {
    type: string
    sql: ${TABLE}."SHIPASCOMPLETE" ;;
  }

  dimension: sourceid {
    type: number
    value_format_name: id
    sql: ${TABLE}."SOURCEID" ;;
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

  dimension_group: timeplaced {
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
    sql: ${TABLE}."TIMEPLACED" ;;
  }

  dimension: totaladjustment {
    type: number
    sql: ${TABLE}."TOTALADJUSTMENT" ;;
  }

  dimension: totalproduct {
    type: number
    sql: ${TABLE}."TOTALPRODUCT" ;;
  }

  dimension: totalshipping {
    type: number
    sql: ${TABLE}."TOTALSHIPPING" ;;
  }

  dimension: totaltax {
    type: number
    sql: ${TABLE}."TOTALTAX" ;;
  }

  dimension: totaltaxshipping {
    type: number
    sql: ${TABLE}."TOTALTAXSHIPPING" ;;
  }

  dimension: transferstatus {
    type: number
    sql: ${TABLE}."TRANSFERSTATUS" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: Total_Revenue {
    type: sum
    sql: ${totalproduct} ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      orders_id,
      totalproduct,
      storeent.storeent_id,
      orgentity.orgentity_id,
      orgentity.adminmiddlename,
      orgentity.adminlastname,
      orgentity.adminfirstname,
      orgentity.orgentityname,
      buyerpo.buyerpo_id,
      opsystem.opsystem_id,
      opsystem.name,
      buschn.buschn_id,
      buschn.name,
      ordchnltyp.ordchnltyp_id,
      ordchnltyp.name,
      address.address_id,
      address.nickname,
      address.middlename,
      address.firstname,
      address.lastname,
      address.orgname,
      address.orgunitname,
      member.member_id,
      alcharge.count,
      bidordrrel.count,
      buacctdet.count,
      caladjust.count,
      cpendorder.count,
      edporder.count,
      edppayhist.count,
      edprelhist.count,
      invoice.count,
      lpopuramt.count,
      manifest.count,
      orcomment.count,
      orcpmap.count,
      ordadjust.count,
      ordaudit.count,
      ordbtb.count,
      ordcalcd.count,
      orderblk.count,
      orderhist.count,
      orderitems.count,
      ordermgp.count,
      ordertmpl.count,
      ordextattr.count,
      ordistat.count,
      ordmeextn.count,
      ordoptions.count,
      ordpayinfo.count,
      ordpaymthd.count,
      ordpromocd.count,
      ordrelease.count,
      ordrlsttls.count,
      ordstat.count,
      ordtax.count,
      ordusers.count,
      ppcpayinst.count,
      px_cdusage.count,
      px_coupon.count,
      px_promoarg.count,
      px_resrvusage.count,
      px_rwdoption.count,
      px_usage.count,
      refundmthd.count,
      schorders.count,
      shipinfo.count,
      suborders.count,
      subscription.count,
      torcpmap.count,
      trddepamt.count,
      trdpuramt.count,
      trdrefamt.count
    ]
  }
}

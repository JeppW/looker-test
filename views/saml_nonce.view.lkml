view: saml_nonce {
  sql_table_name: b660cdeae8609e.saml_nonce ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expires_at ;;
  }
  dimension: response_id {
    type: string
    sql: ${TABLE}.response_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

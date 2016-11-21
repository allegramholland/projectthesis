view: consumer_complaints {
  sql_table_name: project.consumer_complaints ;;
  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: company_public_response {
    type: string
    sql: ${TABLE}.`Company public response` ;;
  }

  dimension: company_response_to_consumer {
    type: string
    sql: ${TABLE}.`Company response to consumer` ;;
  }

  dimension: complaint_id {
    type: number
    sql: ${TABLE}.`Complaint ID` ;;
  }

  dimension: consumer_complaint_narrative {
    type: string
    sql: ${TABLE}.`Consumer complaint narrative` ;;

  } dimension: complaint_topic {
    type:  string
    sql:  CASE WHEN ${consumer_complaint_narrative} LIKE '%student%' THEN 'student loans'
    WHEN ${consumer_complaint_narrative} LIKE '%debt%' THEN 'bad debt'
    WHEN ${consumer_complaint_narrative} LIKE '%credit%' THEN 'credit cards'
    WHEN ${consumer_complaint_narrative} LIKE '%investment%' THEN 'bad investment'
    WHEN ${consumer_complaint_narrative} LIKE '%dispute%' THEN 'unfair loss'
    WHEN ${consumer_complaint_narrative} LIKE '%identity%' THEN 'identity theft'


    ELSE 'other' END ;;

  }

  dimension: consumer_consent_provided {
    type: string
    sql: ${TABLE}.`Consumer consent provided?` ;;
  }

  dimension: consumer_disputed {
    type: string
    sql: ${TABLE}.`Consumer disputed?` ;;
  }

  dimension: date_received {
    type: string
    sql: STR_TO_DATE(${TABLE}.`Date received`) ;;
  }

  dimension: date_sent_to_company {
    type: string
    sql: ${TABLE}.`Date sent to company` ;;
  }

  dimension: issue {
    type: string
    sql: ${TABLE}.Issue ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: subissue {
    type: string
    sql: ${TABLE}.`Sub-issue` ;;
  }

  dimension: submitted_via {
    type: string
    sql: ${TABLE}.`Submitted via` ;;
  }

  dimension: subproduct {
    type: string
    sql: ${TABLE}.`Sub-product` ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  dimension: timely_response {
    type: string
    sql: ${TABLE}.`Timely response?` ;;
  }

  dimension: zip_code {
    type: string
    sql: ${TABLE}.`ZIP code` ;;
  }

  measure: count {
    type: count
    drill_fields: [consumer_complaint_narrative]
  }

 dimension: states {
  type:  string
  sql:  CASE WHEN ${zip_code} LIKE '94901' THEN 'California'
  CASE WHEN ${zip_code} LIKE '95060' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94905' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94904' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94904' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94906' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94907' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94998' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94987' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94923' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94923' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94994' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94974' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94976' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94964' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94965' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94976' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94934' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94561' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94235' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94675' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94356' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94764' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94944' THEN 'California'
  CASE WHEN ${zip_code} LIKE '99875' THEN 'California'
  CASE WHEN ${zip_code} LIKE '99723' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94901' THEN 'California'
  CASE WHEN ${zip_code} LIKE '95060' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94905' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94904' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94904' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94906' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94907' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94998' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94987' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94923' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94923' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94994' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94974' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94976' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94964' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94965' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94976' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94934' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94561' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94235' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94675' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94356' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94764' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94944' THEN 'California'
  CASE WHEN ${zip_code} LIKE '99875' THEN 'California'
  CASE WHEN ${zip_code} LIKE '99723' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94901' THEN 'California'
  CASE WHEN ${zip_code} LIKE '95060' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94905' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94904' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94904' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94906' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94907' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94998' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94987' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94923' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94923' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94994' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94974' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94976' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94964' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94965' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94976' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94934' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94561' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94235' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94675' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94356' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94764' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94944' THEN 'California'
  CASE WHEN ${zip_code} LIKE '99875' THEN 'California'
  CASE WHEN ${zip_code} LIKE '99723' THEN 'California'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '34900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94920' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '54900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94910' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '74920' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94930' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94450' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94780' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '14900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '12900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '12901' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Nevada'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'
  CASE WHEN ${zip_code} LIKE '94900' THEN 'Colorado'



    ELSE 'other' END ;;

}
}

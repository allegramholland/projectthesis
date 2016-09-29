- view: consumer_complaints
  sql_table_name: project.consumer_complaints
  fields:

  - dimension: company
    type: string
    sql: ${TABLE}.Company

  - dimension: company_public_response
    type: string
    sql: ${TABLE}.`Company public response`

  - dimension: company_response_to_consumer
    type: string
    sql: ${TABLE}.`Company response to consumer`

  - dimension: complaint_id
    type: number
    sql: ${TABLE}.`Complaint ID`

  - dimension: consumer_complaint_narrative
    type: string
    sql: ${TABLE}.`Consumer complaint narrative`

  - dimension: consumer_consent_provided
    type: string
    sql: ${TABLE}.`Consumer consent provided?`

  - dimension: consumer_disputed
    type: string
    sql: ${TABLE}.`Consumer disputed?`

  - dimension: date_received
    type: string
    sql: ${TABLE}.`Date received`

  - dimension: date_sent_to_company
    type: string
    sql: ${TABLE}.`Date sent to company`

  - dimension: issue
    type: string
    sql: ${TABLE}.Issue

  - dimension: product
    type: string
    sql: ${TABLE}.Product

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: subissue
    type: string
    sql: ${TABLE}.`Sub-issue`

  - dimension: submitted_via
    type: string
    sql: ${TABLE}.`Submitted via`

  - dimension: subproduct
    type: string
    sql: ${TABLE}.`Sub-product`

  - dimension: tags
    type: string
    sql: ${TABLE}.Tags

  - dimension: timely_response
    type: string
    sql: ${TABLE}.`Timely response?`

  - dimension: zip_code
    type: string
    sql: ${TABLE}.`ZIP code`

  - measure: count
    type: count
    drill_fields: []


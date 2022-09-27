resource "snowflake_masking_policy" "StringToNull_masking_policy" {
  name               = "STRING_TO_NULL_MASKING_POLICY"
  database           = "TF_DEMO_DB"
  schema             = "TF_DEMO"
  value_data_type    = "string"
  masking_expression = "case when current_role() in ('DEV_104336_CORE_RED_RO_FR') then val else 'NULL' end"
  return_data_type   = "string"
}

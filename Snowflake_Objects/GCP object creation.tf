terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.58.0"
    }
  }
}

provider "snowflake" {
  account  = "fub14477.us-east-1"
  username = "mandardhumal"
  password = "Qwerty@123"

}

resource "snowflake_database" "GCP_DB" {
  name    = "GCP_DB"
  comment = "First GCP Test DB"
  
}
resource "snowflake_schema" "GCP_schema" {
  database = "GCP_DB"
  name     = "GCP_schema"
}

resource "snowflake_stage" "adv_stage" {
  database = "GCP_DB"
  schema   = "GCP_schema"
  name     = "adv_stage"
}
    
resource "snowflake_table" "adv_table" {
  database = "GCP_DB"
  schema   = "GCP_schema"
  name     = "adv_table"  
  comment  = "Testing Purpose"
  
  column {
    name     = "id"
    type     = "NUMBER"
    nullable = false
    
  }

  column {
    name     = "TV"
    type     = "NUMBER"
    nullable = false
  }

  column {
    name     = "Radio"
    type     = "NUMBER"
    nullable = false
  }

  column {
    name     = "Newspaper"
    type     = "NUMBER"
    nullable = false
  }

  column {
    name     = "Sales"
    type     = "NUMBER"
    nullable = false
  }
}




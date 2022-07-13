
#Criação Database
resource "aws_timestreamwrite_database" "timestream-database" {
  database_name = "database-timestream"
 # kms_key_id    = aws_kms_key.example.arn (Pode adicionar uma chave criptografada )

  tags = {
    Name = "timestream-database-test"
  }
}

#Criação Table
resource "aws_timestreamwrite_table" "timestream-table" {
  database_name = "database-timestream"
  table_name    = "teste-timestream-table"

   retention_properties { #Período de retenção para o armazenamento.
    magnetic_store_retention_period_in_days = 30
    memory_store_retention_period_in_hours  = 8
  }

  tags = {
    Name = "test-timestream-table"
  }
}
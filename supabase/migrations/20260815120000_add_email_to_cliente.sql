-- supabase/migrations/20260815120000_add_email_to_cliente.sql
ALTER TABLE cliente
  ADD COLUMN IF NOT EXISTS email VARCHAR(255);
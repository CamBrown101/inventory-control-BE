CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  last_login TIMESTAMPTZ DEFAULT CLOCK_TIMESTAMP(),
  company_id INTEGER NOT NULL REFERENCES company(id) ON DELETE CASCADE,
  phone_number INTEGER NOT NULL,
  is_admin BOOLEAN DEFAULT FALSE,
  is_active BOOLEAN DEFAULT FALSE,
  permission_level INTEGER DEFAULT 1
)
CREATE TABLE venue (
  id SERIAL PRIMARY KEY NOT NULL,
  company_id INTEGER REFRENCES company(id) ON DELETE CASCADE,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  state VARCHAR(255) REFRENCES state(id) ON DELETE CASCADE,
)
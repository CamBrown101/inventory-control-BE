CREATE TABLE storage_area (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  venue INTEGER REFRENCES venue(id) ON DELETE CASCADE,
)
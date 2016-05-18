-- DROP TABLE shoos

CREATE TABLE orders (
  id SERIAL4 primary key,
  name VARCHAR(255),
  address VARCHAR(255),
  size INT4,
  quantity INT4
)

-- CREATE TABLE shoos (
--   id SERIAL4 primary key,
--   type VARCHAR(255),
--   size VARCHAR(255),
--   owner_id references customer(id)
-- )

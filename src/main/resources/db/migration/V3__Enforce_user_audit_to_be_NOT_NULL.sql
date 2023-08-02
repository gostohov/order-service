UPDATE orders
SET created_by = 'unknown',
    last_modified_by = 'unknown'
WHERE created_by IS NULL and last_modified_by IS NULL;

ALTER TABLE orders
    ALTER COLUMN created_by SET NOT NULL;

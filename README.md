# POS Foundations (TFA2)

This CodeIgniter 4 project replaces the static customer and user arrays with records loaded from a MySQL database through `CustomerModel` and `UserModel`.

## Requirements

- PHP 8.2 or later, with `intl`, `mbstring`, and `mysqli` enabled
- Composer
- MySQL or MariaDB (XAMPP is suitable)

## Database setup

1. Start Apache and MySQL in XAMPP.
2. Open phpMyAdmin, select **Import**, and import `app/Database/schema.sql`. The script creates `pos_db`, both tables, and five sample records in each table. Importing again leaves existing rows intact because the seed inserts use `INSERT IGNORE`.
3. Check the database settings in `.env`:

   ```ini
   database.default.hostname = localhost
   database.default.database = pos_db
   database.default.username = root
   database.default.password =
   database.default.DBDriver = MySQLi
   database.default.port = 3306
   ```

   Set `database.default.password` to your local MySQL password if it is not blank.

If you created the tables earlier with different columns, importing this script will not change those existing tables. Back up any data you need, then recreate the tables with this assignment schema before loading the sample rows.

## Run the application

From the project directory, run:

```sh
php spark serve
```

Open `http://localhost:8080/`. The customer and user account pages are available at `/customers` and `/users`.

The database export to submit is `app/Database/schema.sql`. For Apache deployment, configure the web root to point to this project's `public` directory.

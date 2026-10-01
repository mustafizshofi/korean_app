# Daily Korean

Requires: PHP 7.4+ with mysqli extension, MySQL/MariaDB.

## Setup
1. Import `db.sql` into your database (creates `korean_app` DB, tables, and 30 starter words).
2. Open `config.php` and set DB_HOST / DB_USER / DB_PASS / DB_NAME.
3. Put this whole folder on your PHP server (or run locally: `php -S localhost:8000` from inside the folder).
4. Visit the site → Register → Login → you'll see today's 10 words.

## Files
- `config.php` – DB connection + session helpers (only file you must edit)
- `db.sql` – database schema + starter words
- `index.php` – redirects to login or today's words
- `register.php`, `login.php`, `logout.php` – auth
- `words.php` – today's 10 words, with "I learned this" toggle and progress bar
- `history.php` – every word studied so far
- `includes/header.php`, `includes/footer.php` – shared layout
- `assets/style.css` – styling

## How the daily words work
Each time a logged-in user opens `words.php` on a new calendar day, the
app picks the next `WORDS_PER_DAY` (10, set in config.php) words they have
never been given, from the `words` table, and locks them in for that date.
Add more rows to `words` any time to give users more days of content.

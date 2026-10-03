<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customers | POS Foundations</title>
    <style>
        body { margin: 0; font-family: Arial, sans-serif; color: #1f2937; background: #f3f6fb; }
        nav { display: flex; flex-wrap: wrap; gap: 1.25rem; padding: 1rem max(1rem, calc((100% - 960px) / 2)); background: #12304a; }
        nav a { color: #fff; text-decoration: none; font-weight: 600; }
        nav a:hover, nav a:focus { text-decoration: underline; }
        main { max-width: 960px; margin: 3rem auto; padding: 0 1.25rem; }
        .panel { padding: 2rem; border-radius: 12px; background: #fff; box-shadow: 0 8px 28px #12304a12; overflow-x: auto; }
        h1 { margin-top: 0; color: #12304a; }
        table { width: 100%; border-collapse: collapse; text-align: left; }
        th, td { padding: .9rem 1rem; border-bottom: 1px solid #dbe3ec; }
        th { color: #12304a; background: #edf3f8; }
        tbody tr:hover { background: #f8fafc; }
    </style>
</head>
<body>
    <nav aria-label="Main navigation">
        <a href="<?= site_url('/') ?>">Home</a>
        <a href="<?= site_url('about') ?>">About</a>
        <a href="<?= site_url('customers') ?>">Customers</a>
        <a href="<?= site_url('users') ?>">Users</a>
    </nav>
    <main>
        <section class="panel">
            <h1>Customer Accounts</h1>
            <table>
                <thead>
                    <tr><th scope="col">Full Name</th><th scope="col">Email</th><th scope="col">Phone</th></tr>
                </thead>
                <tbody>
                    <?php foreach ($customers as $customer): ?>
                        <tr>
                            <td><?= esc($customer['full_name']) ?></td>
                            <td><?= esc($customer['email']) ?></td>
                            <td><?= esc($customer['phone'] ?? '—') ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </section>
    </main>
</body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
</head>

<body>
    <form action="index.php" method="post">
        <select name="city">
            <option value="">Choose a city...</option>
            <?php foreach ($primary_customers as $key => $value) : ?>
                <option value="<?= $value['customer_city'] ?>"> <?= $value['customer_city']  ?></option>
            <?php endforeach; ?>
        </select>
        <select name="rating">
            <option value="">Choose a rating...</option>
            <?php foreach ($primary_customers as $key => $value) : ?>
                <option value="<?= $value['rating'] ?>"> <?= $value['rating'] ?></option>
            <?php endforeach; ?>
        </select>
        <select name="seller">
            <option value="">Choose a seller...</option>
            <?php foreach ($primary_customers as $key => $value) : ?>
                <option value="<?= $value['seller_name'] ?>"> <?= $value['seller_name'] ?></option>
            <?php endforeach; ?>
        </select>
        <input type="submit" name="btn" value="submit">
    </form>
    <table>
        <thead>
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>CITY</td>
                <td>RATING</td>
                <td>&nbsp;ASSIGNED TO</td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($customers as $key => $value) : ?>
                <tr>
                    <td><?= $value['customer_id'] ?> &nbsp;</td>
                    <td><?= $value['customer_name'] ?></td>
                    <td><?= $value['customer_city'] ?></td>
                    <td><?= $value['rating'] ?></td>
                    <td>&nbsp;<?= $value['seller_name'] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>
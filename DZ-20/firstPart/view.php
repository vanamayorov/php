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
            <?php foreach ($primary_sellers as $key => $value) : ?>
                <option value="<?= $value['seller_city'] ?>"> <?= $value['seller_city']  ?></option>
            <?php endforeach; ?>
        </select>
        <select name="rating">
            <option value="">Choose a rating...</option>
            <?php foreach ($primary_sellers as $key => $value) : ?>
                <option value="<?= $value['commission'] ?>"> <?= $value['commission'] ?></option>
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
            </tr>
        </thead>
        <tbody>
            <?php foreach ($sellers as $key => $value) : ?>
                <tr>
                    <td><?= $value['seller_id'] ?> &nbsp;</td>
                    <td><?= $value['seller_name'] ?></td>
                    <td><?= $value['seller_city'] ?></td>
                    <td><?= $value['commission'] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>
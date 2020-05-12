<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Your Card</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="assets/css/pricing.css" rel="stylesheet">
    <style>
    img{
        height: 50px;
        width: 50px;
    }
    </style>
  </head>
  <body>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Company name</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="#">Woman Shoes</a>
            <a class="p-2 text-dark" href="#">Man Shoes</a>
            <a class="p-2 text-dark" href="#">Children</a>
            <a href="card.php?action=list" class="btn btn-outline-primary">Cart</a>
        </nav>
    </div>

    <div class="container">

        <?php if(count($cardItems) > 0  ): ?>
            <form action="card.php" method="post">
                <table class="table table-sm">
                    <thead>
                        <tr>
                        <th scope="col">Img</th>
                            <th scope="col">#</th>
                            <th scope="col">Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">Qty</th>
                            <th scope="col">Total</th>
                            <th scope="col">Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($cardItems as $item): ?>
                            <tr>
                                <td><img src="<?= $item->info->src?>"></td>
                                <th scope="row"><?= $item->id ?></th>
                                <td><?= $item->info->name ?></td>
                                <td><?= $item->info->price ?></td>
                                <td>
                                    <input type="hidden" name="qty[id][]" value="<?= $item->id ?>">
                                    <input type="number" name="qty[qty][]" value="<?= $item->qty ?>" step="1">
                                </td>
                                <td><?= $item->qty*$item->info->price ?></td>
                                <td>
                                    <a href="card.php?action=remove&product_id=<?= $item->id?>">Remove</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <div class="row d-flex align-items-center">
                <div class="col-8">
                <a href="index.php" class="btn btn-primary mr-2">Continue Shoping</a>
                <a href="card.php?action=checkout" class="btn btn-success mr-2">Checkout</a>
                <input type="submit" class="btn btn-danger mr-2" name="btn" value="Save Changes">
                <a  href="card.php?action=delete" class="btn btn-warning mr-2">Clean Up</a>
                </div>
                <div class='col-4'>
                <span>Total price:</span>
                <b>
                <?php
                    $total_sum = 0;
                    $sum = 0;
                    for($i = 0; $i < count($cardItems); $i++){
                        $sum = $cardItems[$i]->qty*$cardItems[$i]->info->price;
                        $total_sum += $sum;
                    }
                    echo $total_sum;
                ?>
                </b>
                <span>Items amount:</span>
                <b>
                <?php
                    $amount = 0;
                    for($i = 0; $i < count($cardItems); $i++){
                        $amount += $cardItems[$i]->qty;
                    }
                    echo $amount;
                ?>
                </b>
                
                </div>
                </div>
            </form>
        <?php else: ?>
            <div class="alert alert-info" role="alert">
                Your shoping cart is empty
            </div>    
            <a href="index.php" class="btn btn-primary">Continue Shoping</a>
        <?php endif ?>    

        <footer class="pt-4 my-md-5 pt-md-5 border-top">
            <div class="row">
            <div class="col-12 col-md">
                <img class="mb-2" src="/docs/4.4/assets/brand/bootstrap-solid.svg" alt="" width="24" height="24">
                <small class="d-block mb-3 text-muted">&copy; 2017-2019</small>
            </div>
            <div class="col-6 col-md">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                <li><a class="text-muted" href="#">Cool stuff</a></li>
                <li><a class="text-muted" href="#">Random feature</a></li>
                <li><a class="text-muted" href="#">Team feature</a></li>
                <li><a class="text-muted" href="#">Stuff for developers</a></li>
                <li><a class="text-muted" href="#">Another one</a></li>
                <li><a class="text-muted" href="#">Last time</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                <li><a class="text-muted" href="#">Resource</a></li>
                <li><a class="text-muted" href="#">Resource name</a></li>
                <li><a class="text-muted" href="#">Another resource</a></li>
                <li><a class="text-muted" href="#">Final resource</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>About</h5>
                <ul class="list-unstyled text-small">
                <li><a class="text-muted" href="#">Team</a></li>
                <li><a class="text-muted" href="#">Locations</a></li>
                <li><a class="text-muted" href="#">Privacy</a></li>
                <li><a class="text-muted" href="#">Terms</a></li>
                </ul>
            </div>
            </div>
        </footer>

    </div>

</body>
</html>

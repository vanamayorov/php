<div class="row">
    <div class="col-7">
        <h3>Checkout Page</h3>
        <div class="row">
        <div class="col-12">
        <form class="form-horizontal" action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
        <div class="form-group">
            <label class="control-label col-6" for="email">Name and surname</label>
            <div class="col-sm-10">
            <input type="text" name="fullName" placeholder="Your full name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-6" for="pwd">Shipping info:</label>
            <div class="col-sm-10">
            <input type="text"  name="city" placeholder="Enter your city">
            </div>
        </div>
        <div class="col-8">
        <button class="btn btn-info" type="submit" name="submitBtn" value="order" >Order and pay</button>
        </div>
        </form>
        </div>
        
        </div>
        
        
    </div>
    <div class="col-5">
        <table class="table table-sm">
        <tbody>
        <?php $subTotal = 0 ?>
        <?php $order = [] ?>
        <?php $amount = 0 ?>
        <?php foreach($cartProducts as $product): ?>
        <tr>
            <td class="text-center">
                <img src="<?= "/my_app/web92m3/assets/{$product->info->image}" ?>" alt="<?= $product->info->name ?>" width="120">
            </td>
            <td>
                    <a href="<?= $_SERVER['PHP_SELF'] ?>?action=product&id=<?= $product->id ?>" title="Go to the product page">
                        <?= $product->info->name ?>
                    </a><br>
                    <small class="text-muted text-uppercase">
                        <?= $product->info->brand ?>
                    </small>
            </td>
            <td>
                <span class="text-info">
                    <?= sprintf("$%01.2f", $product->info->price) ?>
                </span>
            </td>
            <td>
                <span class="text-info">
                    <?= $product->qty ?>
                </span>
            </td>
            <td>
                    <span class="text-success">
                        <?php $productTotal = $product->info->price * $product->qty ?>
                        <?php $amount += $product->qty ?>
                        <?php $subTotal += $productTotal ?>                                        
                        <?= sprintf("$%01.2f", $productTotal) ?>
                    </span> 
                </td>
        </tr>
        <?php endforeach;?>
        <tr>
            <td colspan="2" class="text-right">
                SubTotal: <span class="text-right font-weight-bold text-success">
                    <?= sprintf("$%01.2f", $subTotal) ?>
                </span>
            </td>
            <!-- <td>&nbsp;</td> -->
            <td colspan="8">
            Items amount:
            <span >
            <b>
                <?= $amount ?>
            </b>
            </span>
                
            </td>
            
        </tr>
        </tbody>
        <?php $order = [
            'allites' => $cartProducts,
            'id' => random_int(0, 200),
            'qty' => $amount,
            'subtotal' => $subTotal,
            'date' => date('l jS \of F Y h:i:s A'),

        ];
        // extract($order);
        // echo "<pre>";
        // var_dump($order);
        // exit;
        ?>
        </table>
    </div>
</div>
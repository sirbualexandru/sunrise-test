
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-8 col-sm-9 col-md-9 col-lg-9">
            <h2>All products</h2>
        </div>

        <div class="col-xs-4 col-sm-3 col-md-3 col-lg-3">
            <a href="/[@BASE_URL]create_product.php" role="button" class="btn btn-success btn-sm">Create product</a>
        </div>
    </div>
</div>

<div class="table-responsive">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Price</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>% / Total cost</th>
                <th> </th>
            </tr>
        </thead>

        <tbody>
            [@products]
        </tbody>
    </table>
</div>
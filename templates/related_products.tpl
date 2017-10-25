
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-8 col-sm-9 col-md-9 col-lg-9">
            <h2>Related products list</h2>
        </div>

        <div class="col-xs-4 col-sm-3 col-md-3 col-lg-3">
            <a href="/[@BASE_URL]index.php" role="button" class="btn btn-info btn-sm">Cancel</a>
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
            </tr>
        </thead>

        <tbody>
            [@related_products]
        </tbody>
    </table>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h4>Add Product</h4><hr />
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<form name="createProduct" action="/[@BASE_URL]create_product.php" method="POST" onsubmit="return(validate());">
				<div class="form-group">
			    	<label for="title">Title:</label>
			    	<input type="text" class="form-control" name="title">
				</div>

				<div class="form-group">
			    	<label for="price">Price:</label>
			    	<input type="text" class="form-control" name="price">
				</div>

				<div class="form-group">
			    	<label for="quantity">Quantity:</label>
			    	<input type="text" class="form-control" name="quantity">
				</div>

				<div class="form-group">
				    <label for="category_id">Category</label>
				    <select class="form-control" name="category_id" >
				    	[@categories]
				    </select>
				 </div>

				<div class="form-group">
			    	<label for="note">Note:</label>
			    	<textarea class="form-control" name="notes" ></textarea>
				</div>

				<button type="submit" class="btn btn-success btn-sm">Create Product</button>
				<a href="/[@BASE_URL]" class="btn btn-info btn-sm">Cancel</a>
			</form>

		</div>
	</div>
</div>



<script type="text/javascript">
    // Form validation code will come here.
    function validate()
    {
        if (document.createProduct.title.value == "" || document.createProduct.title.value.length < 5) {
            alert("Please insert product title! (min 5 char)");
            document.createProduct.title.focus() ;
            return false;
        }

        if (document.createProduct.price.value == "" || isNaN(document.createProduct.price.value)) {
            alert("Please insert product price! (numeric)");
            document.createProduct.price.focus() ;
            return false;
        }
       	
       	if (document.createProduct.quantity.value == "" || isNaN(document.createProduct.quantity.value)) {
            alert("Please insert product quantity! (numeric)");
            document.createProduct.quantity.focus() ;
            return false;
        }
         
        return (true);
    }
</script>
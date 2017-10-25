<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h4>Edit Product</h4><hr />
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<form name="editProduct" action="/[@BASE_URL]edit_product.php" method="POST" onsubmit="return(validate());">
				<div class="form-group">
			    	<label for="title">Title:</label>
			    	<input type="text" class="form-control" name="title" value="[@title]">
				</div>

				<div class="form-group">
			    	<label for="price">Price:</label>
			    	<input type="text" class="form-control" name="price" value="[@price]">
				</div>

				<div class="form-group">
			    	<label for="quantity">Quantity:</label>
			    	<input type="text" class="form-control" name="quantity" value="[@quantity]">
				</div>

				<div class="form-group">
				    <label for="category_id">Category:</label>
				    <select class="form-control" name="category_id">
				    	[@categories]
				    </select>
				 </div>

				<div class="form-group">
			    	<label for="notes">Notes:</label>
			    	<textarea class="form-control" name="notes">[@notes]</textarea>
				</div>

				<input type="hidden" class="form-control" name="id" value="[@id]">
				<button type="submit" class="btn btn-success btn-sm">Edit Product</button>
				<a href="/[@BASE_URL]index.php" class="btn btn-info btn-sm">Cancel</a>
			</form>

		</div>
	</div>
</div>

<script type="text/javascript">
    // Form validation code will come here.
    function validate()
    {
        if (document.editProduct.title.value == "" || document.editProduct.title.value.length < 5) {
            alert("Please insert product title! (min 5 char)");
            document.editProduct.title.focus() ;
            return false;
        }

        if (document.editProduct.price.value == "" || isNaN(document.editProduct.price.value)) {
            alert("Please insert product price! (numeric)");
            document.editProduct.price.focus() ;
            return false;
        }
       	
       	if (document.editProduct.quantity.value == "" || isNaN(document.editProduct.quantity.value)) {
            alert("Please insert product quantity! (numeric)");
            document.editProduct.quantity.focus() ;
            return false;
        }
         
        return (true);
    }
</script>
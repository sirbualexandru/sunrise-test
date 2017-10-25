<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h4>View Product</h4><hr />
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<form name="editProduct" action="/[@BASE_URL]edit_product.php" method="POST" onsubmit="return(validate());">
				<div class="form-group">
			    	<label for="title">Title:</label>
			    	<h6>[@title]</h6><hr />
				</div>

				<div class="form-group">
			    	<label for="price">Price:</label>
			    	<h6>[@price]</h6><hr />
				</div>

				<div class="form-group">
			    	<label for="quantity">Quantity:</label>
			    	<h6>[@quantity]</h6><hr />
				</div>

				<div class="form-group">
				    <label for="category_id">Category:</label>
				    <h6>[@category]</h6><hr />
				 </div>

				<div class="form-group">
			    	<label for="notes">Notes:</label>
			    	<h6>[@notes]</h6><hr />
				</div>

				
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
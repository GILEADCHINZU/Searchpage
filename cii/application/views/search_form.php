<!DOCTYPE HTML>
<html>
   <head>
     <title>Search Page</title>
   <link  rel="stylesheet" href="<?php echo base_url('assets/css/search.css')?>" />
   <style>
       div.container{
			              text-align: center;
						  width: 100%;
						  }
						  
	body {
			        background-image:
					url("pattern.png");
					
					background-color:
					lightblue;
					}
   </style>
   </head>

    
     
<body>
  <div class="container" style="color:#0000FF" >
		<h2>Search For Your Vehicle's List of Tires Brands</h2>
		</div>
 
<section class="webdesigntuts-workshop">
	<form action="search/execute_search" method="post">		    
		<input type="search" name="search" placeholder="Type the vehicle name?">		    	
		<button>Search</button>
	</form>
</section>
</body>
</html>

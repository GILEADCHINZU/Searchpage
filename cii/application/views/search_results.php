<!DOCTYPE>
<html>

     <head>
    
	     <title>Form result display</title>
		  <link  rel="stylesheet" href="<?php echo base_url('assets/css/search.css')?>" />
         <style>
	       table, th, td{
		                 border: 1px solid black
						 }
						 
			 div.container{
			              text-align: center;
						  width: 100%;
						  }
						  
			div.dtable{
			              text-align: center;
						  width: 100%;
						  }		


             table{
                    margin: 0 auto;
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
		<h3>Sample Result Page of The Search vehicle's Brands of Tires </h3>
		</div>
	 
	 
	     <div class="dtable">
		 <table>
		  <tbody>
		   <tr>
		   
		   <th>Brand</th>
		   <th>Model</th>
		   <th>Description</th>
		   <th>Price</th>
		   <th>CarID</th>
		   <th>Name</th>
		   </tr>
		    
		      
			      
			  <?php foreach($results as $row): ?>
			  <tr>
			     
			      <td><?php echo $row['brand']; ?></td>
				   <td><?php echo $row['model']; ?></td>
				   <td><?php echo $row['description']; ?></td>
				   <td><?php echo $row['price']; ?></td>
				    <td><?php echo $row['carID']; ?></td>
					<td><?php echo $row['name']; ?></td>
				   
				</tr>   
				   
			 <?php endforeach; ?>
		     </tbody>
			 </table>
		 </div>
	 
	 </body>
	 
</html>
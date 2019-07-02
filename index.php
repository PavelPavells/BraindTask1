<?php 
    include_once 'conn.php';
    
    $limit = 3;
    
    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    
    $start = ($page - 1) * $limit;
    
	$result = $conn->query("SELECT * FROM property_goods WHERE property_goods.new = 'new' LIMIT $start, $limit");
	
	$products = $result->fetch_all(MYSQLI_ASSOC);
     
	$result1 = $conn->query("SELECT count(id) AS id FROM property_goods WHERE property_goods.new = 'new' "); //Change this query
    
    $custCount = $result1->fetch_all(MYSQLI_ASSOC);
    
    $total = $custCount[0]['id'];
    
    $pages = ceil( $total / $limit );
    
    $previous = $page - 1;
    
    $next = $page + 1;
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Braind</title>
	<link rel="stylesheet" type="text/css" href="library/bootstrap.min.css"/>
    <link rel="stylesheet" href="library/style.css">
    <script type="text/javascript" src="./library/jquery-3.4.1.slim.min.js"></script>
</head>
<body>
	<div class="container well">
		<h1 class="text-center">Braind Task 1</h1>
		<div class="row">
			<div class="col-md-10">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
				    <li class="pagination_item">
				      <a href="index.php?page=<?= $previous; ?>" aria-label="Previous">
				        <span aria-hidden="true">Previous</span>
				      </a>
				    </li>
				    <?php for($i = 1; $i<= $pages; $i++) : ?>
				    	<li class="pagination_item"><a href="index.php?page=<?= $i; ?>"><?=$i;?></a></li>
				    <?php endfor; ?>
				    <li class="pagination_item">
				      <a href="index.php?page=<?=$next;?>" aria-label="Next">
				        <span aria-hidden="true">Next</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
		<div style="height: 600px; overflow-y: auto;">
			<table id="" class="table table-striped table-bordered">
	        	<thead>
	                <tr>
	                    <!--<th>Id</th>-->
	                    <th>Size</th>
	                    <th>Color</th>
	              	</tr>
	          	</thead>
	        	<tbody>
	        		<?php foreach($products as $product) : ?>
		        		<tr>
		        			<!--<td><?=$product['id'];?></td>-->
		        			<td><?=$product['size'];?></td>
		        			<td><?=$product['color'];?></td>
		        		</tr>
	        		<?php endforeach; ?>
	        	</tbody>
            </table>
        </div>
    </div>
</body>
</html>
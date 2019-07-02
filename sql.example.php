<!--
    SELECT count(id) AS id
    FROM products 
    LEFT JOIN property_goods ON property_goods.id = products.id WHERE property_goods.new = 'new'
    LEFT JOIN value_properties_goods ON value_properties_goods.value = 'green'
-->

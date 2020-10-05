<?php

require "Rectangle.Class.php";

$rect = new Rectangle (["longueur"=>10,"largeur"=>5]);


var_dump($rect);
echo "les caracteristiques de cette forme sont\n ". $rect->afficherRectangle();
//echo $rect->afficherRectangle();
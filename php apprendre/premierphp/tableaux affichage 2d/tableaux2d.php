<?php

 $tab[0]= [0,3,6];
 $tab[1]= [1,4,7];
 $tab[2]= [2,5,8];

for ($i=0;$i<3;$i++)
{ 

  echo "\t|";

   for($j=0;$j<3;$j++)
   {
    
    echo "\t".$tab[$i][$j]."\t|";

   }
   
    echo "\n";
    
}
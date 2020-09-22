<?php

// algorihtme qui modifie l ordre des saisies
require "fonctions_tableaux.php";

$taille1=demandeEntier("combiens de saisies allez vous faire: ");

$tab1=creerTab($taille1);

echo"\n tableaux avant inversion des nombres\n";

afficheForeach($tab1);

$tab2=array_reverse ( $tab1);// fonction qui inverse les elements d'un tableau

echo"\n tableaux après inversion des nombres\n";

afficheForeach($tab2);

?>
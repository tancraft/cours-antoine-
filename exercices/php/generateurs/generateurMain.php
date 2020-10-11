<?php

$fp = fopen('./' . 'Main.php', "w"); // on cree le fichier

$entMain = '<?php' . "\n\n" .
    '//charge les fichiers de classe necessaires au programme' . "\n" .
    'function ChargerClasse($classe)' . "\n" .
    '{' . "\n" .
    "\t" . 'require $classe . ".Class.php";' . "\n" .
    '}' . "\n" .
    'spl_autoload_register("ChargerClasse");';

fputs($fp, $entMain); // on affiche l'entete

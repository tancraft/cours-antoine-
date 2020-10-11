<?php

//charge les fichiers de classe necessaires au programme
function ChargerClasse($classe)
{
	require $classe . ".Class.php";
}
spl_autoload_register("ChargerClasse");
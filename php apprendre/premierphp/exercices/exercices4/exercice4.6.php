<?php

// on recueille nombre de voix obtenues par chaqure candidats
$nbvoix1 = readline("indiquez le nombre de voix obtenues par le candidat 1: ");
$nbvoix2 = readline("indiquez le nombre de voix obtenues par le candidat 2: ");
$nbvoix3 = readline("indiquez le nombre de voix obtenues par le candidat 3: ");
$nbvoix4 = readline("indiquez le nombre de voix obtenues par le candidat 4: ");

// on calcule le nombre total de voix
$voixtot = $nbvoix1 + $nbvoix2 + $nbvoix3 + $nbvoix4;

// on calcule le score de chaque candidat
$score1 = 100 * $nbvoix1 / $voixtot;
$score2 = 100 * $nbvoix2 / $voixtot;
$score3 = 100 * $nbvoix3 / $voixtot;
$score4 = 100 * $nbvoix4 / $voixtot;

echo "le candidat 1 a obtenu " . $score1 . " % des voix";

// on test si le candidat 1  a gagner en obtenant + 50% des voix

if ($score1 > 50) {

    echo "le candidat est élu president";

} else if ($score1 > 12.5 && $score1 < 50) {

    echo "le candidat est selectionner pour le second tour";

}

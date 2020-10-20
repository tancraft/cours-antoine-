<?php

class Classe
{
    /***************************** Attributs ******************************************/
    private $_nomClasse;

    /***************************** Getter / Setter ***********************************/
    
    public function getNomClasse()
    {
        return $this->_nomClasse;
    }

    public function setNomClasse($nomClasse)
    {
        $this->_nomClasse = $nomClasse;
    }


        /***************************** Constructeur ******************************************/

        public function __construct(array $options = [])
        {
            if (!empty($options)) {
                $this->hydrate($options);
            }
        }
        public function hydrate($data)
        {
            foreach ($data as $key => $value) {
                $method = 'set' . ucfirst($key);
    
                if (is_callable([$this, $method])) {
                    $this->$method($value);
                }
            }
        }
        /***************************** Autres méthodes ******************************************/
        public function renvoiDescription()
        {

            if ($this->getNomClasse() == "Guerrier")
            {
                $aff = "\t*** Le Guerrier ***\n\n";
                $aff .= "Téméraires et robustes, les nains sont reconnus être aussi habiles en tant que guerriers.\n\n";
                $aff .= "Constitution augmente de 2.\nVous gagner Résistance naine: Vous avez l’avantage aux jets de sauvegarde\ncontre le poison et obtenez la résistance contre les dégâts de poison.\n";
                return $aff;

            }
            else if ($this->getNomClasse() == "Mage")
            {

                $aff = "\t*** Le Mage ***\n\n";
                $aff .= "Avec leur penchant pour les migrations et les conquêtes, il y a plus de diversités physiques chez les humains\nque chez les autres races communes.\n";
                $aff .= "Augmentation de caractéristiques. Toutes vos caractéristiques augmentent de 1.\n\n";
                return $aff;

            }
            else if ($this->getNomClasse() == "Voleur")
            {

                $aff = "\t*** Le Voleur ***\n\n";
                $aff .= "Avec leur penchant pour les migrations et les conquêtes, il y a plus de diversités physiques chez les humains\nque chez les autres races communes.\n";
                $aff .= "Augmentation de caractéristiques. Toutes vos caractéristiques augmentent de 1.\n\n";
                return $aff;

            }
            else
            {

                $aff = "\t*** Le Clerc ***\n\n";
                $aff .= "Avec leur grâce surnaturelle et leurs traits fins, les elfes paraissent\nd’une beauté envoûtante aux yeux des humains et des membres des autres races.\n";
                $aff .= "Augmentation de caractéristiques. Votre Dextérité augmente de 2.\nVous gagnez Sens aiguisés. Vous maîtrisez la compétence Perception.\n\n";
                return $aff;

            }

        }

}
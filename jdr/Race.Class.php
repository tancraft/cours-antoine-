<?php

class Race
{
    /***************************** Attributs ******************************************/
    private $_nomRace;

    /***************************** Getter / Setter ***********************************/
    
    public function getNomRace()
    {
        return $this->_nomRace;
    }

    public function setNomRace($nomRace)
    {
        $this->_nomRace = $nomRace;
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

        public function renvoiDescriptionRace()
        {

            if ($this->getNomRace() == "Nain")
            {
                $aff = "\t*** Les Nains ***\n\n";
                $aff .= "Téméraires et robustes, les nains sont reconnus être aussi habiles en tant que guerriers.\n\n";
                $aff .= "Constitution augmente de 2.\nVous gagner Résistance naine: Vous avez l’avantage aux jets de sauvegarde\ncontre le poison et obtenez la résistance contre les dégâts de poison.\n";
                return $aff;

            }
            else if ($this->getNomRace() == "Humain")
            {

                $aff = "\t*** Les Humains ***\n\n";
                $aff .= "Avec leur penchant pour les migrations et les conquêtes, il y a plus de diversités physiques chez les humains\nque chez les autres races communes.\n";
                $aff .= "Augmentation de caractéristiques. Toutes vos caractéristiques augmentent de 1.\n\n";
                return $aff;

            }
            else
            {

                $aff = "\t*** Les Elfes ***\n\n";
                $aff .= "Avec leur grâce surnaturelle et leurs traits fins, les elfes paraissent\nd’une beauté envoûtante aux yeux des humains et des membres des autres races.\n";
                $aff .= "Augmentation de caractéristiques. Votre Dextérité augmente de 2.\nVous gagnez Sens aiguisés. Vous maîtrisez la compétence Perception.\n\n";
                return $aff;

            }

        }


}
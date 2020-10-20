<?php

class Joueur
{
    /***************************** Attributs ******************************************/
    private $_nom;
    private $_pDv;
    private $_pDvMax;
    private $_niveau = 1;
    private $_exp = 0;
    private $_race;
    private $_classe;
    private $inventaire;
    

    /***************************** Getter / Setter ***********************************/
    
    public function getNom()
    {
        return $this->_nom;
    }

    public function setNom(string $nom)
    {
        $this->_nom = ucfirst($nom);
    }

    public function getPDv()
    {
        return $this->_pDv;
    }

    public function setPDv(int $pDv)
    {
        $this->_pDv = $pDv;
    }

    public function getPDvMax()
    {
        return $this->_pDvMax;
    }

    public function setPDvMax(int $pDvMax)
    {
        $this->_pDvMax = $pDvMax;
    }

    public function getInventaire()
    {
        return $this->inventaire;
    }

    public function setInventaire(Inventaire $inventaire)
    {
        $this->inventaire = $inventaire;
    }

    public function getRace()
    {
        return $this->_race;
    }

    public function setRace(Race $race)
    {
        $this->_race = $race;
    }

    public function getClasse()
    {
        return $this->_classe;
    }

    public function setClasse(Classe $classe)
    {
        $this->_classe = $classe;
    }
    
    public function getNiveau()
    {
        return $this->_niveau;
    }

    public function setNiveau($niveau)
    {
        $this->_niveau = $niveau;
    }

    public function getExp()
    {
        return $this->_exp;
    }

    public function setExp($exp)
    {
        $this->_exp = $exp;
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

        public function toString()
        {
            $aff = "Vous vous apellez ".$this->getNom()." et vous êtes un ".$this->getRace()->getNomRace();
            $aff .= " ".$this->getClasse()->getNomClasse()." de Niveau ".$this->getNiveau();
            return $aff;

        }

}
<?php
class Voiture//nom de la classe

{
    //attributs
    private $_marque;
    private $_type;
    private $_moteur;
    private $_annee;

    //constructeurs

    /*****************Constructeur***************** */

    public function __construct(array $options = [])
    {
        if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
        }
    }
    public function hydrate($data)
    {
        foreach ($data as $key => $value)
        {
            $methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule
            if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
            {
                $this->$methode($value);
            }
        }
    }


    // setters
    public function SetMarque($ma)
    {
        $this->_marque = ucfirst($ma);

    }

    public function setType($ty)
    {

        $this->_type = ucfirst($ty);

    }

    public function setMoteur($mo)
    {

        $this->_moteur = ucfirst($mo);

    }
    public function setAnnee($a)
    {

        $this->_annee = $a;

    }

    //getters

    public function getMarque()
    {

        return $this->_marque;

    }

    public function getType()
    {

        return $this->_type;

    }

    public function getMoteur()
    {

        return $this->_moteur;

    }

    public function getAnnee()
    {

        return $this->_annee;

    }

    //autres methodes
    public function toString()
    {

       return " la voiture est de marque $this->_marque de type $this->_type, son moteur utilise le carburant $this->_moteur et construit en $this->_annee.\n ";

    }

    public function equalsTo(Voiture $obj)//on précise la classe Personne pour préciser le type de la variable attendue
    {

        return ($this->_marque == $obj->getMarque() && 
        $this->_type == $obj->getType() && 
        $this->_moteur == $obj->getMoteur() &&
        $this->_annee == $obj->getAnnee());


    }

    public function compareTo($obj)
    {

        if ($this->getMarque() > $obj->getMarque() ) 
        {
            return 1;

        }
        else if($this->getMarque() < $obj->getMarque() )
        {
         
            return -1;

        }
        else
        {
            if ($this->getType()>$obj->getType())
            {
                return 1;
            }
            else if ($this->getType()<$obj->getType())
            {
                return -1;
            }
            else
            {   // égalité sur les personnes
                return 0;
            }
        }

    }

}


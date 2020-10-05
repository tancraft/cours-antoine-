<?php


class Personne//nom de la classe

{
    //attributs
    private $_prenom;
    private $_nom;
    private $_sexe;
    private $_age;
    private $_voiture;

    //constructeurs

    public function __construct(String $pn, String $n,String $sx,String $a,Voiture $v)
    {
        $this->setPrenom($pn);
        $this->setNom($n);
        $this->setSexe($sx);
        $this->setAge($a);
        $this->setVoiture($v);

    }
    // setters
    public function SetPrenom($pn)
    {
        $this->_prenom = ucfirst($pn);

    }

    public function setNom($n)
    {

        $this->_nom = ucfirst($n);

    }

    public function setSexe($sx)
    {

        $this->_sexe = $sx;

    }

    public function setAge($a)
    {

        $this->_age = $a;

    }

    public function setVoiture($v)
    {

        $this->_voiture = $v;

    }

    //getters

    public function getPrenom()
    {

        return $this->_prenom;

    }

    public function getNom()
    {

        return $this->_nom;

    }

    public function getSexe()
    {
            return $this->_sexe;


    }


    public function getAge()
    {

        return $this->_age;

    }

    public function getVoiture()
    {

        return $this->_voiture;

    }

    //autres methodes
    public function toString()
    {

        return "\tPrenom: $this->_prenom \n
        \tNom: $this->_nom \n
        \tSexe: $this->_sexe \n
        \tAge: $this->_age ans\n
        \tVoiture: ".$this->_voiture."\n";

        

    }

    public function equalsTo(Personne $obj)
    {

        return($this->_prenom == $obj->getPrenom() && 
        $this->_nom == $obj->getNom() && 
        $this->_sexe == $obj->getSexe() && 
        $this->_age == $obj->getAge() &&
        $this->_voiture == $obj->getVoiture() );


    }

    public function compareTo($obj)
    {

        if ($this->getNom() > $obj->getNom() ) 
        {
            return 1;

        }
        else if($this->getNom() < $obj->getNom() )
        {
         
            return -1;

        }
        else
        {
            if ($this->getPrenom()>$obj->getPrenom())
            {
                return 1;
            }
            else if ($this->getPrenom()<$obj->getPrenom())
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


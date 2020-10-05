<?php

require "Voiture.Class.php";

class Personne//nom de la classe

{
    //attributs
    private $_prenom;
    private $_nom;
    private $_sexe;
    private $_age;
    private $_voiture;

    //constructeurs

    public function __construct($pn, $n,$sx,$a,$v)
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

    public function equalsTo($obj)
    {

        if ($this->_prenom == $obj->getPrenom() && 
        $this->_nom == $obj->getNom() && 
        $this->_sexe == $obj->getSexe() && 
        $this->_age == $obj->getAge() &&
        $this->_voiture == $obj->getVoiture() ) {
            return true;
        }
        return false;

    }

    public function compareTo($obj)
    {

        if ($this->_age < $obj->getAge() ) 
        {
            return (1);

        }
        else if($this->_age == $obj->getAge() )
        {
         
            return (0);

        }
        else
        {
            return (-1);
        }

    }

}

//tests
$v4 = new Voiture("renault", "r5","garçon","diesel",2004);
$v3 = new Voiture("citroen", "c4","garçon","essence",2010);

$p1 = new Personne("pierre", "rambault","garçon",21,$v4);
$p2 = new Personne("sophie", "ramier","fille", 19,$v3);

echo $p1->toString().$v4->toString();
echo $p2->toString().$v3->toString();
var_dump($p1->equalsTo($p2));// affichage du booleen
echo $p1->compareTo($p2);

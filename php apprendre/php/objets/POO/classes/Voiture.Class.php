<?php
class Voiture//nom de la classe

{
    //attributs
    private $_marque;
    private $_type;
    private $_moteur;
    private $_annee;

    //constructeurs

    public function __construct($ma, $ty, $mo,$a)
    {
        $this->setMarque($ma);
        $this->setType($ty);
        $this->setMoteur($mo);
        $this->setAnnee($a);

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

        $reponse = " la voiture est de marque $this->_marque de type $this->_type, son moteur utilise le carburant $this->_moteur et construit en $this->_annee.\n ";
        return ($reponse);

    }

    public function equalsTo($obj)
    {

        if ($this->_marque == $obj->getMarque() && 
        $this->_type == $obj->getType() && 
        $this->_moteur == $obj->getMoteur() &&
        $this->_annee == $obj->getAnnee()) {
            return true;
        }
        return false;

    }

    public function compareTo($obj)
    {

        if ($this->_annee < $obj->getAnnee() ) 
        {
            return (1);

        }
        else if($this->_annee == $obj->getAnnee() )
        {
         
            return (0);

        }
        else
        {
            return (-1);
        }

    }

}

$v1 = new Voiture("renault", "r5", "diesel",2000);
$v2 = new Voiture("renault", "r3", "diesel",1999);
//tests
echo $v1->toString();
echo $v2->toString();
echo $v1->equalsTo($v2);
echo $v1->compareTo($v2);

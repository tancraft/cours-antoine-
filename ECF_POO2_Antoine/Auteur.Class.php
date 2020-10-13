<?php

class Auteur
{
    /*****************Attributs***************** */
    private $_nom;
    private $_prenom;
    private $_naissance;
    private $_deces;
    /*****************Accesseurs***************** */
    public function getNom()
    {
        return $this->_nom;
    }

    public function setNom($nom)
    {
        return $this->_nom = ucfirst($nom);
    }

    public function getPrenom()
    {
        return $this->_prenom;
    }

    public function setPrenom($prenom)
    {
        return $this->_prenom = ucfirst($prenom);
    }

    public function getNaissance()
    {
        return $this->_naissance;
    }

    public function setNaissance(DateTime $naissance)
    {
        return $this->_naissance = $naissance;
    }

    public function getDeces()
    {
        return $this->_deces;
    }

    public function setDeces($deces)
    {
        return $this->_deces = $deces;
    }

    /*****************Constructeur***************** */

    public function __construct(array $options = [])
    {if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
        }
    }
    public function hydrate($data)
    {
        foreach ($data as $key => $value) {
            $methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule
            if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
            {
                $this->$methode($value);
            }
        }
    }

    /*****************Autres Méthodes***************** */
    /**
     * Transforme l objet en chaine de caractères
     *
     * @return String
     */
    public function toString()
    {

        $aff = $this->getPrenom() . " " . $this->getNom() . "\nIl est né le " . $this->getNaissance()->format("j-m-Y");
       // $aff .= ($this->estVivant()) ? " il est vivant " : "il est mort le " . $this->getDeces()->format("j-m-Y");
        return $aff;
    }

    /**
     * Renvoi vrai si l objet en paramètre est égal à l objet appelant
     *
     * @param [type] $obj
     * @return bool
     */
    public function equalsTo($obj)
    {
        return ($this->_nom == $obj->getNom() &&
            $this->_prenom == $obj->getPrenom() &&
            $this->_naissance == $obj->getNaissance() &&
            $this->_deces == $obj->getDeces());
    }

/**
 * fonction pour savoir si l'auteur est vivant
 *
 * @return bool
 */
    public function estVivant()
    {

        return (empty($this->getDeces()));// ne fonctionne pas je pense car renvoit toujours vrai

    }

}



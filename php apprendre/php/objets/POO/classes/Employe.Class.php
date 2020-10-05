<?php
class Employe
{

    /*****************Attributs***************** */
    private $_nom;
    private $_prenom;
    private $_dateembauche;
    private $_fonction;
    private $_salaireannuel;
    private $_service;

    /*****************Accesseurs***************** */
    public function getNom()
    {
        return $this->_nom;
    }

    public function setNom($nom)
    {
        $this->_nom = $nom;
    }

    public function getPrenom()
    {
        return $this->_prenom;
    }

    public function setPrenom($prenom)
    {
        $this->_prenom = $prenom;
    }

    public function getDateEmbauche()
    {
        return $this->_dateembauche;
    }

    public function setDateEmbauche(DateTime $dateembauche)
    {
      $this->_dateembauche= $dateembauche;

    }

    public function getFonction()
    {
        return $this->_fonction;
    }

    public function setFonction($fonction)
    {
        $this->_fonction = $fonction;
    }

    public function getSalaire()
    {
        return $this->_salaireannuel;
    }

    public function setSalaire($salaire)
    {
        $this->_salaireannuel = $salaire;
    }

    public function getService()
    {
        return $this->_service;
    }

    public function setService($service)
    {
        $this->_service = $service;
    }

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
     * Transforme l'objet en chaine de caractères
     *
     * @return String
     */
    public function toString()
    {
        return "";
    }

    /**
     * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
     *
     * @param [type] $obj
     * @return bool
     */
    public function equalsTo($obj)
    {
        return true;
    }
    /**
     * Compare 2 objets
     * Renvoi 1 si le 1er est <
     *        0 si ils sont égaux
     *        -1 si le 1er est >
     *
     * @param string Employe $obj
     * 
     * @return void
     */
    public function compareTo(Employe $obj)
    {   
        if ($this->getNom()< $obj->getNom()) {
            return 1;

        } else if ($this->getNom() > $obj->getNom()) {

            return -1;

        } else {
            if ($this->getPrenom() < $obj->getPrenom()) {
                return 1;
            } else if ($this->getPrenom() > $obj->getPrenom()) {
                return -1;
            } else { // égalité sur les personnes
                return 0;
            }
        }

    }

    /**
     * methode pour savoir depuis combien d'annes il est employé
     * 
     * @param [type] $obj1
     * @param [type] $obj
     * @return void
     * 
     * 
     */
    public function nombreAnnees()
    {
       
       $date= new DateTime ('now');
       $datenb=$date->diff($this->getDateEmbauche(),true);
       var_dump($datenb);
       return ($datenb->format("%Y"))*1;

    }

    /**
     * methode pour savoir depuis combien d'annes il est employé
     * 
     * @param [type] $obj1
     * @param [type] $obj
     * @return void
     * 
     * 
     */
    public function primeAnnee()
    {

       return $this->getSalaire()*0.05+$this->getSalaire()*0.02*$this->nombreAnnees();// on retourne le montant de la prime annuelle

    }

}

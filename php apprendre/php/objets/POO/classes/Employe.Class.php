<?php
class Employe
{

    /*****************Attributs***************** */
    private $_nom;
    private $_prenom;
    private $_dateEmbauche;
    private $_fonction;
    private $_salaireAnnuel;
    private $_service;
    private static $_nombreEmploye=0;

    /*****************Accesseurs***************** */
    public function getNom()
    {
        return $this->_nom;
    }

    public function setNom($nom)
    {
        $this->_nom = ucfirst($nom);
    }

    public function getPrenom()
    {
        return $this->_prenom;
    }

    public function setPrenom($prenom)
    {
        $this->_prenom = ucfirst($prenom);
    }



    public function getFonction()
    {
        return $this->_fonction;
    }

    public function setFonction($fonction)
    {
        $this->_fonction = $fonction;
    }



    public function getService()
    {
        return $this->_service;
    }

    public function setService($service)
    {
        $this->_service = $service;
    }

    
    public function getDateEmbauche()
    {
        return $this->_dateEmbauche;
    }

    public function setDateEmbauche(DateTime $dateEmbauche)
    {
        $this->_dateEmbauche = $dateEmbauche;
    }

    public function getSalaireAnnuel()
    {
        return $this->_salaireAnnuel;
    }

    public function setSalaireAnnuel($salaireAnnuel)
    {
        $this->_salaireAnnuel = $salaireAnnuel;
    }

    public function getNombreEmploye()
    {
        return $this->_nombreEmploye;
    }

    public function setNombreEmploye($nombreEmploye)
    {
        $this->_nombreEmploye = $nombreEmploye;
    }
    /*****************Constructeur***************** */

    public function __construct(array $options = [])
    {
        if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
            self:: $_nombreEmploye++;
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
        return $this->getNom()." ".$this->getPrenom()." est employé dans l'entreprise le ". $this->getDateEmbauche()->format("d-m-Y")." en tant que ".$this->getFonction()." dans le service ". $this->getService().".\n Il gagne ".$this->getSalaireAnnuel()."k euros par ans.\n"."sa prime cette année sera de ".$this->prime()." euros.\n\n";
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
     * @return int le rsultat de la comparaison 1 si la condition est verifier -1 si elle ne l'est pas et 0 si c'"est egal
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
     * @return int le nombre d'années dans l'entreprise
     */
    public function anciennete()
    {
       
       $date= new DateTime ('now');//creer l'objet date du jour actuel
       $datenb=$date->diff($this->getDateEmbauche(),true);// ici nous faisont le calcul de la difference via la fonction diff en mettant la date actuelle avant et la date a deduire en parametre
       return ($datenb->format("%Y"))*1;//on retourne la date obtenu apres l'avoir formater en nombre d'années

    }

    /**
     * methode pour pour calculer la prime salaire
     * 
     * @return  double  le montant de la prime salaire
     */
    private function primeSalaire()
    {

       return $this->getSalaireAnnuel()*0.05;// on retourne le montant de la prime annuelle

    }

    /**
     * methode pour pour calculer la prime d'ancienneté
     * 
     * @return   double le montant de la prime d'ancienneté
     */
    private function primeAnciennete()
    {

       return $this->getSalaireAnnuel()*1000*0.02*$this->anciennete();// on retourne le montant de la prime annuelle

    }

     /**
     * methode pour pour calculer la prime annuelle
     * 
     * @return  double  le montant de la prime annuelle 
     */
    public function prime()
    {

       return $this->primeSalaire()+$this->primeAnciennete();// on retourne le montant de la prime annuelle

    }






}

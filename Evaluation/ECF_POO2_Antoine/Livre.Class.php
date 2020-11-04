<?php

class Livre extends Document
{
	/*****************Attributs***************** */
	private $_nbpages;
	/*****************Accesseurs***************** */
	public function getNbpages()
	{
		return $this->_nbpages;
	}

	public function setNbpages($nbpages)
	{
		return $this->_nbpages = $nbpages;
	}

	/*****************Constructeur***************** */

	 public function __construct(array $options = [])
	{	
		parent::__construct($options);// a ajouter dans classe enfant
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

	/*****************Autres Méthodes***************** */
    /**
     * Transforme l'objet en chaine de caractères
     *
     * @return String
     */
    public function toString()
    {
        return parent::toString()." nombre de pages: ".$this->getNbpages()."\n";
    }


}
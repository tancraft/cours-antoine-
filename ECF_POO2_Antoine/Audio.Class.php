<?php

class Audio extends Document
{
	/*****************Attributs***************** */
	private $_duree;
	/*****************Accesseurs***************** */
	public function getDuree()
	{
		return $this->_duree;
	}

	public function setDuree($duree)
	{
		return $this->_duree = $duree;
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
        return $this->toString()." Durée: ".$this->getDuree()."\n";
    }


	/**
	* Renvoi vrai si l objet en paramètre est égal à l objet appelant
	*
	* @param [type] $obj
	* @return bool
	*/
	public function equalsTo($obj)
	{
		 return true;
	}


}
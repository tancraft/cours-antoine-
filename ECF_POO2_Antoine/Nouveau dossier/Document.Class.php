<?php

class Document 
{
	/*****************Attributs***************** */
	private $_titre;
	private $_auteur;
	private $_emprunte;
	/*****************Accesseurs***************** */
	public function getTitre()
	{
		return $this->_titre;
	}

	public function setTitre($titre)
	{
		return $this->_titre = $titre;
	}

	public function getAuteur()
	{
		return $this->_auteur;
	}

	public function setAuteur($auteur)
	{
		return $this->_auteur = $auteur;
	}

	public function getEmprunte()
	{
		return $this->_emprunte;
	}

	public function setEmprunte($emprunte)
	{
		return $this->_emprunte = $emprunte;

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
	* Transforme l objet en chaine de caractères
	*
	* @return String
	*/
	public function toString()
	{
		return "Le titre du document est ".$this->getTitre()."\nil a été créé par ".$this->getAuteur()->toString();
	}

	/**
	* Renvoi vrai si l objet en paramètre est égal à l objet appelant
	*
	* @param [type] $obj
	* @return bool
	*/
	public function equalsTo($obj)
	{
		 return ($this->_prenom == $obj->getTitre() &&
		 $this->_nom == $obj->getAuteur());
	}

	public function estEmprunte($obj)
	{

		return $this->setEmprunte($obj);

	}


}
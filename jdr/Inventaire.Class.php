<?php

class Inventaire
{
    /***************************** Attributs ******************************************/
    private $_nomInventaire;

    /***************************** Getter / Setter ***********************************/
    
    public function getNomInventaire()
    {
        return $this->_nomInventaire;
    }

    public function setNomInventaire($nomInventaire)
    {
        $this->_nomInventaire = $nomInventaire;
    }


        /***************************** Constructeur ******************************************/

        public function __construct(array $options = [])
        {
            if (!empty($options)) {
                $this->hydrate($options);
            }
        }
        public function hydrate($data)
        {
            foreach ($data as $key => $value) {
                $method = 'set' . ucfirst($key);
    
                if (is_callable([$this, $method])) {
                    $this->$method($value);
                }
            }
        }
        /***************************** Autres méthodes ******************************************/


}
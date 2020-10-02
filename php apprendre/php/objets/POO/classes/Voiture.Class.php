<?php
    class Voiture//nom de la classe
    {
       //attributs
       private $_marque;
       private $_type;
       private $_moteur;


       //constructeurs

       public function __construct($ma,$ty,$mo)
       {
             $this-> setMarque($ma);
             $this-> setType($ty);
             $this-> setMoteur($mo);

       }
          // setters
        public  function SetMarque($ma)
         {
            $this->_marque=ucfirst($ma);
         
         }

        public  function setType($ty)
         {

            $this->_type=ctype_alnum($ty);


         }

        public  function setMoteur($mo)
         {

           $this->_moteur=ctype_alpha($mo);

         }

         //getters

         public function getMarque()
         {

           return($ma);

         }
        
         public function getType()
         {

          return($ty);
            
         }

         public function getMoteur()
         {
             
            return($mo);

            
         }

        //autres methodes
       public  function toString()
        {

           $reponse=" la voiture est de marque $ma, de type $ty et son moteur utilise le carburant $mo. ";
        return($reponse);

        }
        
       public  function equalsTo($obj)
        {

           if($this->_marque == getMarque($obj) &&
               $this->_type == getMarque($obj) &&
               $this->_moteur == getMoteur($obj))
               {
                   return true;
               }
               return false;

        }

        public  function compareTo($obj)
        {

          if($obj !=$obj)
          {
             return(-1);

          }
          return (1);

        }
       


    }


    $v1 = new Voiture ("renault","r5","diesel");
    $v2 = new Voiture ("renault","r3","diesel");

echo $v1->toString();
echo $v2->toString();
echo equalsTo($v1)->equalsTo($v2);
echo compareTo($v1)->compareTo($v2);

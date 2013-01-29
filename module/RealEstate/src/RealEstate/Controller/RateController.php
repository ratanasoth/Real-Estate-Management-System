<?php

namespace RealEstate\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class RateController extends AbstractActionController {

	public function rateAction() {
		if ($this->getRequest()->isXmlHttpRequest()) {
			$postData = $this->getRequest()->getPost();
			$user = $this->getServiceLocator()->get('zfcuser_user_service')->getAuthService()->getIdentity();
			
			$house = $this->getEntityManager()->find('RealEstate\Entity\House' , $postData->houseId);
			
			
			$this->layout('layout/ajax');
		}
		return new ViewModel(array(
				));
	}

	/**
	 * Entity manager instance
	 *           
	 * @var Doctrine\ORM\EntityManager
	 */
	protected $em;

	/**
	 * Returns an instance of the Doctrine entity manager loaded from the service 
	 * locator
	 * 
	 * @return Doctrine\ORM\EntityManager
	 */
	public function getEntityManager() {
		if (null === $this->em) {
			$this->em = $this->getServiceLocator()
					->get('doctrine.entitymanager.orm_default');
		}
		return $this->em;
	}

}
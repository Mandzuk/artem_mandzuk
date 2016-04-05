<?php

namespace frontend\controllers;

use yii\rest\ActiveController;



class UserController extends ActiveController
{
    public $modelClass = 'app\models\User';

    public function actions(){

    	$actions = parent::actions();

    	$actions['create']['run']=[$this,'createFunc'];


    	return $actions;
    } 

    public function createFunc(){
      
    	$model = new User();

        if ($model->load(Yii::$app->request->post())) 
        {
            if($model->validate()){

                $code_number = $model->number_of_code;

                for($i=0; $i < $code_number; $i++){
                
                    $model->createUser($model);

                    if($i == $code_number-1){
                        
                        return $model;

                        #return $this->redirect(['index']);
                    }
                }
                $response = Yii::$app->getResponse();
                
                $response->setStatusCode(201);
                
                $id = implode(',', array_values($model->getPrimaryKey(true)));
                
                $response->getHeaders()->set('Location', Url::toRoute([$this->indexAction], true));
            }

            
        } 
        else {
            #return $this->render('create', [
                #'model' => $model,
            #]);
		      return $model;
        }

    }
}

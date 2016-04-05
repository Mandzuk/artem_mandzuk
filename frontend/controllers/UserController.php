<?php

namespace frontend\controllers;

use yii\rest\ActiveController;



class UserController extends ActiveController
{
    public $modelClass = 'app\models\User';

    public function actions(){

    	$actions = parent::actions();

    	unset($actions['create']);

    	return $actions;
    } 

    public function actionCreate(){
      
    	$model = new User();

        if ($model->load(Yii::$app->request->post())) 
        {
            if($model->validate()){

                $code_number = $model->number_of_code;

                for($i=0; $i < $code_number; $i++){
                
                    $model->createUser($model);

                    if($i == $code_number-1){

                        return $this->redirect(['index']);
                    }
                }
            }

            
        } 
        else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }

    }
}
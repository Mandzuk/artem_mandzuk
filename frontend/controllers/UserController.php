<?php

namespace frontend\controllers;

use Yii;
use common\models\User;
use common\models\UserSearch;
use yii\rest\ActiveController;
use yii\helpers\Url;



class UserController extends ActiveController
{
    public $modelClass = 'common\models\User';


    public function actions(){

        $actions = parent::actions();

        unset($actions['create']);

        unset($actions['view']);

        return $actions;
    }

    public function actionCreate(){

        $model = new User();

        $model->load(Yii::$app->getRequest()->getBodyParams(), '');

        if ($model->validate()) {

            $code_number = $model->number_of_code;

            for($i=0; $i < $code_number; $i++){

                $temp = $model->createUser($model);
            }    
        }    
    }
    public function actionView($id){

        if($get_user = User::find()->where(['id' => $id, 'status' => 1])->one()){

            if($get_user){
                
                $change_status = new User();

                $change_status->changeUser($id);
            }
        }  
    }

}
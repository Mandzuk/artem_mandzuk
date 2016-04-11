<?php

namespace frontend\controllers;

use Yii;
use yii\rest\ActiveController;
use yii\helpers\Url;
use app\models\Code;


class UserController extends ActiveController
{
    public $modelClass = 'app\models\Code';


    public function actions(){

        $actions = parent::actions();

        unset($actions['create']);

        unset($actions['view']);

        return $actions;
    }

    public function actionCreate(){

        $model = new Code();

        $model->load(Yii::$app->getRequest()->getBodyParams(), '');

        if ($model->validate()) {

            $code_number = $model->number_of_code;

            for($i=0; $i < $code_number; $i++){

                $temp = $model->createCode($model);
            }    
        }    
    }
    public function actionView($id){

        if($get_user = Code::find()->where(['id' => $id, 'status' => 1])->one()){

            if($get_user){
                
                $change_status = new Code();

                $change_status->changeCode($id);
            }
        }  
    }

}
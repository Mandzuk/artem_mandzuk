<?php

namespace app\models;

use Yii;

date_default_timezone_set('UTC');
/**
 * This is the model class for table "bonus_code".
 *
 * @property integer $id
 * @property string $serial_number
 * @property integer $number
 * @property string $generation_date
 * @property string $date_end_of
 * @property string $use_date
 * @property integer $status
 */
class Code extends \yii\db\ActiveRecord
{
    public $number_of_code;
    const CONST_STATUS_ON = 1;
    const CONST_STATUS_OFF = 0;
    /**
     * @inheritdoc
     */

    public static function tableName()
    {
        return 'bonus_code';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['status'], 'integer'],
            [['generation_date', 'date_end_of', 'use_date','number_of_code'], 'safe'],
            [['number','serial_number'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'serial_number' => 'Serial Number',
            'number' => 'Number',
            'generation_date' => 'Generation Date',
            'date_end_of' => 'Date End Of',
            'use_date' => 'Use Date',
            'status' => 'Status',
        ];
    }

    public function RandomSerialNumber($length = 5) {
        
        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        
        $charactersLength = strlen($characters);
        
        $randomString = '';
        
        for ($i = 0; $i < $length; $i++) {
        
            $randomString .= $characters[rand(0, $charactersLength - 1)];

        }
        
        return $randomString;
    }

    public function RandomNumber(){

        $randomSerialNumber = sha1(mt_rand(10000, 99999).time());

        return $randomSerialNumber;
    }

    public function changeCode($id){
        
        $change = Code::find()->where(['id' => $id])->one();
        
        $change->status = self::CONST_STATUS_OFF;
        
        return $change->save() ? true : false;
    }

    public function createCode()
    {
        if (!$this->validate()) {
            return null;
        }

        //$number_of_code = $this->number_of_code;

//        for($i=0; $i < $number_of_code; $i++){

            $code = new code();

            $code->serial_number = $code->RandomSerialNumber();

            $code->number = $code->RandomNumber();

            $today = date("Y-m-d");

            $code->generation_date = $today;

            $code->date_end_of = '2019-04-10';

            $code->status = self::CONST_STATUS_ON;

            $save_code = $code->save() ? $code : null;

            return $save_code;
 //       }
        
    }

}






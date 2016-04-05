<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $username
 * @property string $name
 * @property string $auth_key
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property string $sex
 * @property string $location
 * @property string $data_registration
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class User extends \yii\db\ActiveRecord
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
            [['serial_number', 'number', 'generation_date', 'date_end_of'], 'required'],
            [['number', 'status'], 'integer'],
            [['generation_date', 'date_end_of', 'use_date'], 'safe'],
            [['serial_number'], 'string', 'max' => 255]
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

    public function createUser()
    {
        if (!$this->validate()) {
            return null;
        }

        //$number_of_code = $this->number_of_code;

//        for($i=0; $i < $number_of_code; $i++){

            $code = new user();

            $code->serial_number = $code->RandomSerialNumber();

            $code->number = $code->RandomNumber();

            $code->generation_date = $this->generation_date;

            $code->date_end_of = $this->date_end_of;

            $code->status = self::CONST_STATUS_ON;

            $save_code = $code->save() ? $code : null;

            return $save_code;
 //       }
        
    }
}

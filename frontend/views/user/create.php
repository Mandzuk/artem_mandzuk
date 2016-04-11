<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yyii\jui\DatePicker;

date_default_timezone_set('UTC');
$today = date("Y-m-d");

/* @var $this yii\web\View */
/* @var $model app\models\Code */

?>
<div class="code-create">

    <?php $form = ActiveForm::begin(); ?>

    	<?= $form->field($model, 'number_of_code')->textInput() ?>
      
        <?= $form->field($model, 'generation_date')->hiddenInput(['value' => $today])->label('') ?>

        <?= $form->field($model, 'date_end_of')->widget(\yii\jui\DatePicker::classname(), [
            //'language' => 'ru',
            'dateFormat' => 'yyyy-MM-dd',
        ]) ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

    <?php ActiveForm::end(); ?>

</div>
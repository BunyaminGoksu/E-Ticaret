<?php include 'header.php';
error_reporting(E_ALL & ~E_NOTICE);



$slidersor = $db->prepare("SELECT * FROM slider where slider_id=:id");
$slidersor->execute(array(

    'id' => $_GET['slider_id']
));

$slidercek = $slidersor->fetch(PDO::FETCH_ASSOC);


?>

<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Slider Düzenleme<small>








                            </small></h2>

                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br />
                        <form action="../netting/islem.php" method="POST" enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                      
                      
                        <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Yüklü Resim<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   
                                    <img width="300" src="../../<?php echo $slidercek['slider_resimyol'] ?>" alt="">
                                </div>
                            </div>
                     
                        <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Resim Seç<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="file" id="first-name" name="slider_resimyol" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>



                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Ad<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" name="slider_ad" value="<?php echo $slidercek['slider_ad'] ?>" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>




                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Link<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" name="slider_link" value="<?php echo $slidercek['slider_link'] ?>"class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Sıra<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" name="slider_sira" value="<?php echo $slidercek['slider_sira'] ?>"class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Durum<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select id="heard" class="form-control" name="slider_durum" required>



                                       
                                    <?php
                                        if ($slidercek['slider_durum'] == 0) { ?>

                                            <option value="0">Pasif</option>
                                            <option value="1">Aktif</option>

                                        <?php  } else { ?>

                                            <option value="1">Aktif</option>
                                            <option value="0">Pasif</option>

                                        <?php }
                                        ?>


                                    </select>
                                </div>
                            </div>

                            <input type="hidden" name="slider_id" value="<?php echo $slidercek['slider_id'] ?>">
                            






                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div align="right" class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button type="submit" name="sliderduzenle" class="btn btn-success">Güncelle</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>








    </div>
</div>
<!-- /page content -->

<?php include 'footer.php' ?>
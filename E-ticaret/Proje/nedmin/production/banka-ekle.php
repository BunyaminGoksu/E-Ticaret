<?php include 'header.php';

error_reporting(E_ALL & ~E_NOTICE);

?>

<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>banka Düzenleme<small>

                                <?php

                                if ($_GET['durum'] == "ok") { ?>

                                    <b style="color:green;">İşlem Başarılı...</b>


                                <?php }
                                if ($_GET['durum'] == "no") { ?>

                                    <b style="color:red;">İşlem Başarısız...</b>


                                <?php } ?>








                            </small></h2>
                       
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br />
                        <form action="../netting/islem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">




                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Banka Ad<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" name="banka_ad" placeholder="Banka Adını Giriniz" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>



                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Banka IBAN<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" name="banka_iban" placeholder="Banka IBAN Giriniz" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>


              

                           

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Banka Hesap Ad Soyad<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" name="banka_hesapadsoyad" placeholder="Ad Soyad Giriniz" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Banka Durum<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select id="heard" class="form-control" name="banka_durum" required>

                                       
                                            <option value="0">Pasif</option>
                                            <option value="1">Aktif</option>

                                       

                                    </select>
                                </div>
                            </div>

                            <input type="hidden" name="banka_id" value="<?php echo $bankacek['banka_id'] ?>">






                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div align="right" class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button type="submit" name="bankaekle" class="btn btn-success">Kaydet </button>
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
<!DOCTYPE html>
<html>

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<style>
    /*Contact sectiom*/
    .content-header{
        font-family: 'Oleo Script', cursive;
        color:#fcc500;
        font-size: 45px;
    }

    .section-content{
        text-align: center;

    }
    select {
        color : initial !important;
    }
    #contact{

        font-family: 'Teko', sans-serif;
        padding-top: 60px;
        width: 100%;
        width: 100vw;
        height: 550px; /* change it to your value depending on context*/
        background: #3a6186; /* fallback for old browsers */
        background: -webkit-linear-gradient(to left, #3a6186 , #89253e); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to left, #3a6186 , #89253e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        color : #fff;
    }
    .contact-section{
        padding-top: 40px;
    }
    .contact-section .col-md-6{
        width: 50%;
    }

    .form-line{
        border-right: 1px solid #B29999;
    }

    .form-group{
        margin-top: 10px;
    }
    label{
        font-size: 1.3em;
        line-height: 1em;
        font-weight: normal;
    }
    .form-control{
        font-size: 1.3em;
        color: #080808;
    }
    textarea.form-control {
        height: 135px;
        resize: none;/*disables the resize function*/
        /* margin-top: px;*/
    }

    .submit{
        font-size: 1.1em;
        float: right;
        width: 150px;
        background-color: transparent;
        color: #fff;

    }

</style>
</head>

<body>

<section id="contact">
    <div class="section-content">
        <h1 class="section-header"> <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s"> Translate</span> your text</h1>
        <h3>Write and click <b>TRANSLATE</b></h3>
    </div>
    <div class="contact-section">
        <div class="container">
            <form>
                <div class="col-md-6 form-line">
                    <div class="form-group">
                        <label for ="from"> From</label>
                        <select name="from">
                            <option value="en">english</option>
                        </select> </div>
                    <div class="form-group">
                        <textarea  class="form-control" id="original" placeholder="Enter Your Text"></textarea>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for ="from"> From</label>
                        <select name="from">
                            <option value="cn">chinese</option>
                        </select> </div>
                    <div class="form-group">
                        <textarea  class="form-control" id="translated" placeholder="Translated text will be here"></textarea>
                    </div>
                    <div>

                        <button type="button" class="btn btn-default submit"><i class="fa fa-globe" aria-hidden="true"></i>translate</button>
                    </div>

                </div>
            </form>
        </div></div>
</section>
</body>

</html>
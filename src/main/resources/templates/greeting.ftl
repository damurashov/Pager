<#include "parts/security.ftl">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pajeeer!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body style="background: linear-gradient( to right, #3D2B48, #644962); width: 100%;">
<#if known>
<#include "parts/navbar.ftl">
</#if>
<div class="d-flex justify-content-center" style="margin-top:8%;">
    <img src="https://raw.githubusercontent.com/sleeplynerd/Pager/master/src/main/resources/templates/images/logo_w700_white.png" style="align:center;"/>
</div>
<div class="mt-5 d-flex justify-content-center" style="color:#FFFFFF; font-size:1.5em;">
    <#if known>
    <div >
        Снова привет Вам, ${name}. Что Вы делаете на главной странице? Вас ждут собеседники :)
    </div>
    <#else>
    <div>
        Приходите. Общайтесь.
    </div>
    </#if>
</div>
<#if !known>
<div class="mt-5 d-flex justify-content-center" style="color:#FFFFFF;">
    <div style="font-size:1.5em;">
        <a href="/registration" class="button btn-primary border-0 m-2 px-3" style="padding: 0.5em; color:#644962; background-color:#FFFFFF; border-radius: 3em 1em;">Зарегистрироваться</a>
        <a href="/login" class="button btn-primary border-0 m-2 px-3" style="padding: 0.5em; color:#644962; background-color:#FFFFFF; border-radius: 3em 1em">Войти</a>
    </div>
</div>
</#if>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
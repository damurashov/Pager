<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#644962">
    <a class="navbar-brand" href="/">
        <!--Pageeer!-->
        <img src="https://raw.githubusercontent.com/sleeplynerd/Pager/master/src/main/resources/templates/images/logo_w300_white.png">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <#if known>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Сообщения</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">Список пользователей</a>
                </li>
            </#if>

        </ul>

        <div class="navbar-text mb-3">${name}</div>
    <#if known>
        <@l.logout />
    </#if>
    </div>
</nav>
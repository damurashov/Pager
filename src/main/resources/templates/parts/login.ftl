<#macro login path isRegisterForm>
<form class="mt-4" action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Имя пользователя:</label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control" placeholder="Введите ник"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Пароль:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="Введите пароль"/>
        </div>
    </div>
    <#if !isRegisterForm>
        <#assign btnValue="Войти">
    <#else>
        <#assign btnValue="Зарегистрироваться">
    </#if>
    <input class="button btn-primary p-2 border-0 rounded" style="background-color:#3D2B48; border-radius: 3em 1em;" type="submit" value="${btnValue}"/>
    <#if !isRegisterForm>
    <a href="/registration">Регистрация</a>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input class="button btn-primary p-2 border-0 rounded m-2" style="background-color:#3D2B48" type="submit" value="Выйти"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>
</#macro>

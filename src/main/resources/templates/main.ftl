<#import "parts/common.ftl" as c>
<@c.page>
<div class="mt-4">
    <form method="post" action="submit_msg">
        <div class="form-group-row">
            <label class="col-sm-2 col-form-label">Сообщение:</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="text" placeholder="Введите сообщение" />
            </div>
        </div>
        <div class="form-group-row">
            <label class="col-sm-2 col-form-label">Тег:</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="tag" placeholder="Тег" />
            </div>
        </div>
        <div class="form-group-row">
            <button class="button btn-primary p-2 mt-4 border-0 rounded" style="background-color:#3D2B48" type="submit">Отправить</button>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</div>
<div class="form-group row mt-3">
    <form method="get" action="/main">
        <input class="form-control" type="text" name="filter" placeholder="Найти по тегу" value="${filter?if_exists}"/>
        <button class="button btn-primary p-2 m-3 border-0 rounded" style="background-color:#3D2B48" type="submit">Найти</button>
    </form>
</div>
<h1 class="mt-3">Сообщения:</h1>

<#list messages as message>
<div class="m-3 rounded" style="background-color:#f4f0f2">
    <table class="p-1" style="width:100%; border:0;">
        <tr class="m-3">
            <td style="width:20%; text-align:right;">${message.authorName} пишет:</td>
            <td>${message.text}</td>
        </tr>
        <tr>
            <td style="width:20%; text-align:right;">Тег:</td>
            <td><i>${message.tag}</i></td>
        </tr>
    </table>
</div>
<#else>
Нет сообщений.
</#list>

</@c.page>
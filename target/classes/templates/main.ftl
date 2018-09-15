<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <div>
        <@l.logout />
    </div>
    <div>
        <form method="post" action="submit_msg">
            <input type="text" name="text" placeholder="Введите сообщение" />
            <input type="text" name="tag" placeholder="Тег" />
            <button type="submit">Отправить</button>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        </form>
    </div>
    <div>Список сообщений</div>
        <form method="get" action="/main">
            <#if filter??>
            <input type="text" name="filter" value="${filter}"/>
            <#else>
            <input type="text" name="filter" value=""/>
            </#if>
            <button type="submit">Найти</button>
        </form>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <b>${message.tag}</b>
        <strong>${message.authorName}</strong>

    </div>
    <#else>
        Нет сообщений!
    </#list>
</@c.page>
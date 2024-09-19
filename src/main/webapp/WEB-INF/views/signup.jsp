
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h1>Реєстрація користувача</h1>
<form >
    <div class="row">
        <div class="input-field col s6">
            <i class="material-icons prefix">badge</i>
            <input id="user-name" name="user-name" type="text" class="validate">
            <label for="user-name">Ім'я</label>
        </div>
        <div class="input-field col s6">
            <i class="material-icons prefix">cake</i>
            <input id="user-birthdate" name="user-birthdate" type="date" class="validate">
            <label for="user-birthdate">Дата народження</label>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s6">
            <i class="material-icons prefix">alternate_email</i>
            <input id="user-email" name="user-email" type="email" class="validate">
            <label for="user-email">E-mail</label>
        </div>
        <div class="file-field input-field col s6">
            <div class="btn light-blue">
                <i class="material-icons">account_circle</i>
                <input type="file" name="user-avatar">
            </div>
            <div class="file-path-wrapper">
                <input class="file-path validate" type="text">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s6">
            <i class="material-icons prefix">lock</i>
            <input id="user-password" name="user-password" type="password" class="validate">
            <label for="user-password">Пароль</label>
        </div>
        <div class="input-field col s6">
            <i class="material-icons prefix">lock_open</i>
            <input id="user-repeat" name="user-repeat" type="password" class="validate">
            <label for="user-repeat">Повтор</label>
        </div>
    </div>

    <div class="row">
        <button class="btn waves-effect waves-light  light-blue darken-2 right" type="submit">Реєстрація
            <i class="material-icons right">send</i>
        </button>
    </div>

</form>
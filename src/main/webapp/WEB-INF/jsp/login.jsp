<script>
    function tlogin() {

        var login = document.getElementById('login').value;
        var pass = document.getElementById('pass').value;
        var id = document.getElementById('idt').value;
        var data = {};
        data.login = login;
        data.password = pass;
        data.id=id;
        var data_json = JSON.stringify(data);
        console.log(data_json);
        jQuery.ajax({

            url: "http://10.3.13.220:8081/musicplay-ws/account/login",
            crossDomain: true,
            type: "POST",

            // send object
            data: data_json,


            contentType: 'application/json; charset=utf-8',
            dataType: 'JSON',
            async: false, //VERY IMPORTANT

            success: function(resultData) {
                $("#idt").val(resultData.user.id);
                console.log(document.getElementById('idt'));
                //alert("success");

            },
            error : function(jqXHR, textStatus, errorThrown) {
                alert("failed");
            },
            timeout: 120000,
        });
    }
</script>

<div class="container contenu">
    <div class="row">
        <div class="col-sm-4">
            <h3 class="titre">Connexion</h3>
        </div>
        <div class="col-sm-4">
            <form method="post" action="login">
                <p>
                    <label for="login">login : </label>
                    <input type="text" name="login" id="login"/>
                </p>

                <p>
                    <label for="pass">Mot de passe : </label>
                    <input type="password" name="pass" id="pass" />
                </p>
                <p>
                    <input type="hidden" name="idt" id="idt" />
                </p>


                <input type="submit" onclick="tlogin();"/>
            </form>
        </div>
        <div class="col-sm-4"></div>
    </div>
</div>
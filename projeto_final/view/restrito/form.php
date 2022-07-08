<p>
<div class="container mt-2 mb-3">
    <style>
        fieldset {
            margin-left: 40%;
            text-align: center;
        }

        #l {
            font-size: 115%;
        }

        #s {
            font-size: 115%;
        }

        hr {
            margin-left: 20%;
            margin-right: 20%;
            color: blue;
        }
    </style>
    <fieldset class="col-3">
        <legend>Restrito</legend>
        <hr>
        <p>
        <form action="<?= base_url() . "?c=restrito&m=entrar" ?>" method="post">
            <div class="mb-3">
                <label for="login" class="form-label" id="l">Login</label>
                <input type="email" class="form-control" name="login" id="login">
            </div>

            <div class="mb-3">
                <label for="senha" class="form-label" id="s">Senha</label>
                <input type="password" class="form-control" name="senha" id="senha">
            </div>

            <button type="submit" class="btn btn-primary">Entrar</button>
        </form>
        </p>
    </fieldset>
</div>
</p>
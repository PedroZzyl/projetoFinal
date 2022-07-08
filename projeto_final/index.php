<?php
$base_url = "dbcatalogo3e2.42web.io/index.php";
    $controlador_padrao = 'Home';
    $controller = ucfirst($_GET['c'] ?? $controlador_padrao);
    $path_controller = "controller/$controller.php";

    //verirfica se o arquivo controller existe
    if (file_exists($path_controller)) {
        require $path_controller;

        //verirfica se foi enviada a variavel $_GET['m']
        //que contém o método do controlador desejado que desejpo executar

        $metodo = $_GET['m'] ?? "index";

        //cria o objeto controlador
        $obj = new $controller();

        $id = $_GET['id'] ?? null;

        //verirfica se cotrolador possui uma função
        if (is_callable(array($obj, $metodo))) {
            // echo "Existe a função <br>";
            call_user_func_array(array($obj, $metodo), array($id));
        }
    }

function base_url()
{
    global $base_url;
    return $base_url;
}
<?php
    require "..\conexao.php";
    require "..\model\categoria_model.php";

    $model = new CategoriaModel($con);
    //$model->inserir("Produto de Limpeza"); //inserir dados
    //$model->excluir(1); //exclui dados
    //$model->atualizar("Smartphone", 2); //atulixa os dados
    //var_dump($model->buscarTodos()); //busca todos itens
    var_dump($model->buscarPorId(2)); // busca algum item pelo seu ID
    ?>
    
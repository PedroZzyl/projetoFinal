<?php
    
    require "model\CategoriaModel.php";
    require "controller/Controller.php";
    class Categoria extends Controller{


        function __construct(){
            $this->model = new CategoriaModel();
        }

        function index(){
            $categorias = $this->model->buscarTodos();
            $this->load_template("categoria/listagem.php",$categorias);
            

        }
        
        function inserir(){


        }
        
    }
//    $model = new CategoriaModel();
    //$model->inserir("Produto de Limpeza"); //inserir dados
    //$model->excluir(1); //exclui dados
    //$model->atualizar("Smartphone", 2); //atulixa os dados
    //var_dump($model->buscarTodos()); //busca todos itens
  //  var_dump($model->buscarPorId(2)); // busca algum item pelo seu ID
    ?>
    
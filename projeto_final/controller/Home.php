<?php
require "model/CategoriaModel.php";
require "model/ProdutoModel.php";


class Home
{

    function __construct()
    {
        $this->model = new CategoriaModel();
        $this->produto = new ProdutoModel();
    }

    function index($id = null)
    {
        $categorias = $this->model->buscarTodos();
        if ($id) {
            $produtos = $this->produto->buscarPorCategoria($id);
        } else {
            $produtos = $this->produto->buscarTodos();
        }
        include "view/template/cabecalho.php";
        include "view/template/menu_home.php";
        include "view/home/listagem.php";
        include "view/template/rodape.php";
    }

    function ver($id)
    {
        $categorias = $this->model->buscarTodos();
        $produto = $this->produto->buscarPorId($id);
        include "view/template/cabecalho.php";
        include "view/template/menu_home.php";
        include "view/home/ver.php";
        include "view/template/rodape.php";
    }

    function search()
    {
        $categorias = $this->model->buscarTodos();
        $produtos = $this->produto->buscarPorLikeNome($_POST['search']);
        include "view/template/cabecalho.php";
        include "view/template/menu_home.php";
        include "view/home/listagem.php";
        include "view/template/rodape.php";
    }
}
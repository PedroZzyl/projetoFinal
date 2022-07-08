-- Data Base

CREATE DATABASE `db_catalogo3e2`;

-- Tabelas

-- Categoria

CREATE TABLE `categoria` (
	`idCategoria` INT(11) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(150) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`idCategoria`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;

-- Produto
    CREATE TABLE `produto` (
	`idProduto` INT(11) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`descricao` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`foto` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`preco` DECIMAL(10,2) NULL DEFAULT NULL,
	`categoria_idCategoria` INT(11) NOT NULL,
	PRIMARY KEY (`idProduto`) USING BTREE,
	INDEX `fk_produto_categoria_idx` (`categoria_idCategoria`) USING BTREE,
	CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON UPDATE NO ACTION ON DELETE NO ACTION
    )
    COLLATE='utf8_general_ci'
    ENGINE=InnoDB;

-- Usuario

    CREATE TABLE `usuario` (
	`idUsuario` INT(11) NOT NULL AUTO_INCREMENT,
	`login` VARCHAR(50) NOT NULL DEFAULT '0' COLLATE 'utf8_general_ci',
	`senha` VARCHAR(200) NOT NULL DEFAULT '0' COLLATE 'utf8_general_ci',
	PRIMARY KEY (`idUsuario`) USING BTREE
    )
    COLLATE='utf8_general_ci'
    ENGINE=InnoDB
--add no database do lab IV
	`marca` VARCHAR(150) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
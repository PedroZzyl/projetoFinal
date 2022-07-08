-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela db_catalogo3e2.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela db_catalogo3e2.categoria: ~0 rows (aproximadamente)
INSERT INTO `categoria` (`idCategoria`, `nome`) VALUES
	(8, 'Smartphone'),
	(9, 'TVs'),
	(10, 'Cozinha'),
	(11, 'Cama, Mesa e Banho');

-- Copiando estrutura para tabela db_catalogo3e2.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `descricao` text DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `categoria_idCategoria` int(11) NOT NULL,
  `marca` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idProduto`) USING BTREE,
  KEY `fk_produto_categoria_idx` (`categoria_idCategoria`) USING BTREE,
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela db_catalogo3e2.produto: ~0 rows (aproximadamente)
INSERT INTO `produto` (`idProduto`, `nome`, `descricao`, `foto`, `preco`, `categoria_idCategoria`, `marca`) VALUES
	(1, 'Celular Positivo P26 com Tela 1,8", Câmera traseira QVGA, 32MB, Bluetooth, Rádio FM - Preto', 'Sobre este item\r\nPrático, transportável em qualquer bolso\r\nMemória Interna 32MB / RAM 32MB\r\nDual SIM - Suporta 2 SIM Card (Chip)\r\nTela 1,8\'\' QQVGA (128x160)\r\nCâmera traseira QVGA\r\nBluetooth 2.1 e Rádio FM\r\nConteúdo da Caixa: Celular, Carregador USB, Cabo USB, Guia rápido', 'pictures/1657189483positivo.jpg', 94.90, 8, 'Positivo'),
	(2, 'Smartphone Xiaomi Redmi Note 11S 6GB RAM 128GB Graphite Gray (Cinza)', 'Carregador Padrão Brasileiro ou EUA (Enviado conforme disponibilidade)', 'pictures/1657189581note11.jpg', 1539.90, 8, 'Xiaomi'),
	(3, 'Apple iPhone 11 (64 GB) Branco', 'Sobre este item\r\nTela LCD Liquid Retina HD de 6,1 polegadas\r\nResistente a água e pó (até 30 minutos à profundidade máxima de 2 metros, IP68)\r\nSistema de câmara dupla de 12 MP (Ultra grande angular, Grande angular e Teleobjetiva); modo Noite, modo Retrato e vídeos em 4K a 60 fps\r\nSistema de câmara frontal de 12 MP com modo Retrato, vídeos em 4K e câmara lenta\r\nFace ID para autenticação segura', 'pictures/1657189658ihone.jpg', 3329.10, 8, 'Apple'),
	(4, 'Telefone robusto DOOGEE S40 PRO [4 GB de RAM 64 GB de ROM], smartphone externo desbloqueado Android 10 IP68, tela de vidro Gorilla de 5,45", câmera tr', 'Sobre este item\r\n★ [Mundo de tamanho grande, design prático e elegante, durabilidade aumentada:] DOOGEE S40 Pro usa uma tela embutida ultrafina e vibrante que pode fornecer imagens, vídeos e textos mais nítidos e nítidos e uma experiência de visualização mais agradável. (Tela 5,45 \'\' HD + IPS, resolução de 720 * 1440, proporção de 18: 9, Corning Gorilla Glass)\r\n★ [Ferramenta robusta, sobrevivente real:] DOOGEE S40 Pro é IP68 à prova d\'água e à prova de poeira, o que significa que fornece o mais alto nível de proteção contra poeira, não só pode ser submerso em água por um curto período de tempo, mas também pode ser totalmente submerso em 1.5. O arroz na água dura 2 horas e permanece intacto enquanto se molhar em chuva forte.\r\n★ [Fornece o desempenho perfeito do processador de ponta, 4 GB de RAM + 64 GB de ROM:] MT6762D A25 fornece a maior frequência principal de até 1,8 GHz, a mais alta frequência de renderização de 650 MHz e melhora de forma abrangente a velocidade de operação, jogos, inteligência artificial e outros aspectos. (Suporta cartão SD externo (até 256 GB)\r\n★ [Câmera traseira dupla AI, desempenho principal:] S40Pro não só pode lidar com suas exigentes atividades diárias, mas também pode capturá-las com belas fotos. Graças à câmera traseira dupla SONY AI 13MP + 2MP, você pode facilmente gravar, editar e compartilhar conquistas enquanto cria uma história e, o mais importante, em um instante. (SONY GMN34170 câmera principal de 13 MP, câmera de retrato de 2 MP, câmera AI selfie, câmera frontal de 5 MP)\r\n★ [Aproveite mais tempo e reduza o tempo de inatividade:] Herde o poderoso DNA do Pro, a bateria é atualizada para 4650 mAh, que pode facilmente atender às suas necessidades por um dia. Graças à maior eficiência energética do chipset e ao sistema inteligente de gerenciamento de energia, ele pode fornecer energia por mais tempo do que antes. Quando a bateria do telefone está fraca, você pode fornecer energia ao seu companheiro de viagem ou parceiro com a função OTG', 'pictures/165719077941HiQaCuyhL._AC_.jpg', 1192.71, 8, 'DOOGEE'),
	(5, 'Cafeteira Elétrica Dolce Arome, 220V, Mondial - C-30-18X-FB', 'Sobre este item\r\nPrepara até 18 xícaras de café: a quantidade ideal para a sua rotina em família. A cafeteira também possui indicador do nível de água e você consegue visualizar e controlar a quantidade desejada de café.\r\nPorta-filtro permanente e removível: A cafeteira é ecologicamente correta, pois dispensa a utilização de filtro de papel. O reaproveitamento do filtro proporciona mais economia e sustentabilidade.\r\nJarra de vidro: A jarra é fácil de lavar e não deixa resíduos ou odores. O item também proporciona mais praticidade para levar à mesa e servir.\r\nSistema corta-pingos: Permite a retirada da jarra para servir o café durante o preparo.\r\nFunção manter aquecido: A base com aquecimento conserva o café quentinho por mais tempo e sem alterar o sabor.\r\nTampa basculante: Mais facilidade na hora de colocar a água e o pó de café.', 'pictures/1657190868mondial.jpg', 115.20, 10, 'Mondial'),
	(6, 'Jogo de Frigideiras de Alumínio com Revestimento Interno de Antiaderente 3 Peças Tramontina Bergamo Vermelho', 'Sobre este item\r\nJogo de frigideiras 3 peças Bergamo ver - sortidos de alumínio com revestimento antiaderente\r\nJogo frigideira alumínio 3 peças Bergamo verde\r\nAlumínio com revestimento interno e externo de antiaderente Starflon T1 cabo de Baquelite antitérmico utensílio de nylon\r\n1 uni.', 'pictures/1657190928panela.jpg', 84.90, 10, 'Tramontina'),
	(7, 'Liquidificador Turbo, Mondial, 110V, 1000W, Preto/Inox - L-1000 BI', '1000W de potência: Potente para triturar diversos de tipos alimentos como gelo, fruta congelada, sucos e vitaminas\r\nCopo de 3,0L ULTRARRESISTENTE: Copo tamanho-família, resistente a quedas e riscos, e não pega cheiro Prepara grandes quantidades de sucos, vitaminas e receitas\r\n12 velocidades + pulsar: A função “pulsar” do liquidificador l-1000 é velocidade máxima - mistura de forma rápida alimentos pastosos como grão de bico, papinhas de bebê, cremes e Smoothies\r\nFunção auto limpeza: Auxilia na limpeza do copo do liquidificador e, em especial, as suas lâminas Para isso, encha o copo até metade com água e um pouquinho de detergente Depois, aperte o botão pulsar alguns vezes e pronto!\r\nFiltro: Entra a fruta coa e sai o suco ou molho filtrado O filtro retira toda a semente deixando seus sucos prontos para serem tomados\r\nLÂMINAS COM SERRILHADA SUPER AFIADA, SISTEMA DE ENCAIXE RÁPIDO, TAMPA COM MEDIDOR DE 40ML, BASE ANTIDERRAPANTE SEGURA E GUARDA FIO: Liquidificador de montagem rápida, prática e fácil A tampa possui o medidor de 40 ml removível, que permite adicionar ingredientes sem desligar o aparelho A base antiderrapante traz segurança pois evita que o liquidificador escorregue durante o uso 1 ano de garantia Para uso residencial O guarda fio permite guardar o produto com facilidade, trazendo mais praticidade para sua cozinha', 'pictures/1657190987liqui.jpg', 129.00, 10, 'Mondial'),
	(8, 'Jogo de Facas 9 Peças Tramontina Plenus 23498048 Preto', 'Com o Jogo de Facas Tramontina Plenus com Lâminas em Aço Inox e Cabos de Polipropileno Preto 9 Peças, você terá a solução completa de facas para utilizar nos mais diversos tipos de cortes e ocasiões gastronômicas. As peças combinam com qualquer cozinha e a deixam mais bonita e clássica, pois seus cabos são na elegante cor preta. As lâminas produzidas em aço inox por terem sido submetidas a tratamento térmico, oferecem maior durabilidade e resistência. As facas são fáceis de limpar e podem ser lavadas na máquina de lavar louças. Com peças únicas e de muita importância na cozinha, o jogo de facas é a escolha perfeita para você. Facas de qualidade e beleza você encontra com a Tramontina!\r\nJOGO FACAS INOX 9PC PLENUS PRE\r\nTRAMONTINA', 'pictures/1657191046facas.jpg', 62.50, 10, 'Tramontina'),
	(9, 'Jogo De Cama Lençol Premium Casal Padrão Com 04 Peças Estampado 100% Algodão Percal 180 Fios Cinza', 'Tamanho	Casal\r\nMaterial	Algodão, Percal\r\nCor	Cinza\r\nMarca	Bordados Ricardo\r\nContagem de fios', 'pictures/1657191238cama.jpg', 172.99, 11, 'NENHUM'),
	(10, 'Kit 4 Toalhas de Banho Banhão Gigante Berlim 75x150cm - Central Toalhas (KIT 5)', 'Sobre este item\r\nMedida: 75cm x 150cm\r\nPeso: 450 Gramas\r\nGramatura: 400 G/m²\r\nMaterial: 100% Algodão\r\nModelo: Berlim\r\nContém: 4 Toalhas Banhão Gigante', 'pictures/1657191283toalha.jpg', 137.36, 11, 'Central Toalhas'),
	(11, 'MESA REFEIÇÃO DOBRÁVEL MULTI POSIÇÃO P/NOTEBOOK PINTURA APOIADOR APOIO VIAGEM', '\r\nCor	Branco\r\nMarca	Clink\r\nPeso do produto	2.5 Quilogramas\r\nNome do modelo	Mesa de Apoio\r\nTamanho	51,5cm x 39cm', 'pictures/1657191372algium.jpg', 154.79, 11, 'Clink'),
	(12, 'Prateleira Dobrável Com 4 Divisórias Ordene Br Bege', 'Sobre este item\r\nPossui 4 divisórias\r\nCor: bege\r\nInstalação por velcro\r\nFácil de instalar', 'pictures/1657191431prateleira.jpg', 59.99, 11, 'Ordene'),
	(13, 'Fire TV Stick 4K com Controle Remoto por Voz com Alexa (inclui comandos de TV) | Dolby Vision', 'Nosso dispositivo de streaming Fire TV mais poderoso.\r\nAssista a seus conteúdos favoritos da Netflix, YouTube, Prime Video, Disney+, Apple TV+, Vivo Play e outros. Assista a notícias ao vivo e esportes. Taxas de assinatura podem ser aplicadas.\r\nInicie e controle conteúdos com o Controle Remoto por Voz com Alexa. Controle sua TV, soundbar e receptor compatíveis usando os botões de ligar e desligar e de volume.\r\nImagem incrível e compatível com conteúdos em 4K Ultra HD, Dolby Vision, HDR e HDR10+.\r\nMais de 100.000 filmes e episódios de séries inclusos na assinatura do Amazon Prime.\r\nExperimente centenas de canais, skills da Alexa e principais aplicativos.\r\nAperte o botão e pergunte à Alexa: use sua voz para pesquisar por filmes e séries, controlar o volume e seus dispositivos de casa inteligente, e escutar música.', 'pictures/1657191545firestick.jpg', 426.55, 9, 'Amazon'),
	(14, 'Rack com Painel Movie para TVs de 55', 'Tamanho da tela	55 Polegadas\r\nMarca	Caemmun\r\nPeso do produto	59.7 Quilogramas', 'pictures/1657191613hack.jpg', 547.58, 9, 'Jatobá'),
	(15, 'Samsung Smart TV 50" QLED 4K 50Q65B 2022, Modo Game, Som em Movimento, Tela sem limites, Design Slim 50"', '\r\nTamanho da tela	50 Polegadas\r\nTecnologia de conectividade	USB\r\nMarca	SAMSUNG\r\nResolução	4K\r\nPeso do produto	15600 Gramas\r\nTipo de alto-falante	Soundbar\r\nMétodo de controle	Remoto\r\nInterface de hardware	USB\r\nTipo de controlador	Controle remoto\r\n', 'pictures/1657191694tvs.jpg', 3449.00, 11, 'Sansung'),
	(16, 'PHILCO Smart TV 40” PTV40G65RCH Roku TV Dolby Audio Led', 'Sobre este item\r\nRoku TV: Sistema de busca inteligente multicanal. Encontre de maneira fácil e rápida seus filmes, séries e canais favoritos\r\nConecte sua TV à internet para ter acesso a mais de 100.000 filmes e episódios de TV em canais como Netflix, Globoplay, Telecine e muito mais\r\nSistema de som Dolby Digital que transmite o som do filme ou vídeo reproduzido em 5.1 canais\r\nTransforme seu smartphone em um controle remoto com APP Mobile', 'pictures/1657191749ddddddddd.jpg', 1599.00, 9, 'PHILCO');

-- Copiando estrutura para tabela db_catalogo3e2.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `senha` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsuario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_catalogo3e2.usuario: ~0 rows (aproximadamente)
INSERT INTO `usuario` (`idUsuario`, `login`, `senha`) VALUES
	(2, 'ivan@gmail.com', '$2y$10$wEhjfnOLsEL0PnuSCGjEq.Pd4/h5BK24vSp6J0WaVIFRwbbl0f9DW'),
	(3, 'pedro1.lopes@alunos.ifsuldeminas.edu.br', '$2y$10$RRW83c6vCaAub.89l2rta.9KQfgCVTd6la4tW2FX8AXQYUyDL59Dm');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

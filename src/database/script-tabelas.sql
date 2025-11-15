-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE carros;

USE carros;

select * from usuario;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(75),
	email VARCHAR(75),
	senha VARCHAR(75),
	personagemFav VARCHAR(75)
);

CREATE TABLE personagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    imagem_index VARCHAR(255),
    imagem_personagem VARCHAR(255),
    descricao VARCHAR(300),
    rotulo VARCHAR(50),
    modelo VARCHAR(100),
    equipe VARCHAR(100),
    aparicao VARCHAR(50),
    nascimento DATE
);

INSERT INTO personagens (nome, imagem_index, imagem_personagem, descricao, rotulo, modelo, equipe, aparicao, nascimento) VALUES
('Relâmpago McQueen', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818903/img_mcqueen_index_kezccq.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818905/img_mcqueen_personagem_y0mhfk.png', 'Relâmpago McQueen é um carro de corrida vermelho número 95, é veloz, confiante e competitivo, mas ao longo da história aprende sobre humildade, amizade e trabalho em equipe.', 'Principal', 'Chevrolet Corvette C6.', 'Rust-eze Racing Team', 'Carros 1', '1981-05-10'),
('Tom Matter', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818902/img_mate_index_sc9sqk.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818903/img_mate_personagem_l3uktb.png', 'O Mate é um guincho enferrujado, simpático e atrapalhado, melhor amigo do Relâmpago McQueen. Vive em Radiator Springs e é conhecido por seu bom coração, humor ingênuo e bordões engraçados.', 'Principal', 'Chevrolet Tow Truck 1955', 'Não corre', 'Carros 1', '1957-01-12'),
('Sally Carrera', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818909/img_sally_index_n3csgw.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818910/img_sally_personagem_nqzw8f.png', 'Sally Carrera é uma Porsche 911 azul, inteligente e gentil. Ex-advogada da cidade grande, mudou-se para Radiator Springs em busca de uma vida mais tranquila. Dona do Cozy Cone Motel, é o grande amor do Relâmpago McQueen e o coração da cidade.', 'Principal', 'Porsche 996 Carrera 2002', 'Não corre', 'Carros 1', '1982-07-25'),
('Doc Hudson', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818891/img_doc_index_oo2zio.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818892/img_doc_personagem_uxd9gj.png', 'O Doc Hudson, também conhecido como Hudson Hornet, é um carro clássico azul e o mentor do Relâmpago McQueen. Antigo campeão das pistas, ficou marcado por um acidente que encerrou sua carreira e o fez se afastar das corridas.', 'Principal', 'Hudson Hornet', 'Hudson Motor Car Company', 'Carros 1', '1951-10-09'),
('Mack', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818900/img_mack_index_l95zsl.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818902/img_mack_personagem_vtzr0l.png', 'O Mack é o caminhão vermelho responsável por transportar o Relâmpago McQueen para as corridas. Leal, divertido e um grande amigo, ele está sempre disposto a ajudar McQueen em suas aventuras pelas estradas.', 'Amigos', 'Mack Super-Liner', 'Rust-eze Racing Team', 'Carros 1', '1985-10-09'),
('Sheriff', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818910/img_sheriff_index_ppjxpy.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818913/img_sheriff_personagem_xnyemo.png', 'O Sheriff é o carro de polícia preto e branco de Radiator Springs. Autoridade da cidade, é sério, protetor e gosta de manter a ordem, mas também tem um grande coração e se preocupa com todos os moradores.', 'Amigos', '1949 Mercury Police Cruiser', 'Não corre', 'Carros 1', '1949-05-12'),
('Luigi', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818899/img_luigi_index_jqvrdx.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818900/img_luigi_personagem_jttouc.png', 'Luigi é um pequeno Fiat 500 amarelo apaixonado por corridas — especialmente pela Ferrari. Dono da loja Luigi’s Casa Della Tires, ele e Guido são especialistas em pneus. Luigi é alegre, apaixonado pela cultura italiana e vive sonhando com o mundo das pistas.', 'Amigos', 'Fiat 500', 'Não corre', 'Carros 1', '1959-03-15'),
('Guido', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818896/img_guido_index_tutaka.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818896/img_guido_personagem_abhcbe.png', 'Guido é um empilhador italiano azul e o braço direito de Luigi na Casa Della Tires. Pequeno mas extremamente rápido, Guido é um mestre na troca de pneus e sonha em participar de pit-stops profissionais', 'Amigos', 'Empilhadeira', 'Não corre', 'Carros 1', '1970-07-20'),
('Ramone', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818906/img_ramone_index_h1lqkf.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818909/img_ramone_personagem_dblzhb.png', 'Ramone é um lowrider roxo estiloso e dono da Ramone’s House of Body Art, a oficina de pintura da cidade. Obcecado por customização, ele está sempre trocando seu visual e criando designs únicos.', 'Amigos', 'Chevrolet Impala Lowrider', 'Não correm', 'Carros 1', '1959-06-10'),
('Flo', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818882/img-flo_index_szrbau.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818894/img_flo_personagem_f6etmn.png', 'Flo é um carro clássico verde-água e dona do Flo’s V8 Café, o posto/restaurante mais famoso de Radiator Springs, onde todos os carros se encontram. Ela é simpática, charmosa e acolhedora, sempre pronta pra receber os amigos e visitantes com muita energia positiva', 'Amigos', 'Motorama Show Car', 'Não correm', 'Carros 1', '1957-04-14'),
('Strip Weathers (The King)', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818914/img_strip_index_wqxt4y.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818916/img_strip_personagem_k7wz4z.png', 'O Rei (The King) é um carro de corrida azul número 43, veterano respeitado e idolatrado nas pistas. Justo e humilde, sempre compete com honra e é um exemplo para os outros corredores.', 'Amigos', 'Plymouth Superbird 1970', 'Dinoco', 'Carros 1', '1970-02-28'),
('Fillmore', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818892/img_fillmore_index_mcdaj9.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818892/img_fillmore_personagem_ckfv1h.png', 'Fillmore é uma kombi hippie colorida, fã de paz e natureza. Produz seu próprio combustível orgânico e vive tranquilo em Radiator Springs.', 'Amigos', 'Volkswagen Type 2 (Kombi) 1960', 'Não corre', 'Carros 1', '1960-07-04'),
('Finn McMissile', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818892/img_finn_index_vwllfr.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818893/img_finn_personagem_thozsc.png', 'Finn McMissile é um elegante carro espião britânico azul, ágil e inteligente. Especialista em missões secretas, é corajoso e habilidoso, trazendo ação e tecnologia ao mundo de Carros.', 'Amigos', 'Aston Martin DB5 (inspirado em James Bond)', 'Não corre', 'Carros 2', '1965-09-15'),
('Holley Caixadibrita', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818897/img_holley_index_qyqbs4.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818897/img_holley_personagem_cbumhh.png', 'A Holley Caixadibrita é uma agente secreta britânica futurista, inteligente e habilidosa, introduzida em Carros 2. Corajosa e rápida.', 'Amigos', 'Carro esportivo britânico moderno (conceito)', 'Não corre', 'Carros 2', '2005-08-10'),
('Cruz Ramirez', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818889/img_cruz_index_rtmf20.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818890/img_cruz_personagem_d9fibo.png', 'Cruz Ramirez é uma jovem e talentosa treinadora de corridas amarela, introduzida em Carros 3. Determinada, otimista e cheia de energia, ela ajuda Relâmpago McQueen a treinar.', 'Amigos', 'Carro esportivo de treinamento moderno', 'Dinoco Racing Team', 'Carros 3', '1996-04-03'),
('Smokey', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818913/img_smokey_index_knrell.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818913/img_smokey_personagem_qndnnb.png', 'Smokey é uma lenda da Copa Pistão e o proprietário da Smokey''s Automotive Service. Ele é uma picape Hudson de 1946 pintada de laranja-avermelhado, com uma carroceria marrom. Seu personagem é uma homenagem ao lendário mecânico de corridas Smokey Yunick.', 'Amigos', 'Hudson Pickup 1946', 'Não corre', 'Carros 3', '1946-11-02'),
('Chick Hicks', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818889/img_chick_index_qmppwo.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818889/img_chick_personagem_c3c1hm.png', 'Chick Hicks é um carro de corrida verde competitivo e arrogante. Seu maior objetivo é vencer a qualquer custo, usando estratégias sujas, tornando-se o principal rival do Relâmpago McQueen.', 'Rival', 'Buick Grand National 1987 (modificado)', 'Hostile Takeover Bank (HTB)', 'Carros 1', '1987-01-22'),
('Sir Miles Eixoderroda', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818905/img_miles_index_lfwnns.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818906/img_miles_personagem_t9bknr.png', 'Sir Miles Eixoderroda é um carro elétrico elegante e milionário, introduzido em Carros 2. Ele é o criador do combustível ecológico Allinol e se apresenta como benfeitor ambiental, mas na trama se revela um vilão manipulador.', 'Rival', 'Range Rover Classic Elétrico (conceito)', 'Não corre', 'Carros 2', '1990-12-17'),
('Professor Zündapp', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818881/img_zundapp_index_fajubq.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818881/img_zundapp_personagem_arzcwt.png', 'Professor Zündapp é o vilão cientista em Carros 2. Ele é um carro esportivo alemão verde que cria planos secretos e armadilhas para sabotar as corridas e avançar seus interesses malignos.', 'Rival', 'Zündapp Janus 1957 (modificado)', 'Não corre', 'Carros 2', '1957-03-09'),
('Francesco Bernoulli', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818894/img_francesco_index_eusz9z.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818895/img_francesco_personagem_scvngq.png', 'Francesco Bernoulli é um carro de Fórmula 1 italiano, competitivo, confiante e um pouco arrogante. Introduzido em Carros 2, ele é o principal rival do Relâmpago McQueen nas corridas internacionais.', 'Rival', 'Fórmula 1 (inspirado na Ferrari F2002)', 'Team Italy', 'Carros 2', '1997-05-05'),
('Jackson Storm', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818898/img_jackson_index_j7kiv0.png', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1762818899/img_jackson_personagem_icw2dw.png', 'Jackson Storm é um carro de corrida futurista e arrogante, introduzido em Carros 3. Ele é rápido, tecnológico e rival do Relâmpago McQueen, representando a nova geração de corredores que desafiam os veteranos.', 'Rival', 'Next-Gen Piston Cup Racer (conceito futurista)', 'Ignitr', 'Carros 3', '2016-09-19');

CREATE TABLE corredor (
    idCorredor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    imagem VARCHAR(150) NOT NULL
);

INSERT INTO corredor (nome, imagem) VALUES
('Relâmpago McQueen', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1763160586/img_costas_mcqueen_rglooz.png'),
('Chick Hicks', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1763160586/img_costas_chick_boitzv.png'),
('Strip Weathers', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1763160586/img_costas_strip_wx9rct.png'),
('Cruz Ramirez', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1763160587/img_costas_cruz_bxilqm.png'),
('Jackson Storm', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1763160586/img_costas_storm_ziqro9.png'),
('Tom Matter', 'https://res.cloudinary.com/dsxiq1hsi/image/upload/v1763160586/img_costas_mate_euzvnf.png');

CREATE TABLE jogo (
    idJogo INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT,
    fkCorredor INT,
    tempo TIME,
    pontuacao INT,
    colisaoCacto INT,
    colisaoFeno INT,
    colisaoBarril INT,
    -- Configuração das Chaves Estrangeiras (FKs)
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario), -- Assumindo que a PK de Usuario é idUsuario
    FOREIGN KEY (fkCorredor) REFERENCES corredor(idCorredor) -- Assumindo que a PK de Competidor é idCompetidor
);

select * from jogo;
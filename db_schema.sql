CREATE TABLE tipo_apto (
  id_tipoapto INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_tipo INT NULL,
  qtd_cama INT NULL,
  PRIMARY KEY(id_tipoapto)
);

CREATE TABLE servico (
  id_servicos INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(15) NULL,
  qtd_servico INT NULL,
  valor_servico INT NULL,
  PRIMARY KEY(id_servicos)
);

CREATE TABLE VeiculoCombustivel (
  idVeiculoCombustivel INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  DescricaoCombustivel VARCHAR(30) NULL,
  PRIMARY KEY(idVeiculoCombustivel)
);

CREATE TABLE Veiculo (
  idVeiculo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Ano INTEGER UNSIGNED NULL,
  Km INTEGER UNSIGNED NULL,
  Cor VARCHAR(20) NULL,
  Cambio VARCHAR(20) NULL,
  FinalPlaca INTEGER UNSIGNED NULL,
  Portas INTEGER UNSIGNED NULL,
  Carroceria BOOL NULL,
  Descricao TEXT NULL,
  Valor FLOAT NULL,
  Novo BOOL NULL,
  PRIMARY KEY(idVeiculo)
);

CREATE TABLE Acessorios (
  idAcessorios INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomeAcessorio VARCHAR(35) NULL,
  DescricaoAcessorio VARCHAR(255) NULL,
  PRIMARY KEY(idAcessorios)
);

CREATE TABLE CadastroProdutoBeleza (
  cod INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome CHAR(50) NOT NULL,
  filial CHAR(50) NOT NULL,
  preco DOUBLE NOT NULL,
  validade DATE NOT NULL,
  foto BLOB NOT NULL,
  PRIMARY KEY(cod)
);

CREATE TABLE VeiculoImagens (
  idVeiculoImagens INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Veiculo_idVeiculo INTEGER UNSIGNED NOT NULL,
  NomeImagem VARCHAR(255) NULL,
  LocalImagem VARCHAR(255) NULL,
  PRIMARY KEY(idVeiculoImagens, Veiculo_idVeiculo),
  INDEX VeiculoImagens_FKIndex1(Veiculo_idVeiculo),
  FOREIGN KEY(Veiculo_idVeiculo)
    REFERENCES Veiculo(idVeiculo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE VendaProdutoBeleza (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  CadastroProdutoBeleza_cod INTEGER UNSIGNED NOT NULL,
  produto_id INTEGER UNSIGNED NULL,
  usuario_id INTEGER UNSIGNED NULL,
  valor FLOAT NULL,
  forma_pagamento INTEGER UNSIGNED NULL,
  parcelas INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX VendaProdutoBeleza_FKIndex1(CadastroProdutoBeleza_cod),
  FOREIGN KEY(CadastroProdutoBeleza_cod)
    REFERENCES CadastroProdutoBeleza(cod)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE VeiculoMarca (
  idVeiculoMarca INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Veiculo_idVeiculo INTEGER UNSIGNED NOT NULL,
  NomeMarca VARCHAR(40) NULL,
  PRIMARY KEY(idVeiculoMarca, Veiculo_idVeiculo),
  INDEX VeiculoMarca_FKIndex1(Veiculo_idVeiculo),
  FOREIGN KEY(Veiculo_idVeiculo)
    REFERENCES Veiculo(idVeiculo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE apto (
  id_apto INT NOT NULL AUTO_INCREMENT,
  tipo_apto_id_tipoapto INT UNSIGNED NOT NULL,
  andar INT NULL,
  num_chave INT NULL,
  status_apto VARCHAR(15) NULL,
  PRIMARY KEY(id_apto, tipo_apto_id_tipoapto),
  INDEX apto_FKIndex1(tipo_apto_id_tipoapto),
  FOREIGN KEY(tipo_apto_id_tipoapto)
    REFERENCES tipo_apto(id_tipoapto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE hotel (
  id_hotel INT NOT NULL AUTO_INCREMENT,
  apto_tipo_apto_id_tipoapto INT UNSIGNED NOT NULL,
  apto_id_apto INT NOT NULL,
  endereco VARCHAR(15) NULL,
  num_endereco INT NULL,
  bairro VARCHAR(15) NULL,
  cidade VARCHAR(15) NULL,
  UF CHAR(2) NULL,
  CEP VARCHAR(15) NULL,
  PRIMARY KEY(id_hotel, apto_tipo_apto_id_tipoapto, apto_id_apto),
  INDEX hotel_FKIndex1(apto_id_apto, apto_tipo_apto_id_tipoapto),
  FOREIGN KEY(apto_id_apto, apto_tipo_apto_id_tipoapto)
    REFERENCES apto(id_apto, tipo_apto_id_tipoapto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE hospedagem (
  id_hospedagem INT NOT NULL AUTO_INCREMENT,
  hotel_apto_id_apto INT NOT NULL,
  hotel_apto_tipo_apto_id_tipoapto INT UNSIGNED NOT NULL,
  hotel_id_hotel INT NOT NULL,
  data_entrada DATE NULL,
  data_saida DATE NULL,
  status_hospedagem VARCHAR(15) NULL,
  PRIMARY KEY(id_hospedagem, hotel_apto_id_apto, hotel_apto_tipo_apto_id_tipoapto, hotel_id_hotel),
  INDEX hospedagem_FKIndex1(hotel_id_hotel, hotel_apto_tipo_apto_id_tipoapto, hotel_apto_id_apto),
  FOREIGN KEY(hotel_id_hotel, hotel_apto_tipo_apto_id_tipoapto, hotel_apto_id_apto)
    REFERENCES hotel(id_hotel, apto_tipo_apto_id_tipoapto, apto_id_apto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE hospedagem_has_servico (
  hospedagem_hotel_id_hotel INT NOT NULL,
  hospedagem_hotel_apto_tipo_apto_id_tipoapto INT UNSIGNED NOT NULL,
  hospedagem_hotel_apto_id_apto INT NOT NULL,
  hospedagem_id_hospedagem INT NOT NULL,
  servico_id_servicos INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(hospedagem_hotel_id_hotel, hospedagem_hotel_apto_tipo_apto_id_tipoapto, hospedagem_hotel_apto_id_apto, hospedagem_id_hospedagem, servico_id_servicos),
  INDEX hospedagem_has_servico_FKIndex1(hospedagem_id_hospedagem, hospedagem_hotel_apto_id_apto, hospedagem_hotel_apto_tipo_apto_id_tipoapto, hospedagem_hotel_id_hotel),
  INDEX hospedagem_has_servico_FKIndex2(servico_id_servicos),
  FOREIGN KEY(hospedagem_id_hospedagem, hospedagem_hotel_apto_id_apto, hospedagem_hotel_apto_tipo_apto_id_tipoapto, hospedagem_hotel_id_hotel)
    REFERENCES hospedagem(id_hospedagem, hotel_apto_id_apto, hotel_apto_tipo_apto_id_tipoapto, hotel_id_hotel)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(servico_id_servicos)
    REFERENCES servico(id_servicos)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Veiculo_has_Acessorios (
  Veiculo_idVeiculo INTEGER UNSIGNED NOT NULL,
  Acessorios_idAcessorios INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Veiculo_idVeiculo, Acessorios_idAcessorios),
  INDEX Veiculo_has_Acessorios_FKIndex1(Veiculo_idVeiculo),
  INDEX Veiculo_has_Acessorios_FKIndex2(Acessorios_idAcessorios),
  FOREIGN KEY(Veiculo_idVeiculo)
    REFERENCES Veiculo(idVeiculo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Acessorios_idAcessorios)
    REFERENCES Acessorios(idAcessorios)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE VeiculoCombustivel_has_Veiculo (
  VeiculoCombustivel_idVeiculoCombustivel INTEGER UNSIGNED NOT NULL,
  Veiculo_idVeiculo INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(VeiculoCombustivel_idVeiculoCombustivel, Veiculo_idVeiculo),
  INDEX VeiculoCombustivel_has_Veiculo_FKIndex1(VeiculoCombustivel_idVeiculoCombustivel),
  INDEX VeiculoCombustivel_has_Veiculo_FKIndex2(Veiculo_idVeiculo),
  FOREIGN KEY(VeiculoCombustivel_idVeiculoCombustivel)
    REFERENCES VeiculoCombustivel(idVeiculoCombustivel)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Veiculo_idVeiculo)
    REFERENCES Veiculo(idVeiculo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE produto (
  id_produto INT NOT NULL AUTO_INCREMENT,
  hospedagem_hotel_id_hotel INT NOT NULL,
  hospedagem_hotel_apto_tipo_apto_id_tipoapto INT UNSIGNED NOT NULL,
  hospedagem_hotel_apto_id_apto INT NOT NULL,
  hospedagem_id_hospedagem INT NOT NULL,
  nome_produto VARCHAR(15) NULL,
  qtd_produto INT NULL,
  valor_produto INT NULL,
  PRIMARY KEY(id_produto, hospedagem_hotel_id_hotel, hospedagem_hotel_apto_tipo_apto_id_tipoapto, hospedagem_hotel_apto_id_apto, hospedagem_id_hospedagem),
  INDEX produto_FKIndex1(hospedagem_id_hospedagem, hospedagem_hotel_apto_id_apto, hospedagem_hotel_apto_tipo_apto_id_tipoapto, hospedagem_hotel_id_hotel),
  FOREIGN KEY(hospedagem_id_hospedagem, hospedagem_hotel_apto_id_apto, hospedagem_hotel_apto_tipo_apto_id_tipoapto, hospedagem_hotel_id_hotel)
    REFERENCES hospedagem(id_hospedagem, hotel_apto_id_apto, hotel_apto_tipo_apto_id_tipoapto, hotel_id_hotel)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


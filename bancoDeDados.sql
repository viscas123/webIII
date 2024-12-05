
CREATE TABLE marcas (
id int NOT NULL AUTO_INCREMENT,
marca varchar(50),
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE fornecedores (
  id int NOT NULL AUTO_INCREMENT,
  fornecedor varchar(80),
  telefone varchar(20),
  email varchar(80),
  PRIMARY KEY (id),
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE produtos (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  descricao text,
  estoque int,
  id_fornecedor int,
  id_marca int,
  modelo varchar(100),
  PRIMARY KEY (id),
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


ALTER TABLE produtos ADD FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id);
ALTER TABLE produtos ADD FOREIGN KEY (id_marca) REFERENCES marcas (id);


CREATE TABLE usuarios (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  nascimento date,
  senha text,
  noticias tinyint(1),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

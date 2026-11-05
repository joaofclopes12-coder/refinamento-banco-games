CREATE TABLE mascaras (
    id INT AUTO_INCREMENT PRIMARY KEY,         
    nome VARCHAR(100) NOT NULL,                 
    funcao VARCHAR(150) NOT NULL,              
    numero INT CHECK (numero >= 1),            
    ativo BOOLEAN DEFAULT TRUE                 
);
CREATE TABLE uso_mascaras (
    id INT AUTO_INCREMENT PRIMARY KEY,        
    mascara_id INT NOT NULL,                   
    fase_nome VARCHAR(100) NOT NULL,           
    pontuacao INT CHECK (pontuacao >= 0),       
    papeis_coletados INT DEFAULT 0,             
    
    CONSTRAINT fk_mascara_uso 
        FOREIGN KEY (mascara_id) 
        REFERENCES mascaras(id) 
        ON DELETE CASCADE
);
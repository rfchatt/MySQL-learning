-- creation de base donnée 
USE ecole;

-- utilisation de base donnée ###
USE ecole;


-- creation de Table etudiant
CREATE TABLE IF NOT EXISTS etudiant(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age > 10)
) ENGINE=InnoDB; 


-- creation de Table Cours
CREATE TABLE IF NOT EXISTS cour(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(100) UNIQUE NOT NULL,
    duree_heures INT NOT NULL CHECK (duree_heures > 0)
) ENGINE=InnoDB;


-- creation de Table inscription
CREATE TABLE IF NOT EXISTS inscription(
	etudiant_id INT,
    cours_id INT,
    date_inscription DATE,
    PRIMARY KEY (etudiant_id, cours_id),
    CONSTRAINT fk_etudiant_inscription FOREIGN KEY (etudiant_id) REFERENCES etudiants(id) ON
		DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_cours_inscription FOREIGN KEY (cours_id) REFERENCES cours(id) ON
		DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


-- Pour Afficher les Tables  
SHOW CREATE TABLE etudiant;
SHOW CREATE TABLE cours;
SHOW CREATE TABLE inscription;

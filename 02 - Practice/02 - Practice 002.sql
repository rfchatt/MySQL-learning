-- In this Practice we'll create a DataBase : Restaurent
-- with Tree Tables [Plat - Client - Commande]
-- in applicate integrity constraints FR[contraintes d'intégrité]

-- [FR]
-- Définition | Les contraintes d'intégrité dans MySQL sont sont des règles qui garantissent
--              l'exactitude et la cohérence des données dans une base de données
--              ex : Clé primaire - Clé étrangère - unique - not null - check - default ..


------------------------------------------
 
CREATE DATABASE IF NOT EXISTS restaurant;
USE restaurant;

CREATE TABLE IF NOT EXISTS plat (
	ID_plat INT PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Prix INT CHECK(Prix > 0),
    Categorie VARCHAR(100) CHECK(Categorie IN ('Entrée','Plat principal','Dessert')),
    Disponibilité BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS client (
	ID_Client INT PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telephone VARCHAR(10) UNIQUE
);

CREATE TABLE IF NOT EXISTS commande (
	ID_commande INT PRIMARY KEY,
    ID_client INT REFERENCES client(ID_client),
    ID_plat INT REFERENCES plat(ID_plat),
    DateComand DATE,
    Quantite INT CHECK(Quantite > 0),
    statut VARCHAR(10) CHECK (statut IN ('en attente', 'servi')) DEFAULT 'en attente'
);



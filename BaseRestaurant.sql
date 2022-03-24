
CREATE TABLE Categorie(
id serial not null PRIMARY KEY,
nom varchar(50)
);
INSERT INTO Categorie(nom) VALUES('Entree');
INSERT INTO Categorie(nom) VALUES('Resistance');
INSERT INTO Categorie(nom) VALUES('Gouter');
INSERT INTO Categorie(nom) VALUES('Dessert');

CREATE TABLE Plat(
 id serial not null PRIMARY KEY,
 nom varchar(50) not null,
 prix int not null,
 idCategorie int references Categorie(id) on delete cascade
);

INSERT INTO Plat(nom,prix,idCategorie) VALUES('henakisoa sy ravitoto',4000,2);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('RizCantonnais',3000,2);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('henakisoa ritra',5000,2);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('Misao',2000,1);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('Tacos',5000,3);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('Pizza',14000,3);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('Soupe',5000,1);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('Glace',5000,4);
INSERT INTO Plat(nom,prix,idCategorie) VALUES('Salade de Fruit',5000,4);

CREATE TABLE Ingredient(
id serial not null PRIMARY KEY,
nomIngredient varchar(50) not null,
prix int not null
);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('henakisoa',2000);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('ravitoto',1000);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('Riz',800);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('Pattes',1000);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('Carrote',500);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('oeuf',1000);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('Fromage',500);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('Carrote',500);
INSERT INTO Ingredient(nomIngredient,prix) VALUES('Carrote',500);

CREATE TABLE Composition(
	id serial not null PRIMARY KEY,
	nom varchar(50)
);
CREATE TABLE Creation(
	id serial not null PRIMARY KEY,
	idComposition int references Composition(id) on delete cascade,
	idIngredient int references Ingredient(id) on delete cascade,
	fatrany int
);
CREATE TABLE Assemblage(
    id serial not null PRIMARY KEY,
    idPlat int references Plat(id) on delete cascade,
    idComposition int references Composition(id) on delete cascade,
    quantite int
);

CREATE TABLE Stock(
	id serial not null PRIMARY KEY,
	idIngredient int references Ingredient(id) on delete cascade,
	quantite int
);
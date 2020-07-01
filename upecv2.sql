-- -----------------------------------------------------------------------------
--             Génération d'une base de données pour
--                           PostgreSQL
--                        (10/9/2015 22:43:53)
-----------------------------------------------------------------------------

drop database UPEC;
-- -----------------------------------------------------------------------------
--       CREATION DE LA BASE 
-- -----------------------------------------------------------------------------

CREATE DATABASE UPEC;

\c upec;
-- -----------------------------------------------------------------------------
--       TABLE : UE
-- -----------------------------------------------------------------------------

CREATE TABLE UE
   (
    ID_UE int4 NOT NULL  ,
    DESIGNATION_UE varchar(50) NULL  ,
    NOM_INTERVENANT varchar(50) NULL  ,
    PRENOM_INTERVENANT varchar(50) NULL  
,   CONSTRAINT PK_UE PRIMARY KEY (ID_UE)
   );

-- -----------------------------------------------------------------------------
--       TABLE : INSCRIPTION
-- -----------------------------------------------------------------------------

CREATE TABLE INSCRIPTION
   (
    ANNEE char(4) NOT NULL  ,
    NUM_ETUDIANT int4 NOT NULL  ,
    ID_DIPLOME char(2) NOT NULL  
,   CONSTRAINT PK_INSCRIPTION PRIMARY KEY (ANNEE, NUM_ETUDIANT)
   );

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE INSCRIPTION
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_INSCRIPTION_ETUDIANT
     ON INSCRIPTION (NUM_ETUDIANT)
    ;

CREATE  INDEX I_FK_INSCRIPTION_DIPLOME
     ON INSCRIPTION (ID_DIPLOME)
    ;

CREATE  INDEX I_FK_INSCRIPTION_ANNEE
     ON INSCRIPTION (ANNEE)
    ;

-- -----------------------------------------------------------------------------
--       TABLE : ETUDIANT
-- -----------------------------------------------------------------------------

CREATE TABLE ETUDIANT
   (
    NUM_ETUDIANT int4 NOT NULL  ,
    NOM_ETUDIANT varchar(128) NULL  ,
    PRENOM_ETUDIANT varchar(128) NULL  ,
    DATE_NAISSANCE date NULL  ,
    LIEU_NAISSANCE varchar(50) NULL  ,
    STATUT varchar(50) NULL  
,   CONSTRAINT PK_ETUDIANT PRIMARY KEY (NUM_ETUDIANT)
   );

-- -----------------------------------------------------------------------------
--       TABLE : ANNEE
-- -----------------------------------------------------------------------------

CREATE TABLE ANNEE
   (
    ANNEE char(4) NOT NULL  
,   CONSTRAINT PK_ANNEE PRIMARY KEY (ANNEE)
   );

-- -----------------------------------------------------------------------------
--       TABLE : DIPLOME
-- -----------------------------------------------------------------------------

CREATE TABLE DIPLOME
   (
    ID_DIPLOME char(2) NOT NULL  ,
    DESIGNATION_DIPLOME varchar(50) NULL  
,   CONSTRAINT PK_DIPLOME PRIMARY KEY (ID_DIPLOME)
   );

-- -----------------------------------------------------------------------------
--       TABLE : COMPOSER
-- -----------------------------------------------------------------------------

CREATE TABLE COMPOSER
   (
    ID_DIPLOME char(2) NOT NULL  ,
    ID_UE int4 NOT NULL  ,
    SEMESTRE char(1) NULL  
,   CONSTRAINT PK_COMPOSER PRIMARY KEY (ID_DIPLOME, ID_UE)
   );

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE COMPOSER
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_COMPOSER_DIPLOME
     ON COMPOSER (ID_DIPLOME)
    ;

CREATE  INDEX I_FK_COMPOSER_UE
     ON COMPOSER (ID_UE)
    ;

-- -----------------------------------------------------------------------------
--       TABLE : OBTENIR
-- -----------------------------------------------------------------------------

CREATE TABLE OBTENIR
   (
    NUM_ETUDIANT int4 NOT NULL  ,
    ID_UE int4 NOT NULL  ,
    ANNEE char(4) NOT NULL  ,
    NOTE int4 NULL  
,   CONSTRAINT PK_OBTENIR PRIMARY KEY (NUM_ETUDIANT, ID_UE, ANNEE)
   );

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE OBTENIR
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_OBTENIR_ETUDIANT
     ON OBTENIR (NUM_ETUDIANT)
    ;

CREATE  INDEX I_FK_OBTENIR_UE
     ON OBTENIR (ID_UE)
    ;

CREATE  INDEX I_FK_OBTENIR_ANNEE
     ON OBTENIR (ANNEE)
    ;


-- -----------------------------------------------------------------------------
--       CREATION DES REFERENCES DE TABLE
-- -----------------------------------------------------------------------------


ALTER TABLE INSCRIPTION ADD 
     CONSTRAINT FK_INSCRIPTION_ETUDIANT
          FOREIGN KEY (NUM_ETUDIANT)
               REFERENCES ETUDIANT (NUM_ETUDIANT);

ALTER TABLE INSCRIPTION ADD 
     CONSTRAINT FK_INSCRIPTION_DIPLOME
          FOREIGN KEY (ID_DIPLOME)
               REFERENCES DIPLOME (ID_DIPLOME);

ALTER TABLE INSCRIPTION ADD 
     CONSTRAINT FK_INSCRIPTION_ANNEE
          FOREIGN KEY (ANNEE)
               REFERENCES ANNEE (ANNEE);

ALTER TABLE COMPOSER ADD 
     CONSTRAINT FK_COMPOSER_DIPLOME
          FOREIGN KEY (ID_DIPLOME)
               REFERENCES DIPLOME (ID_DIPLOME);

ALTER TABLE COMPOSER ADD 
     CONSTRAINT FK_COMPOSER_UE
          FOREIGN KEY (ID_UE)
               REFERENCES UE (ID_UE);

ALTER TABLE OBTENIR ADD 
     CONSTRAINT FK_OBTENIR_ETUDIANT
          FOREIGN KEY (NUM_ETUDIANT)
               REFERENCES ETUDIANT (NUM_ETUDIANT);

ALTER TABLE OBTENIR ADD 
     CONSTRAINT FK_OBTENIR_UE
          FOREIGN KEY (ID_UE)
               REFERENCES UE (ID_UE);

ALTER TABLE OBTENIR ADD 
     CONSTRAINT FK_OBTENIR_ANNEE
          FOREIGN KEY (ANNEE)
               REFERENCES ANNEE (ANNEE);


-- -----------------------------------------------------------------------------
--                FIN DE GENERATION
-- -----------------------------------------------------------------------------

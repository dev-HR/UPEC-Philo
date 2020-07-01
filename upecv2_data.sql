--
-- PostgreSQL database dump
--

-- Dumped from database version 8.4.11
-- Dumped by pg_dump version 9.0.1
-- Started on 2015-09-11 00:01:34

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;


\c upec;

--
-- TOC entry 1819 (class 0 OID 16740)
-- Dependencies: 1505
-- Data for Name: annee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO annee (annee) VALUES ('2014');
INSERT INTO annee (annee) VALUES ('2015');


--
-- TOC entry 1820 (class 0 OID 16745)
-- Dependencies: 1506
-- Data for Name: diplome; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO diplome (id_diplome, designation_diplome) VALUES ('1 ', 'L1');
INSERT INTO diplome (id_diplome, designation_diplome) VALUES ('2 ', 'L2');
INSERT INTO diplome (id_diplome, designation_diplome) VALUES ('3 ', 'L3');
INSERT INTO diplome (id_diplome, designation_diplome) VALUES ('4 ', 'M1');
INSERT INTO diplome (id_diplome, designation_diplome) VALUES ('5 ', 'M2');


--
-- TOC entry 1816 (class 0 OID 16722)
-- Dependencies: 1502
-- Data for Name: ue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (1, 'Les grandes questions de philosophie', 'PAGANI', 'Camilla');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (2, 'Histoire de la philosophie', 'ROMERO', 'Jeremy');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (3, 'Lire les philosophes', 'MURGIER', 'Charlotte');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (4, 'Philosophie des sciences', 'COZIC', 'Mikaël');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (5, 'Epistemologie et philosophie du langage', 'COZIC', 'Mikaël');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (6, 'Philosophie morale', 'MAKLOUF', 'Moudar');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (7, 'Philosophie politique', 'REVEL', 'Ariane');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (8, 'L''analyse philosophique', 'SFORZINI', 'Ariana');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (9, 'Etude de notions', 'PAGANI', 'Camilla');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (10, 'Les grands problèmes metaphysiques', 'ROMERO', 'Jeremy');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (11, 'Les conflits d''interprétation', 'CASTILLO', 'Monique');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (12, 'Philosophie des sciences humaines', 'LORENZINI', 'Daniele');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (13, 'Histoire de la philosophie ancienne et médiévale', 'MURGIER', 'Charlotte');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (14, 'Philosophie moderne et contemporaine', 'MAKLOUF', 'Moudar');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (15, 'Histoire des concepts et des problèmes', 'BENMAKHLOUF', 'Ali');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (16, 'Analyse d''une oeuvre', 'MAKLOUF', 'Moudar');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (17, 'Philosophie de la connaissance et du langage', 'COZIC', 'Mikaël');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (18, 'Initiation a l''esthetique', 'MURGIER', 'Charlotte');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (19, 'Concepts fondamentaux de la philosophie morale', 'SEVERAC', 'Pascal');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (20, 'Philosophie du langage, logique et argumentation', 'COZIC', 'Mikaël');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (21, 'Concepts fondamentaux de la philosophie politique', 'CASTILLO', 'Monique');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (22, 'Problemes et debats du monde contemporain', 'CASTILLO', 'Monique');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (23, 'Philosophie de la connaissance', 'BENMAKHLOUF', 'Ali');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (24, 'Les grandes théorie ethiques', 'REVEL', 'Anne');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (25, 'Philosophie des sciences', 'COZIC', 'Mikaël');
INSERT INTO ue (id_ue, designation_ue, nom_intervenant, prenom_intervenant) VALUES (26, 'Histoire des sciences', 'POMA', 'Roberto');


--
-- TOC entry 1821 (class 0 OID 16750)
-- Dependencies: 1507 1820 1816
-- Data for Name: composer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 1, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 2, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 3, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 4, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 5, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 6, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('1 ', 7, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 8, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 9, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 10, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 11, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 12, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 13, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 14, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 15, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 16, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 17, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('2 ', 18, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 19, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 20, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 21, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 22, '1');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 23, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 24, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 25, '2');
INSERT INTO composer (id_diplome, id_ue, semestre) VALUES ('3 ', 26, '2');


--
-- TOC entry 1818 (class 0 OID 16735)
-- Dependencies: 1504
-- Data for Name: etudiant; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO etudiant (num_etudiant, nom_etudiant, prenom_etudiant, date_naissance, lieu_naissance, statut) VALUES (1, 'DUCHAUD', 'Benjamin', '1983-03-28', 'Caen', 'Initial');
INSERT INTO etudiant (num_etudiant, nom_etudiant, prenom_etudiant, date_naissance, lieu_naissance, statut) VALUES (2, 'MARTIN', 'Laure', '1982-11-04', 'Tarbes', 'Initial');
INSERT INTO etudiant (num_etudiant, nom_etudiant, prenom_etudiant, date_naissance, lieu_naissance, statut) VALUES (3, 'HOCHET', 'Eric', '1980-08-15', 'Castres', 'Initial');
INSERT INTO etudiant (num_etudiant, nom_etudiant, prenom_etudiant, date_naissance, lieu_naissance, statut) VALUES (4, 'BOURDELAS', 'Gregory', '1974-05-07', 'Lille', 'Auditeur');
INSERT INTO etudiant (num_etudiant, nom_etudiant, prenom_etudiant, date_naissance, lieu_naissance, statut) VALUES (5, 'FELDMAN', 'Luc', '1977-04-22', 'Metz', 'Continue');
INSERT INTO etudiant (num_etudiant, nom_etudiant, prenom_etudiant, date_naissance, lieu_naissance, statut) VALUES (6, 'ROUGET', 'François', '1976-12-02', 'Caen', 'Continue');


--
-- TOC entry 1817 (class 0 OID 16727)
-- Dependencies: 1503 1818 1820 1819
-- Data for Name: inscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2015', 1, '1 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2014', 2, '1 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2015', 2, '2 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2014', 3, '1 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2015', 3, '1 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2014', 4, '1 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2014', 5, '2 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2015', 5, '3 ');
INSERT INTO inscription (annee, num_etudiant, id_diplome) VALUES ('2015', 6, '3 ');


--
-- TOC entry 1822 (class 0 OID 16757)
-- Dependencies: 1508 1818 1816 1819
-- Data for Name: obtenir; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (1, 1, '2015', 8);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (1, 2, '2015', 12);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (1, 3, '2015', 14);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 1, '2014', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 2, '2014', 12);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 3, '2014', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 4, '2014', 15);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 5, '2014', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 6, '2014', 16);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 7, '2014', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 8, '2015', 9);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 9, '2015', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 10, '2015', 14);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 11, '2015', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (2, 12, '2015', 7);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 1, '2014', 3);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 2, '2014', 7);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 3, '2014', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 4, '2014', 10);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 5, '2014', 9);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 6, '2014', 2);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 7, '2014', 8);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 1, '2015', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 2, '2015', 10);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (3, 3, '2015', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 8, '2014', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 9, '2014', 10);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 10, '2014', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 11, '2014', 16);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 12, '2014', 10);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 13, '2014', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 14, '2014', 15);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 15, '2014', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 16, '2014', 15);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 17, '2014', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 18, '2014', 10);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 19, '2015', 9);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 20, '2015', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 21, '2015', 15);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (5, 22, '2015', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (6, 19, '2015', 17);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (6, 20, '2015', 11);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (6, 21, '2015', 13);
INSERT INTO obtenir (num_etudiant, id_ue, annee, note) VALUES (6, 22, '2015', 14);


-- Completed on 2015-09-11 00:01:35

--
-- PostgreSQL database dump complete
--


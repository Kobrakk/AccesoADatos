--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: Dispositivos_Disponibles; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public."Dispositivos_Disponibles" ("IDDispositivo", "NombreDispositivo", "Comentarios") FROM stdin;
2	Samsung S9	
1	Iphone 8	
3	Iphone X	
4	Ipone 4S	
5	Iphone 5	
6	Iphone 5S	
7	Iphone 5C	
8	Iphone 6	
9	Iphone 6S	
10	Iphone7	
11	Iphone 7s	
12	Iphone 8S	
13	IPhone XS	
14	Samsung Galaxy S9 Edge	
15	Google Pixel 3	
\.


--
-- Data for Name: Listado_Tiendas; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public."Listado_Tiendas" ("IDTienda", "NombreTienda") FROM stdin;
1	PalmaMobil
2	RepairMobile Manacor
\.


--
-- Data for Name: Ordenes_Reparacion; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public."Ordenes_Reparacion" ("IDReparacion", "NombreCliente", "DireccionCliente", "TLFN", "Comentarios") FROM stdin;
\.


--
-- Data for Name: Reparaciones; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public."Reparaciones" ("IDReparacion", "IDTecnico", "Fecha", "Estado") FROM stdin;
\.


--
-- Data for Name: Tecnicos; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public."Tecnicos" ("IDTecnico", "NombreTecnico", "TlfnTecnico") FROM stdin;
1	Juanito	555555555
\.


--
-- Name: Dispositivos_Disponibles_Comentarios_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Dispositivos_Disponibles_Comentarios_seq"', 1, false);


--
-- Name: Dispositivos_Disponibles_IDDispositivo_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Dispositivos_Disponibles_IDDispositivo_seq"', 15, true);


--
-- Name: Dispositivos_Disponibles_NombreDispositivo_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Dispositivos_Disponibles_NombreDispositivo_seq"', 1, false);


--
-- Name: Listado_Tiendas_IDTienda_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Listado_Tiendas_IDTienda_seq"', 2, true);


--
-- Name: Ordenes_Reparacion_IDReparacion_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_IDReparacion_seq"', 1, false);


--
-- Name: Tecnicos_IDTecnico_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Tecnicos_IDTecnico_seq"', 1, true);


--
-- PostgreSQL database dump complete
--


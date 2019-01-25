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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Dispositivos_Disponibles; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Dispositivos_Disponibles" (
    "IDDispositivo" integer NOT NULL
);


ALTER TABLE public."Dispositivos_Disponibles" OWNER TO usuario;

--
-- Name: Dispositivos_Disponibles_IDDispositivo_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Dispositivos_Disponibles_IDDispositivo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dispositivos_Disponibles_IDDispositivo_seq" OWNER TO usuario;

--
-- Name: Dispositivos_Disponibles_IDDispositivo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Dispositivos_Disponibles_IDDispositivo_seq" OWNED BY public."Dispositivos_Disponibles"."IDDispositivo";


--
-- Name: Estado_Reparacion; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Estado_Reparacion" (
    "IDReparacion" integer NOT NULL,
    "Estado" character varying(255)
);


ALTER TABLE public."Estado_Reparacion" OWNER TO usuario;

--
-- Name: Estado_Reparacion_IDReparacion_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Estado_Reparacion_IDReparacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Estado_Reparacion_IDReparacion_seq" OWNER TO usuario;

--
-- Name: Estado_Reparacion_IDReparacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Estado_Reparacion_IDReparacion_seq" OWNED BY public."Estado_Reparacion"."IDReparacion";


--
-- Name: Listado_Tiendas; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Listado_Tiendas" (
    "IDTienda" integer NOT NULL
);


ALTER TABLE public."Listado_Tiendas" OWNER TO usuario;

--
-- Name: Listado_Tiendas_IDTienda_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Listado_Tiendas_IDTienda_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Listado_Tiendas_IDTienda_seq" OWNER TO usuario;

--
-- Name: Listado_Tiendas_IDTienda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Listado_Tiendas_IDTienda_seq" OWNED BY public."Listado_Tiendas"."IDTienda";


--
-- Name: Ordenes_Reparacion; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Ordenes_Reparacion" (
    "IDReparacion" integer NOT NULL,
    "IDTecnico" integer NOT NULL
);


ALTER TABLE public."Ordenes_Reparacion" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_IDReparacion_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_IDReparacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_IDReparacion_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_IDReparacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_IDReparacion_seq" OWNED BY public."Ordenes_Reparacion"."IDReparacion";


--
-- Name: Ordenes_Reparacion_IDTecnico_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_IDTecnico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_IDTecnico_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_IDTecnico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_IDTecnico_seq" OWNED BY public."Ordenes_Reparacion"."IDTecnico";


--
-- Name: Dispositivos_Disponibles IDDispositivo; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Dispositivos_Disponibles" ALTER COLUMN "IDDispositivo" SET DEFAULT nextval('public."Dispositivos_Disponibles_IDDispositivo_seq"'::regclass);


--
-- Name: Estado_Reparacion IDReparacion; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Estado_Reparacion" ALTER COLUMN "IDReparacion" SET DEFAULT nextval('public."Estado_Reparacion_IDReparacion_seq"'::regclass);


--
-- Name: Listado_Tiendas IDTienda; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Listado_Tiendas" ALTER COLUMN "IDTienda" SET DEFAULT nextval('public."Listado_Tiendas_IDTienda_seq"'::regclass);


--
-- Name: Ordenes_Reparacion IDReparacion; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "IDReparacion" SET DEFAULT nextval('public."Ordenes_Reparacion_IDReparacion_seq"'::regclass);


--
-- Name: Ordenes_Reparacion IDTecnico; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "IDTecnico" SET DEFAULT nextval('public."Ordenes_Reparacion_IDTecnico_seq"'::regclass);


--
-- Data for Name: Dispositivos_Disponibles; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Estado_Reparacion; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Listado_Tiendas; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Ordenes_Reparacion; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Name: Dispositivos_Disponibles_IDDispositivo_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Dispositivos_Disponibles_IDDispositivo_seq"', 1, false);


--
-- Name: Estado_Reparacion_IDReparacion_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Estado_Reparacion_IDReparacion_seq"', 1, false);


--
-- Name: Listado_Tiendas_IDTienda_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Listado_Tiendas_IDTienda_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_IDReparacion_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_IDReparacion_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_IDTecnico_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_IDTecnico_seq"', 1, false);


--
-- Name: Estado_Reparacion Estado_Reparacion_IDReparacion_key; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Estado_Reparacion"
    ADD CONSTRAINT "Estado_Reparacion_IDReparacion_key" UNIQUE ("IDReparacion");


--
-- Name: Listado_Tiendas Listado_Tiendas_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Listado_Tiendas"
    ADD CONSTRAINT "Listado_Tiendas_pkey" PRIMARY KEY ("IDTienda");


--
-- Name: Ordenes_Reparacion Ordenes_Reparacion_IDTecnico_key; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT "Ordenes_Reparacion_IDTecnico_key" UNIQUE ("IDTecnico");


--
-- Name: Ordenes_Reparacion Ordenes_Reparacion_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT "Ordenes_Reparacion_pkey" PRIMARY KEY ("IDReparacion");


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-15 14:26:37 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16448)
-- Name: school_student; Type: TABLE; Schema: d1; Owner: root
--

CREATE TABLE d1.school_student (
    id integer NOT NULL,
    name character(20) NOT NULL,
    lastname character(20) NOT NULL,
    gender character varying(1) NOT NULL,
    birthdate date NOT NULL,
    avg numeric,
    min_vote numeric,
    max_vote numeric
);


ALTER TABLE d1.school_student OWNER TO root;

--
-- TOC entry 223 (class 1259 OID 16447)
-- Name: school_student_id_seq; Type: SEQUENCE; Schema: d1; Owner: root
--

CREATE SEQUENCE d1.school_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE d1.school_student_id_seq OWNER TO root;

--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 223
-- Name: school_student_id_seq; Type: SEQUENCE OWNED BY; Schema: d1; Owner: root
--

ALTER SEQUENCE d1.school_student_id_seq OWNED BY d1.school_student.id;


--
-- TOC entry 3192 (class 2604 OID 16451)
-- Name: school_student id; Type: DEFAULT; Schema: d1; Owner: root
--

ALTER TABLE ONLY d1.school_student ALTER COLUMN id SET DEFAULT nextval('d1.school_student_id_seq'::regclass);


--
-- TOC entry 3338 (class 0 OID 16448)
-- Dependencies: 224
-- Data for Name: school_student; Type: TABLE DATA; Schema: d1; Owner: root
--

COPY d1.school_student (id, name, lastname, gender, birthdate, avg, min_vote, max_vote) FROM stdin;
\.


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 223
-- Name: school_student_id_seq; Type: SEQUENCE SET; Schema: d1; Owner: root
--

SELECT pg_catalog.setval('d1.school_student_id_seq', 1, false);


--
-- TOC entry 3194 (class 2606 OID 16455)
-- Name: school_student school_student_pkey; Type: CONSTRAINT; Schema: d1; Owner: root
--

ALTER TABLE ONLY d1.school_student
    ADD CONSTRAINT school_student_pkey PRIMARY KEY (id);


-- Completed on 2023-05-15 14:26:37 UTC

--
-- PostgreSQL database dump complete
--


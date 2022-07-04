--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-07-04 12:58:31

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
-- TOC entry 216 (class 1259 OID 16434)
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    id_contact integer NOT NULL,
    type character varying,
    value character varying,
    id_personal_data integer
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16433)
-- Name: contact_id_contact_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_id_contact_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_id_contact_seq OWNER TO postgres;

--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 215
-- Name: contact_id_contact_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_id_contact_seq OWNED BY public.contact.id_contact;


--
-- TOC entry 214 (class 1259 OID 16422)
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patient (
    id_patient integer NOT NULL,
    entry_date date,
    status character varying(1),
    id_personal_data integer
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16421)
-- Name: patient_id_patient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patient_id_patient_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_id_patient_seq OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 213
-- Name: patient_id_patient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patient_id_patient_seq OWNED BY public.patient.id_patient;


--
-- TOC entry 210 (class 1259 OID 16399)
-- Name: personal_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_data (
    id_personal_data integer NOT NULL,
    name character varying,
    lastname character varying,
    document_number character varying,
    birth_date date,
    weight integer
);


ALTER TABLE public.personal_data OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16398)
-- Name: personal_data_id_personal_data_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_data_id_personal_data_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_data_id_personal_data_seq OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 209
-- Name: personal_data_id_personal_data_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_data_id_personal_data_seq OWNED BY public.personal_data.id_personal_data;


--
-- TOC entry 212 (class 1259 OID 16408)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id_user integer NOT NULL,
    username character varying,
    password character varying,
    status character varying,
    id_personal_data integer
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16407)
-- Name: user_id_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_user_seq OWNER TO postgres;

--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 211
-- Name: user_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_user_seq OWNED BY public."user".id_user;


--
-- TOC entry 3182 (class 2604 OID 16437)
-- Name: contact id_contact; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact ALTER COLUMN id_contact SET DEFAULT nextval('public.contact_id_contact_seq'::regclass);


--
-- TOC entry 3181 (class 2604 OID 16425)
-- Name: patient id_patient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient ALTER COLUMN id_patient SET DEFAULT nextval('public.patient_id_patient_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 16402)
-- Name: personal_data id_personal_data; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_data ALTER COLUMN id_personal_data SET DEFAULT nextval('public.personal_data_id_personal_data_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 16411)
-- Name: user id_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id_user SET DEFAULT nextval('public.user_id_user_seq'::regclass);


--
-- TOC entry 3340 (class 0 OID 16434)
-- Dependencies: 216
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (id_contact, type, value, id_personal_data) FROM stdin;
\.


--
-- TOC entry 3338 (class 0 OID 16422)
-- Dependencies: 214
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patient (id_patient, entry_date, status, id_personal_data) FROM stdin;
\.


--
-- TOC entry 3334 (class 0 OID 16399)
-- Dependencies: 210
-- Data for Name: personal_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_data (id_personal_data, name, lastname, document_number, birth_date, weight) FROM stdin;
\.


--
-- TOC entry 3336 (class 0 OID 16408)
-- Dependencies: 212
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id_user, username, password, status, id_personal_data) FROM stdin;
\.


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 215
-- Name: contact_id_contact_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_id_contact_seq', 1, false);


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 213
-- Name: patient_id_patient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patient_id_patient_seq', 1, false);


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 209
-- Name: personal_data_id_personal_data_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_data_id_personal_data_seq', 1, false);


--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 211
-- Name: user_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_user_seq', 1, false);


--
-- TOC entry 3190 (class 2606 OID 16441)
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id_contact);


--
-- TOC entry 3188 (class 2606 OID 16427)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id_patient);


--
-- TOC entry 3184 (class 2606 OID 16406)
-- Name: personal_data personal_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_pkey PRIMARY KEY (id_personal_data);


--
-- TOC entry 3186 (class 2606 OID 16415)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id_user);


--
-- TOC entry 3193 (class 2606 OID 16442)
-- Name: contact id_personal_data(personal_data->contact); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT "id_personal_data(personal_data->contact)" FOREIGN KEY (id_personal_data) REFERENCES public.personal_data(id_personal_data);


--
-- TOC entry 3192 (class 2606 OID 16428)
-- Name: patient id_personal_data(personal_data->patient); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "id_personal_data(personal_data->patient)" FOREIGN KEY (id_personal_data) REFERENCES public.personal_data(id_personal_data);


--
-- TOC entry 3191 (class 2606 OID 16416)
-- Name: user id_personal_data(personal_data->user); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "id_personal_data(personal_data->user)" FOREIGN KEY (id_personal_data) REFERENCES public.personal_data(id_personal_data);


-- Completed on 2022-07-04 12:58:31

--
-- PostgreSQL database dump complete
--


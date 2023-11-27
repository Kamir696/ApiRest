--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Ubuntu 16.0-1.pgdg23.10+1)
-- Dumped by pg_dump version 16.0 (Ubuntu 16.0-1.pgdg23.10+1)

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
-- Name: personajes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personajes (
    id integer NOT NULL,
    nombre character varying(255),
    descripcion text,
    comics_disponibles integer,
    series_disponibles integer
);


ALTER TABLE public.personajes OWNER TO postgres;

--
-- Name: personajes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personajes_id_seq OWNER TO postgres;

--
-- Name: personajes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personajes_id_seq OWNED BY public.personajes.id;


--
-- Name: personajes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personajes ALTER COLUMN id SET DEFAULT nextval('public.personajes_id_seq'::regclass);


--
-- Data for Name: personajes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personajes (id, nombre, descripcion, comics_disponibles, series_disponibles) FROM stdin;
1	Air-Walker (Gabriel Lan)		4	3
2	Air-Walker (Gabriel Lan)		4	3
3	Air-Walker (Gabriel Lan)		4	3
4	Air-Walker (Gabriel Lan)		4	3
5	Air-Walker (Gabriel Lan)		4	3
6	Air-Walker (Gabriel Lan)		4	3
7	Air-Walker (Gabriel Lan)		4	3
8	Air-Walker (Gabriel Lan)		4	3
9	Air-Walker (Gabriel Lan)		4	3
10	Air-Walker (Gabriel Lan)		4	3
11	Air-Walker (Gabriel Lan)		4	3
12	3-D Man		12	3
13	A-Bomb (HAS)	Rick Jones has been Hulk's best bud since day one, but now he's more than a friend...he's a teammate! Transformed by a Gamma energy explosion, A-Bomb's thick, armored skin is just as strong and powerful as it is blue. And when he curls into action, he uses it like a giant bowling ball of destruction! 	4	2
14	A.I.M.	AIM is a terrorist organization bent on destroying the world.	53	36
15	Aaron Stack		14	3
16	Abomination (Emil Blonsky)	Formerly known as Emil Blonsky, a spy of Soviet Yugoslavian origin working for the KGB, the Abomination gained his powers after receiving a dose of gamma radiation similar to that which transformed Bruce Banner into the incredible Hulk.	58	28
17	Abomination (Ultimate)		2	2
18	Absorbing Man		99	50
19	Abyss		8	3
20	Abyss (Age of Apocalypse)		3	3
21	Adam Destine		0	0
22	Adam Warlock	Adam Warlock is an artificially created human who was born in a cocoon at a scientific complex called The Beehive.	201	89
23	Aegis (Trey Rollins)		0	0
24	Aero (Aero)		29	5
25	Agatha Harkness		23	12
26	Agent Brand		30	7
27	Agent X (Nijo)	Originally a partner of the mind-altering assassin Black Swan, Nijo spied on Deadpool as part of the Swan's plan to exact revenge for Deadpool falsely taking credit for the Swan's assassination of the Four Winds crime family, which included Nijo's brother.	18	3
28	Agent Zero		29	10
29	Agents of Atlas		45	13
30	Aginar		0	0
31	Air-Walker (Gabriel Lan)		4	3
32	3-D Man		12	3
33	A-Bomb (HAS)	Rick Jones has been Hulk's best bud since day one, but now he's more than a friend...he's a teammate! Transformed by a Gamma energy explosion, A-Bomb's thick, armored skin is just as strong and powerful as it is blue. And when he curls into action, he uses it like a giant bowling ball of destruction! 	4	2
34	A.I.M.	AIM is a terrorist organization bent on destroying the world.	53	36
35	Aaron Stack		14	3
36	Abomination (Emil Blonsky)	Formerly known as Emil Blonsky, a spy of Soviet Yugoslavian origin working for the KGB, the Abomination gained his powers after receiving a dose of gamma radiation similar to that which transformed Bruce Banner into the incredible Hulk.	58	28
37	Abomination (Ultimate)		2	2
38	Absorbing Man		99	50
39	Abyss		8	3
40	Abyss (Age of Apocalypse)		3	3
41	Adam Destine		0	0
42	Adam Warlock	Adam Warlock is an artificially created human who was born in a cocoon at a scientific complex called The Beehive.	201	89
43	Aegis (Trey Rollins)		0	0
44	Aero (Aero)		29	5
45	Agatha Harkness		23	12
46	Agent Brand		30	7
47	Agent X (Nijo)	Originally a partner of the mind-altering assassin Black Swan, Nijo spied on Deadpool as part of the Swan's plan to exact revenge for Deadpool falsely taking credit for the Swan's assassination of the Four Winds crime family, which included Nijo's brother.	18	3
48	Agent Zero		29	10
49	Agents of Atlas		45	13
50	Aginar		0	0
51	Air-Walker (Gabriel Lan)		4	3
\.


--
-- Name: personajes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personajes_id_seq', 51, true);


--
-- Name: personajes personajes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personajes
    ADD CONSTRAINT personajes_pkey PRIMARY KEY (id);


--
-- Name: TABLE personajes; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.personajes TO api;


--
-- Name: SEQUENCE personajes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.personajes_id_seq TO api;


--
-- PostgreSQL database dump complete
--


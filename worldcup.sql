--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Germany.1252';


ALTER DATABASE worldcup OWNER TO postgres;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.games VALUES (37, 2018, 'Final', 81, 82, 4, 2);
INSERT INTO public.games VALUES (38, 2018, 'Third Place', 83, 84, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Semi-Final', 82, 84, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Semi-Final', 81, 83, 1, 0);
INSERT INTO public.games VALUES (41, 2018, 'Quarter-Final', 82, 85, 3, 2);
INSERT INTO public.games VALUES (42, 2018, 'Quarter-Final', 84, 86, 2, 0);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 83, 87, 2, 1);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 81, 88, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 84, 89, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 86, 90, 1, 0);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 83, 91, 3, 2);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 87, 92, 2, 0);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 82, 93, 2, 1);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 85, 94, 2, 1);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 88, 95, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 81, 96, 4, 3);
INSERT INTO public.games VALUES (53, 2014, 'Final', 97, 96, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Third Place', 98, 87, 3, 0);
INSERT INTO public.games VALUES (55, 2014, 'Semi-Final', 96, 98, 1, 0);
INSERT INTO public.games VALUES (56, 2014, 'Semi-Final', 97, 87, 7, 1);
INSERT INTO public.games VALUES (57, 2014, 'Quarter-Final', 98, 99, 1, 0);
INSERT INTO public.games VALUES (58, 2014, 'Quarter-Final', 96, 83, 1, 0);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 87, 89, 2, 1);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 97, 81, 1, 0);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 87, 100, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 89, 88, 2, 0);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 81, 101, 2, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 97, 102, 2, 1);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 98, 92, 2, 1);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 99, 103, 2, 1);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 96, 90, 1, 0);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 83, 104, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teams VALUES (81, 'France');
INSERT INTO public.teams VALUES (82, 'Croatia');
INSERT INTO public.teams VALUES (83, 'Belgium');
INSERT INTO public.teams VALUES (84, 'England');
INSERT INTO public.teams VALUES (85, 'Russia');
INSERT INTO public.teams VALUES (86, 'Sweden');
INSERT INTO public.teams VALUES (87, 'Brazil');
INSERT INTO public.teams VALUES (88, 'Uruguay');
INSERT INTO public.teams VALUES (89, 'Colombia');
INSERT INTO public.teams VALUES (90, 'Switzerland');
INSERT INTO public.teams VALUES (91, 'Japan');
INSERT INTO public.teams VALUES (92, 'Mexico');
INSERT INTO public.teams VALUES (93, 'Denmark');
INSERT INTO public.teams VALUES (94, 'Spain');
INSERT INTO public.teams VALUES (95, 'Portugal');
INSERT INTO public.teams VALUES (96, 'Argentina');
INSERT INTO public.teams VALUES (97, 'Germany');
INSERT INTO public.teams VALUES (98, 'Netherlands');
INSERT INTO public.teams VALUES (99, 'Costa Rica');
INSERT INTO public.teams VALUES (100, 'Chile');
INSERT INTO public.teams VALUES (101, 'Nigeria');
INSERT INTO public.teams VALUES (102, 'Algeria');
INSERT INTO public.teams VALUES (103, 'Greece');
INSERT INTO public.teams VALUES (104, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_game_id_seq', 68, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 104, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 393, 395, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 394, 396, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 395, 396, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 393, 394, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 395, 399, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 396, 397, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 394, 398, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 393, 400, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 396, 404, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 397, 406, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 394, 407, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 398, 408, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 395, 409, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 399, 410, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 400, 411, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 393, 403, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 401, 403, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 402, 398, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 403, 402, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 401, 398, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 402, 405, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 403, 394, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 398, 404, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 401, 393, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 398, 412, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 404, 400, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 393, 413, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 401, 414, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 402, 408, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 405, 415, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 403, 406, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 394, 416, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (393, 'France');
INSERT INTO public.teams VALUES (394, 'Belgium');
INSERT INTO public.teams VALUES (395, 'Croatia');
INSERT INTO public.teams VALUES (396, 'England');
INSERT INTO public.teams VALUES (397, 'Sweden');
INSERT INTO public.teams VALUES (398, 'Brazil');
INSERT INTO public.teams VALUES (399, 'Russia');
INSERT INTO public.teams VALUES (400, 'Uruguay');
INSERT INTO public.teams VALUES (401, 'Germany');
INSERT INTO public.teams VALUES (402, 'Netherlands');
INSERT INTO public.teams VALUES (403, 'Argentina');
INSERT INTO public.teams VALUES (404, 'Colombia');
INSERT INTO public.teams VALUES (405, 'Costa Rica');
INSERT INTO public.teams VALUES (406, 'Switzerland');
INSERT INTO public.teams VALUES (407, 'Japan');
INSERT INTO public.teams VALUES (408, 'Mexico');
INSERT INTO public.teams VALUES (409, 'Denmark');
INSERT INTO public.teams VALUES (410, 'Spain');
INSERT INTO public.teams VALUES (411, 'Portugal');
INSERT INTO public.teams VALUES (412, 'Chile');
INSERT INTO public.teams VALUES (413, 'Nigeria');
INSERT INTO public.teams VALUES (414, 'Algeria');
INSERT INTO public.teams VALUES (415, 'Greece');
INSERT INTO public.teams VALUES (416, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 416, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_teams FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


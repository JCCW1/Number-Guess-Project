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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    tries integer,
    game_id integer NOT NULL,
    user_id integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (8, 1, 2);
INSERT INTO public.games VALUES (169, 2, 3);
INSERT INTO public.games VALUES (131, 3, 3);
INSERT INTO public.games VALUES (613, 4, 4);
INSERT INTO public.games VALUES (57, 5, 4);
INSERT INTO public.games VALUES (165, 6, 3);
INSERT INTO public.games VALUES (620, 7, 3);
INSERT INTO public.games VALUES (953, 8, 3);
INSERT INTO public.games VALUES (501, 9, 5);
INSERT INTO public.games VALUES (290, 10, 5);
INSERT INTO public.games VALUES (153, 11, 6);
INSERT INTO public.games VALUES (492, 12, 6);
INSERT INTO public.games VALUES (979, 13, 5);
INSERT INTO public.games VALUES (687, 14, 5);
INSERT INTO public.games VALUES (522, 15, 5);
INSERT INTO public.games VALUES (9, 16, 2);
INSERT INTO public.games VALUES (5, 17, 7);
INSERT INTO public.games VALUES (5, 18, 7);
INSERT INTO public.games VALUES (1, 19, 7);
INSERT INTO public.games VALUES (4, 20, 2);
INSERT INTO public.games VALUES (561, 21, 8);
INSERT INTO public.games VALUES (97, 22, 8);
INSERT INTO public.games VALUES (340, 23, 9);
INSERT INTO public.games VALUES (271, 24, 9);
INSERT INTO public.games VALUES (374, 25, 8);
INSERT INTO public.games VALUES (444, 26, 8);
INSERT INTO public.games VALUES (414, 27, 8);
INSERT INTO public.games VALUES (8, 28, 2);
INSERT INTO public.games VALUES (5, 29, 2);
INSERT INTO public.games VALUES (581, 30, 10);
INSERT INTO public.games VALUES (228, 31, 10);
INSERT INTO public.games VALUES (332, 32, 11);
INSERT INTO public.games VALUES (260, 33, 11);
INSERT INTO public.games VALUES (747, 34, 10);
INSERT INTO public.games VALUES (264, 35, 10);
INSERT INTO public.games VALUES (428, 36, 10);
INSERT INTO public.games VALUES (7, 37, 2);
INSERT INTO public.games VALUES (539, 38, 12);
INSERT INTO public.games VALUES (12, 39, 12);
INSERT INTO public.games VALUES (504, 40, 13);
INSERT INTO public.games VALUES (965, 41, 13);
INSERT INTO public.games VALUES (936, 42, 12);
INSERT INTO public.games VALUES (21, 43, 12);
INSERT INTO public.games VALUES (4, 44, 12);
INSERT INTO public.games VALUES (383, 45, 14);
INSERT INTO public.games VALUES (774, 46, 14);
INSERT INTO public.games VALUES (395, 47, 15);
INSERT INTO public.games VALUES (134, 48, 15);
INSERT INTO public.games VALUES (48, 49, 14);
INSERT INTO public.games VALUES (71, 50, 14);
INSERT INTO public.games VALUES (516, 51, 14);
INSERT INTO public.games VALUES (984, 52, 16);
INSERT INTO public.games VALUES (111, 53, 16);
INSERT INTO public.games VALUES (624, 54, 17);
INSERT INTO public.games VALUES (232, 55, 17);
INSERT INTO public.games VALUES (630, 56, 16);
INSERT INTO public.games VALUES (698, 57, 16);
INSERT INTO public.games VALUES (828, 58, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'Bob69');
INSERT INTO public.users VALUES (3, 'user_1728349158628');
INSERT INTO public.users VALUES (4, 'user_1728349158627');
INSERT INTO public.users VALUES (5, 'user_1728349420719');
INSERT INTO public.users VALUES (6, 'user_1728349420718');
INSERT INTO public.users VALUES (7, 'Holly101');
INSERT INTO public.users VALUES (8, 'user_1728349970626');
INSERT INTO public.users VALUES (9, 'user_1728349970625');
INSERT INTO public.users VALUES (10, 'user_1728350133317');
INSERT INTO public.users VALUES (11, 'user_1728350133316');
INSERT INTO public.users VALUES (12, 'user_1728350230890');
INSERT INTO public.users VALUES (13, 'user_1728350230889');
INSERT INTO public.users VALUES (14, 'user_1728350242605');
INSERT INTO public.users VALUES (15, 'user_1728350242604');
INSERT INTO public.users VALUES (16, 'user_1728350394296');
INSERT INTO public.users VALUES (17, 'user_1728350394295');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 58, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games pk_game_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT pk_game_id PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


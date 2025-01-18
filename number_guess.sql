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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_games (
    game_id integer NOT NULL,
    user_id integer,
    guess_count integer
);


ALTER TABLE public.user_games OWNER TO freecodecamp;

--
-- Name: user_games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_games_game_id_seq OWNER TO freecodecamp;

--
-- Name: user_games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_games_game_id_seq OWNED BY public.user_games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
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
-- Name: user_games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_games ALTER COLUMN game_id SET DEFAULT nextval('public.user_games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: user_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_games VALUES (1, 10, 447);
INSERT INTO public.user_games VALUES (2, 11, 388);
INSERT INTO public.user_games VALUES (3, 10, 190);
INSERT INTO public.user_games VALUES (4, 10, 69);
INSERT INTO public.user_games VALUES (5, 10, 371);
INSERT INTO public.user_games VALUES (6, 1, 11);
INSERT INTO public.user_games VALUES (7, 12, 317);
INSERT INTO public.user_games VALUES (8, 13, 435);
INSERT INTO public.user_games VALUES (9, 12, 985);
INSERT INTO public.user_games VALUES (10, 12, 864);
INSERT INTO public.user_games VALUES (11, 12, 224);
INSERT INTO public.user_games VALUES (12, 14, 658);
INSERT INTO public.user_games VALUES (13, 15, 112);
INSERT INTO public.user_games VALUES (14, 14, 300);
INSERT INTO public.user_games VALUES (15, 14, 535);
INSERT INTO public.user_games VALUES (16, 14, 778);
INSERT INTO public.user_games VALUES (17, 1, 10);
INSERT INTO public.user_games VALUES (18, 17, 417);
INSERT INTO public.user_games VALUES (19, 18, 258);
INSERT INTO public.user_games VALUES (20, 17, 835);
INSERT INTO public.user_games VALUES (21, 17, 706);
INSERT INTO public.user_games VALUES (22, 17, 564);
INSERT INTO public.user_games VALUES (23, 1, 9);
INSERT INTO public.user_games VALUES (24, 19, 921);
INSERT INTO public.user_games VALUES (25, 20, 838);
INSERT INTO public.user_games VALUES (26, 19, 739);
INSERT INTO public.user_games VALUES (27, 19, 58);
INSERT INTO public.user_games VALUES (28, 19, 990);
INSERT INTO public.user_games VALUES (29, 21, 420);
INSERT INTO public.user_games VALUES (30, 22, 627);
INSERT INTO public.user_games VALUES (31, 21, 853);
INSERT INTO public.user_games VALUES (32, 21, 724);
INSERT INTO public.user_games VALUES (33, 21, 42);
INSERT INTO public.user_games VALUES (34, 23, 911);
INSERT INTO public.user_games VALUES (35, 24, 86);
INSERT INTO public.user_games VALUES (36, 23, 189);
INSERT INTO public.user_games VALUES (37, 23, 271);
INSERT INTO public.user_games VALUES (38, 23, 264);
INSERT INTO public.user_games VALUES (39, 17, 9);
INSERT INTO public.user_games VALUES (40, 25, 522);
INSERT INTO public.user_games VALUES (41, 26, 47);
INSERT INTO public.user_games VALUES (42, 25, 22);
INSERT INTO public.user_games VALUES (43, 25, 661);
INSERT INTO public.user_games VALUES (44, 25, 874);
INSERT INTO public.user_games VALUES (45, 27, 991);
INSERT INTO public.user_games VALUES (46, 28, 405);
INSERT INTO public.user_games VALUES (47, 27, 318);
INSERT INTO public.user_games VALUES (48, 27, 963);
INSERT INTO public.user_games VALUES (49, 27, 213);
INSERT INTO public.user_games VALUES (50, 29, 102);
INSERT INTO public.user_games VALUES (51, 30, 615);
INSERT INTO public.user_games VALUES (52, 29, 62);
INSERT INTO public.user_games VALUES (53, 29, 358);
INSERT INTO public.user_games VALUES (54, 29, 525);
INSERT INTO public.user_games VALUES (55, 31, 592);
INSERT INTO public.user_games VALUES (56, 32, 775);
INSERT INTO public.user_games VALUES (57, 31, 56);
INSERT INTO public.user_games VALUES (58, 31, 695);
INSERT INTO public.user_games VALUES (59, 31, 622);
INSERT INTO public.user_games VALUES (60, 33, 521);
INSERT INTO public.user_games VALUES (61, 34, 538);
INSERT INTO public.user_games VALUES (62, 33, 813);
INSERT INTO public.user_games VALUES (63, 33, 102);
INSERT INTO public.user_games VALUES (64, 33, 616);
INSERT INTO public.user_games VALUES (65, 35, 253);
INSERT INTO public.user_games VALUES (66, 36, 855);
INSERT INTO public.user_games VALUES (67, 35, 399);
INSERT INTO public.user_games VALUES (68, 35, 775);
INSERT INTO public.user_games VALUES (69, 35, 986);
INSERT INTO public.user_games VALUES (70, 37, 742);
INSERT INTO public.user_games VALUES (71, 38, 768);
INSERT INTO public.user_games VALUES (72, 37, 651);
INSERT INTO public.user_games VALUES (73, 37, 98);
INSERT INTO public.user_games VALUES (74, 37, 646);
INSERT INTO public.user_games VALUES (75, 39, 823);
INSERT INTO public.user_games VALUES (76, 39, 732);
INSERT INTO public.user_games VALUES (77, 40, 619);
INSERT INTO public.user_games VALUES (78, 40, 76);
INSERT INTO public.user_games VALUES (79, 39, 583);
INSERT INTO public.user_games VALUES (80, 39, 369);
INSERT INTO public.user_games VALUES (81, 39, 405);
INSERT INTO public.user_games VALUES (82, 41, 577);
INSERT INTO public.user_games VALUES (83, 42, 663);
INSERT INTO public.user_games VALUES (84, 41, 22);
INSERT INTO public.user_games VALUES (85, 41, 104);
INSERT INTO public.user_games VALUES (86, 41, 540);
INSERT INTO public.user_games VALUES (87, 43, 691);
INSERT INTO public.user_games VALUES (88, 44, 13);
INSERT INTO public.user_games VALUES (89, 43, 822);
INSERT INTO public.user_games VALUES (90, 43, 340);
INSERT INTO public.user_games VALUES (91, 43, 617);
INSERT INTO public.user_games VALUES (92, 45, 366);
INSERT INTO public.user_games VALUES (93, 46, 632);
INSERT INTO public.user_games VALUES (94, 45, 569);
INSERT INTO public.user_games VALUES (95, 45, 854);
INSERT INTO public.user_games VALUES (96, 45, 536);
INSERT INTO public.user_games VALUES (97, 1, 10);
INSERT INTO public.user_games VALUES (98, 47, 918);
INSERT INTO public.user_games VALUES (99, 48, 242);
INSERT INTO public.user_games VALUES (100, 47, 847);
INSERT INTO public.user_games VALUES (101, 47, 373);
INSERT INTO public.user_games VALUES (102, 47, 129);
INSERT INTO public.user_games VALUES (103, 49, 999);
INSERT INTO public.user_games VALUES (104, 50, 871);
INSERT INTO public.user_games VALUES (105, 49, 63);
INSERT INTO public.user_games VALUES (106, 49, 966);
INSERT INTO public.user_games VALUES (107, 49, 219);
INSERT INTO public.user_games VALUES (108, 51, 433);
INSERT INTO public.user_games VALUES (109, 52, 433);
INSERT INTO public.user_games VALUES (110, 51, 317);
INSERT INTO public.user_games VALUES (111, 51, 141);
INSERT INTO public.user_games VALUES (112, 51, 870);
INSERT INTO public.user_games VALUES (113, 53, 502);
INSERT INTO public.user_games VALUES (114, 54, 729);
INSERT INTO public.user_games VALUES (115, 53, 793);
INSERT INTO public.user_games VALUES (116, 53, 968);
INSERT INTO public.user_games VALUES (117, 53, 448);
INSERT INTO public.user_games VALUES (118, 55, 198);
INSERT INTO public.user_games VALUES (119, 56, 217);
INSERT INTO public.user_games VALUES (120, 55, 967);
INSERT INTO public.user_games VALUES (121, 55, 719);
INSERT INTO public.user_games VALUES (122, 55, 330);
INSERT INTO public.user_games VALUES (123, 57, 345);
INSERT INTO public.user_games VALUES (124, 58, 409);
INSERT INTO public.user_games VALUES (125, 57, 235);
INSERT INTO public.user_games VALUES (126, 57, 433);
INSERT INTO public.user_games VALUES (127, 57, 536);
INSERT INTO public.user_games VALUES (128, 59, 378);
INSERT INTO public.user_games VALUES (129, 60, 29);
INSERT INTO public.user_games VALUES (130, 59, 470);
INSERT INTO public.user_games VALUES (131, 59, 626);
INSERT INTO public.user_games VALUES (132, 59, 629);
INSERT INTO public.user_games VALUES (133, 61, 267);
INSERT INTO public.user_games VALUES (134, 62, 534);
INSERT INTO public.user_games VALUES (135, 61, 972);
INSERT INTO public.user_games VALUES (136, 61, 166);
INSERT INTO public.user_games VALUES (137, 61, 863);
INSERT INTO public.user_games VALUES (138, 1, 8);
INSERT INTO public.user_games VALUES (139, 63, 585);
INSERT INTO public.user_games VALUES (140, 64, 44);
INSERT INTO public.user_games VALUES (141, 63, 196);
INSERT INTO public.user_games VALUES (142, 63, 989);
INSERT INTO public.user_games VALUES (143, 63, 640);
INSERT INTO public.user_games VALUES (144, 65, 129);
INSERT INTO public.user_games VALUES (145, 66, 985);
INSERT INTO public.user_games VALUES (146, 65, 731);
INSERT INTO public.user_games VALUES (147, 65, 805);
INSERT INTO public.user_games VALUES (148, 65, 307);
INSERT INTO public.user_games VALUES (149, 68, 4);
INSERT INTO public.user_games VALUES (150, 69, 407);
INSERT INTO public.user_games VALUES (151, 69, 805);
INSERT INTO public.user_games VALUES (152, 70, 276);
INSERT INTO public.user_games VALUES (153, 70, 336);
INSERT INTO public.user_games VALUES (154, 69, 28);
INSERT INTO public.user_games VALUES (155, 69, 862);
INSERT INTO public.user_games VALUES (156, 69, 48);
INSERT INTO public.user_games VALUES (157, 71, 225);
INSERT INTO public.user_games VALUES (158, 71, 601);
INSERT INTO public.user_games VALUES (159, 72, 290);
INSERT INTO public.user_games VALUES (160, 72, 186);
INSERT INTO public.user_games VALUES (161, 71, 69);
INSERT INTO public.user_games VALUES (162, 71, 174);
INSERT INTO public.user_games VALUES (163, 71, 630);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'v');
INSERT INTO public.users VALUES (2, 'user_1737179658656');
INSERT INTO public.users VALUES (3, 'user_1737179658655');
INSERT INTO public.users VALUES (4, 'user_1737179805991');
INSERT INTO public.users VALUES (5, 'user_1737179805990');
INSERT INTO public.users VALUES (6, 'user_1737180312380');
INSERT INTO public.users VALUES (7, 'user_1737180312379');
INSERT INTO public.users VALUES (8, 'user_1737180441666');
INSERT INTO public.users VALUES (9, 'user_1737180441665');
INSERT INTO public.users VALUES (10, 'user_1737180536435');
INSERT INTO public.users VALUES (11, 'user_1737180536434');
INSERT INTO public.users VALUES (12, 'user_1737180619381');
INSERT INTO public.users VALUES (13, 'user_1737180619380');
INSERT INTO public.users VALUES (14, 'user_1737180668567');
INSERT INTO public.users VALUES (15, 'user_1737180668566');
INSERT INTO public.users VALUES (16, 'c');
INSERT INTO public.users VALUES (17, 'user_1737180772287');
INSERT INTO public.users VALUES (18, 'user_1737180772286');
INSERT INTO public.users VALUES (19, 'user_1737180839667');
INSERT INTO public.users VALUES (20, 'user_1737180839666');
INSERT INTO public.users VALUES (21, 'user_1737180965043');
INSERT INTO public.users VALUES (22, 'user_1737180965042');
INSERT INTO public.users VALUES (23, 'user_1737180991726');
INSERT INTO public.users VALUES (24, 'user_1737180991725');
INSERT INTO public.users VALUES (25, 'user_1737181081508');
INSERT INTO public.users VALUES (26, 'user_1737181081507');
INSERT INTO public.users VALUES (27, 'user_1737181210018');
INSERT INTO public.users VALUES (28, 'user_1737181210017');
INSERT INTO public.users VALUES (29, 'user_1737181229499');
INSERT INTO public.users VALUES (30, 'user_1737181229498');
INSERT INTO public.users VALUES (31, 'user_1737181299004');
INSERT INTO public.users VALUES (32, 'user_1737181299003');
INSERT INTO public.users VALUES (33, 'user_1737181327199');
INSERT INTO public.users VALUES (34, 'user_1737181327198');
INSERT INTO public.users VALUES (35, 'user_1737181368609');
INSERT INTO public.users VALUES (36, 'user_1737181368608');
INSERT INTO public.users VALUES (37, 'user_1737181449663');
INSERT INTO public.users VALUES (38, 'user_1737181449662');
INSERT INTO public.users VALUES (39, 'user_1737181724859');
INSERT INTO public.users VALUES (40, 'user_1737181724858');
INSERT INTO public.users VALUES (41, 'user_1737181766919');
INSERT INTO public.users VALUES (42, 'user_1737181766918');
INSERT INTO public.users VALUES (43, 'user_1737181802042');
INSERT INTO public.users VALUES (44, 'user_1737181802041');
INSERT INTO public.users VALUES (45, 'user_1737181818823');
INSERT INTO public.users VALUES (46, 'user_1737181818822');
INSERT INTO public.users VALUES (47, 'user_1737181944587');
INSERT INTO public.users VALUES (48, 'user_1737181944586');
INSERT INTO public.users VALUES (49, 'user_1737182013194');
INSERT INTO public.users VALUES (50, 'user_1737182013193');
INSERT INTO public.users VALUES (51, 'user_1737182024401');
INSERT INTO public.users VALUES (52, 'user_1737182024400');
INSERT INTO public.users VALUES (53, 'user_1737182547281');
INSERT INTO public.users VALUES (54, 'user_1737182547280');
INSERT INTO public.users VALUES (55, 'user_1737182879473');
INSERT INTO public.users VALUES (56, 'user_1737182879472');
INSERT INTO public.users VALUES (57, 'user_1737182988021');
INSERT INTO public.users VALUES (58, 'user_1737182988020');
INSERT INTO public.users VALUES (59, 'user_1737183106178');
INSERT INTO public.users VALUES (60, 'user_1737183106177');
INSERT INTO public.users VALUES (61, 'user_1737183302734');
INSERT INTO public.users VALUES (62, 'user_1737183302733');
INSERT INTO public.users VALUES (63, 'user_1737183405172');
INSERT INTO public.users VALUES (64, 'user_1737183405171');
INSERT INTO public.users VALUES (65, 'user_1737183630919');
INSERT INTO public.users VALUES (66, 'user_1737183630918');
INSERT INTO public.users VALUES (67, 'a');
INSERT INTO public.users VALUES (68, 'b');
INSERT INTO public.users VALUES (69, 'user_1737183872627');
INSERT INTO public.users VALUES (70, 'user_1737183872626');
INSERT INTO public.users VALUES (71, 'user_1737183932818');
INSERT INTO public.users VALUES (72, 'user_1737183932817');


--
-- Name: user_games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_games_game_id_seq', 163, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 72, true);


--
-- Name: user_games user_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_games
    ADD CONSTRAINT user_games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: user_games user_games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_games
    ADD CONSTRAINT user_games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


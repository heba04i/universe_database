--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    radius numeric,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: noon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.noon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    mass numeric,
    has_rings boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(50) NOT NULL,
    agency character varying(50) NOT NULL,
    launch_year integer,
    is_active boolean NOT NULL
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.space_mission ALTER COLUMN space_mission_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.space_mission_space_mission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_from_earth numeric,
    is_visible boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Milky Way', 'Our home galaxy', 13600, true);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Andromeda', 'A nearby spiral galaxy', 10000, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Triangulum', 'A small spiral galaxy', 12000, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Whirlpool', 'A beautiful spiral galaxy', 8000, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Sombrero', 'A bright galaxy', 9000, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Pinwheel', 'A large spiral galaxy', 11000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Moon', 3, 1737.4, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Phobos', 4, 11.3, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Deimos', 4, 6.2, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Io', 5, 1821.6, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'Europa', 5, 1560.8, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Ganymede', 5, 2634.1, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Callisto', 5, 2410.3, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Titan', 6, 2574.7, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Enceladus', 6, 252.1, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Mimas', 6, 198.2, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Rhea', 6, 763.8, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Iapetus', 6, 734.5, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Dione', 6, 561.4, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'Tethys', 6, 531.1, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'Miranda', 7, 235.8, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Ariel', 7, 578.9, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Umbriel', 7, 584.7, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Titania', 7, 788.9, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Oberon', 7, 761.4, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Triton', 8, 1353.4, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Mercury', 1, 0.055, false);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Venus', 1, 0.815, false);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Earth', 1, 1.000, false);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'Mars', 1, 0.107, false);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Jupiter', 1, 317.8, true);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Saturn', 1, 95.2, true);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'Uranus', 1, 14.5, true);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'Neptune', 1, 17.1, true);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'Planet X', 2, 2.5, false);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'Planet Y', 3, 4.2, true);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'Planet Z', 4, 1.8, false);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'Planet A', 5, 3.1, true);


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission OVERRIDING SYSTEM VALUE VALUES (1, 'Apollo 11', 'NASA', 1969, false);
INSERT INTO public.space_mission OVERRIDING SYSTEM VALUE VALUES (2, 'Voyager 1', 'NASA', 1977, true);
INSERT INTO public.space_mission OVERRIDING SYSTEM VALUE VALUES (3, 'Artemis I', 'NASA', 2022, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Sun', 1, 0, true);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'Sirius', 1, 8.6, true);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'Vega', 2, 25, true);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'Polaris', 3, 323, true);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Betelgeuse', 4, 642, true);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Rigel', 5, 860, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: noon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.noon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon noon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT noon_name_key UNIQUE (name);


--
-- Name: moon noon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT noon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon noon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT noon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


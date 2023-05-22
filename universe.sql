--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

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
    name character varying(30),
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    length_in_cm integer,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    is_spherical boolean,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    length_in_cm integer,
    distance_from_earth_in_km numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: others; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.others (
    others_id integer NOT NULL,
    name character varying(30),
    description text,
    is_spherical boolean,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    length_in_cm integer,
    distance_from_earth_in_km numeric
);


ALTER TABLE public.others OWNER TO freecodecamp;

--
-- Name: others_others_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.others_others_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.others_others_id_seq OWNER TO freecodecamp;

--
-- Name: others_others_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.others_others_id_seq OWNED BY public.others.others_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    is_spherical boolean,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    lenght_in_cm integer,
    distance_from_earth_in_km numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    is_spherical boolean,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    length_in_cm integer,
    distance_from_earth_in_km numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: others others_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others ALTER COLUMN others_id SET DEFAULT nextval('public.others_others_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Also known as mesier 31: M31', false, 2, 770, 47, false);
INSERT INTO public.galaxy VALUES (2, 'DRACO II', 'Also known as draco', false, 1, 540, 37, false);
INSERT INTO public.galaxy VALUES (3, 'DRACO III', 'Also known as draco', false, 1, 540, 57, false);
INSERT INTO public.galaxy VALUES (4, 'Andro II', 'Known as Andro II', false, 3, 770, 48, false);
INSERT INTO public.galaxy VALUES (5, 'Andro III', NULL, false, 3, 765, 56, false);
INSERT INTO public.galaxy VALUES (6, 'Andro III', 'Known as Andro III', false, 4, 780, 49, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon I', 'Known as first Moon', false, false, 2, 47, 650);
INSERT INTO public.moon VALUES (2, 'Moon II', 'Known as Second Moon', false, false, 2, 57, 650);
INSERT INTO public.moon VALUES (3, 'Moon III', 'Known as Third Moon', false, false, 2, 67, 550);
INSERT INTO public.moon VALUES (4, 'Moon IV', 'Known as Fourth Moon', false, false, 3, 77, 550);
INSERT INTO public.moon VALUES (5, 'Moon V', 'Known as fifth Moon', false, false, 3, 87, 560);
INSERT INTO public.moon VALUES (6, 'Moon VI', 'Known as Sixth Moon', false, false, 3, 97, 550);
INSERT INTO public.moon VALUES (7, 'Moon VII', 'Known as Seventh Moon', false, false, 4, 37, 650);
INSERT INTO public.moon VALUES (8, 'Moon VIII', 'Known as Eight Moon', false, false, 3, 27, 560);
INSERT INTO public.moon VALUES (9, 'Moon IX', 'Known as Ninth Moon', false, false, 3, 46, 750);
INSERT INTO public.moon VALUES (10, 'Moon X', 'Known as Tenth Moon', false, false, 4, 56, 650);
INSERT INTO public.moon VALUES (11, 'Moon XI', 'Known as Eleventh Moon', false, false, 3, 66, 560);
INSERT INTO public.moon VALUES (12, 'Moon XII', 'Known as Twelveth Moon', false, false, 3, 76, 750);
INSERT INTO public.moon VALUES (13, 'Moon XII', 'Known as Thirteenth Moon', false, false, 4, 86, 650);
INSERT INTO public.moon VALUES (14, 'Moon XIV', 'Known as Fourteenth Moon', false, false, 3, 96, 560);
INSERT INTO public.moon VALUES (15, 'Moon XV', 'Known as fifteenth Moon', false, false, 3, 36, 750);
INSERT INTO public.moon VALUES (16, 'Moon XVI', 'Known as Sixteenth Moon', false, false, 4, 26, 650);
INSERT INTO public.moon VALUES (17, 'Moon XVII', 'Known as Seventeenth Moon', false, false, 3, 16, 560);
INSERT INTO public.moon VALUES (18, 'Moon XVIII', 'Known as Eighteenth Moon', false, false, 3, 45, 750);
INSERT INTO public.moon VALUES (19, 'Moon XIX', 'Known as Ninteenth Moon', false, false, 4, 55, 650);
INSERT INTO public.moon VALUES (20, 'Moon XX', 'Known as Twentieth Moon', false, false, 3, 65, 560);


--
-- Data for Name: others; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.others VALUES (1, 'Sun', 'The Sun', false, false, 650, 46, 7000);
INSERT INTO public.others VALUES (2, 'Jupitery', 'Planet Eleveth', false, false, 750, 56, 7500);
INSERT INTO public.others VALUES (3, 'Saturn_end', 'Planet Twelveth', false, false, 850, 66, 8000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'First Planet', false, false, 300, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second Planet', false, false, 250, 40, 2000);
INSERT INTO public.planet VALUES (3, 'Earth', 'Third Planet', true, true, 200, 50, 3000);
INSERT INTO public.planet VALUES (4, 'Mars', 'Fourth Planet', false, false, 150, 45, 1500);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Fifth Planet', false, false, 350, 55, 4500);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Sixth Planet', false, false, 450, 65, 5000);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh Planet', false, false, 500, 75, 5500);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Eight Planet', false, false, 550, 85, 6000);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Night Planet', false, false, 600, 95, 6500);
INSERT INTO public.planet VALUES (10, 'Asteroids', 'Planet Tenth', false, false, 650, 46, 7000);
INSERT INTO public.planet VALUES (11, 'Jupitery', 'Planet Eleveth', false, false, 750, 56, 7500);
INSERT INTO public.planet VALUES (12, 'Saturn_end', 'Planet Twelveth', false, false, 850, 66, 8000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'DRACO III', 'Also known as draco', false, false, 1, 37, 540, 1);
INSERT INTO public.star VALUES (2, 'DRACO II', 'Also known as draco II', false, false, 1, 46, 540, 2);
INSERT INTO public.star VALUES (4, 'Andro II', 'Known as Andro II', false, false, 3, 50, 700, 3);
INSERT INTO public.star VALUES (5, 'Star 5', 'Known as the fifth star', false, false, 2, 43, 550, 4);
INSERT INTO public.star VALUES (6, 'Star_6', 'Known as the sixth star', false, false, 2, 44, 560, 5);
INSERT INTO public.star VALUES (3, 'Star III', 'Known as third star', false, false, 3, 47, 650, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: others_others_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.others_others_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_length_in_cm_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_length_in_cm_key UNIQUE (length_in_cm);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_length_in_cm_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_length_in_cm_key UNIQUE (length_in_cm);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: others others_length_in_cm_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others
    ADD CONSTRAINT others_length_in_cm_key UNIQUE (length_in_cm);


--
-- Name: others others_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others
    ADD CONSTRAINT others_pkey PRIMARY KEY (others_id);


--
-- Name: planet planet_lenght_in_cm_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_lenght_in_cm_key UNIQUE (lenght_in_cm);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_length_in_cm_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_length_in_cm_key UNIQUE (length_in_cm);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--



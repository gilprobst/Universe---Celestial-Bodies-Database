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
-- Name: data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.data (
    name character varying(60) NOT NULL,
    description text,
    data_id integer NOT NULL
);


ALTER TABLE public.data OWNER TO freecodecamp;

--
-- Name: data_data_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.data_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_data_id_seq OWNER TO freecodecamp;

--
-- Name: data_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.data_data_id_seq OWNED BY public.data.data_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    has_life boolean,
    is_spherical boolean,
    galaxy_types character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    name character varying(60) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    has_life boolean,
    is_spherical boolean,
    planet_types character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: data data_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data ALTER COLUMN data_id SET DEFAULT nextval('public.data_data_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.data VALUES ('one', '1', 1);
INSERT INTO public.data VALUES ('Two', '2', 2);
INSERT INTO public.data VALUES ('Three', '3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (false, false, 'barred spiral', 2500, 2500000, 'Andromeda Galaxy', 'Andromeda', 2);
INSERT INTO public.galaxy VALUES (false, true, 'Spherical', 0, 0, 'Ball Galaxy', 'NGC-4622', 3);
INSERT INTO public.galaxy VALUES (false, false, 'Spiral', 0, 0, 'Black Eye Galaxy', 'NGC-4826', 4);
INSERT INTO public.galaxy VALUES (false, false, 'Intermidiate Spiral', 0, 0, 'Eye of God Galaxy', 'NGC-1232', 5);
INSERT INTO public.galaxy VALUES (false, false, 'Intermidiate Spiral Seyfert', 0, 52000000, 'Eye of Saron Galaxy', 'NGC-4151', 6);
INSERT INTO public.galaxy VALUES (true, false, 'Barred Spiral', 13000, 27000, 'Our Galaxy', 'Milky Way', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Io', 5, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Europa', 6, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Ganymede', 7, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Callisto', 8, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Amalthea', 9, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Himalia', 10, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Elara', 11, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Pasiphae', 12, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Sinope', 13, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Lysithea', 14, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Carme', 15, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Ananke', 16, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Leda', 17, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Thebe', 18, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Adrastea', 19, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Metis', 20, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Callirrhoe', 21, 5);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Our Moon', 'd', 1, 3);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Our Moon', 'Moon', 2, 3);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Phobos', 3, 4);
INSERT INTO public.moon VALUES (false, true, 0, 0, 'Another Moon', 'Deimos', 4, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (false, true, 'rocky', 4500, 0, 'Another Planet', 'Mercury', 1, 1);
INSERT INTO public.planet VALUES (false, true, 'rocky', 4500, 0, 'Another Planet', 'Venus', 2, 1);
INSERT INTO public.planet VALUES (true, true, 'rocky', 4500, 0, 'Another Planet', 'Earth', 3, 1);
INSERT INTO public.planet VALUES (false, true, 'rocky', 4500, 0, 'Another Planet', 'Mars', 4, 1);
INSERT INTO public.planet VALUES (false, true, 'gas', 4500, 0, 'Another Planet', 'Jupiter', 5, 1);
INSERT INTO public.planet VALUES (false, true, 'gas', 4500, 0, 'Another Planet', 'Saturn', 6, 1);
INSERT INTO public.planet VALUES (false, true, 'gas', 4500, 0, 'Another Planet', 'Neptune', 7, 1);
INSERT INTO public.planet VALUES (false, true, 'gas', 4500, 0, 'Another Planet', 'Uranus', 8, 1);
INSERT INTO public.planet VALUES (false, true, '?', 4500, 0, 'Another Planet', 'd', 9, 2);
INSERT INTO public.planet VALUES (false, true, '?', 4500, 0, 'Another Planet', 'b', 10, 2);
INSERT INTO public.planet VALUES (false, true, '?', 4500, 0, 'Another Planet', 'c', 11, 2);
INSERT INTO public.planet VALUES (false, true, '?', 4500, 0, 'Another Planet', 'd', 12, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (true, true, 4600, 0, 'Our Sun', 'Sun', 1, 1);
INSERT INTO public.star VALUES (false, true, 4800, 4, 'Next star', 'Proxima Centuri', 2, 1);
INSERT INTO public.star VALUES (false, true, 10000, 6, 'Barnards star. Ver old.', 'Barnards Star', 3, 1);
INSERT INTO public.star VALUES (false, true, 1000, 8, 'Another Star', 'Wolf 359', 4, 1);
INSERT INTO public.star VALUES (false, true, 0, 8, 'Another Star', 'Lalande 21185', 5, 1);
INSERT INTO public.star VALUES (false, true, 0, 10, 'Another Star', 'Ross 154', 6, 1);


--
-- Name: data_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.data_data_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: data data_data_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_data_id_key UNIQUE (data_id);


--
-- Name: data data_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_name_key UNIQUE (name);


--
-- Name: data data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_pkey PRIMARY KEY (data_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_active boolean,
    description text
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    distance_from_earth_in_million_light_years numeric(10,1),
    description text
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
    name character varying(30) NOT NULL,
    moon_types character varying(30),
    orbital_period_in_days double precision,
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types character varying(30),
    has_life boolean,
    total_moons integer,
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer,
    color character varying(30)
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A', true, 'Supermassive black hole at the center of the Milky Way galaxy.');
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', true, 'Stellar black hole in the Cygnus constellation, a powerful X-ray source.');
INSERT INTO public.black_hole VALUES (3, 'V616 Monocerotis', false, 'Candidate stellar black hole in the Monoceros constellation, part of a binary system.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', 2.5, 'Our closest galactic neighbor, visible to the naked eye on dark nights.');
INSERT INTO public.galaxy VALUES (2, 'Sombrero', 'Lenticular spiral', 28.0, 'Features a prominent central bulge and a thin disk with dark dust lanes.');
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 'Spiral', 21.0, 'One of the largest spiral galaxies in the night sky, with well-defined spiral arms.');
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 'Giant elliptical', 53.0, 'Home to a supermassive black hole at its center, with energetic jets of plasma.');
INSERT INTO public.galaxy VALUES (5, 'Antennae', 'Interacting/merging', 62.0, 'A spectacular collision between two galaxies, forming a complex and ever-changing structure.');
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'Spiral', 2.9, 'A smaller spiral galaxy with a bright central bulge and a disk with well-defined spiral arms.');
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'Spiral', 26.0, 'The Milky Way is thought to contain between 100 and 400 billion stars, and its mass is estimated to be between 1 and 1.5 trillion times the mass of the Sun.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 27.322, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Irregular', 0.319, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Irregular', 1.262, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic', 1.769, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy', 3.551, 5);
INSERT INTO public.moon VALUES (15, 'Ganymede', 'Icy', 7.155, 5);
INSERT INTO public.moon VALUES (16, 'Callisto', 'Icy', 16.69, 5);
INSERT INTO public.moon VALUES (17, 'Tethys', 'Icy', 1.888, 6);
INSERT INTO public.moon VALUES (18, 'Dione', 'Icy', 2.737, 6);
INSERT INTO public.moon VALUES (19, 'Rhea', 'Icy', 4.518, 6);
INSERT INTO public.moon VALUES (20, 'Titan', 'Icy', 15.945, 6);
INSERT INTO public.moon VALUES (21, 'Miranda', 'Irregular', 1.414, 7);
INSERT INTO public.moon VALUES (22, 'Ariel', 'Icy', 2.52, 7);
INSERT INTO public.moon VALUES (23, 'Umbriel', 'Icy', 4.144, 7);
INSERT INTO public.moon VALUES (24, 'Titania', 'Icy', 8.706, 7);
INSERT INTO public.moon VALUES (25, 'Oberon', 'Icy', 13.463, 7);
INSERT INTO public.moon VALUES (26, 'Triton', 'Icy', 5.877, 8);
INSERT INTO public.moon VALUES (27, 'Nereid', 'Irregular', 360.1, 8);
INSERT INTO public.moon VALUES (28, 'Caronte', 'Dwarf', 6.387, 16);
INSERT INTO public.moon VALUES (29, 'Nix', 'Irregular', 24.856, 16);
INSERT INTO public.moon VALUES (30, 'Hydra', 'Irregular', 38.206, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, 0, 9);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, 0, 9);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, 1, 9);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', false, 2, 9);
INSERT INTO public.planet VALUES (5, 'Jupier', 'Gas Giant', false, 80, 9);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', false, 83, 9);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Gas Giant', false, 27, 9);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Gas Giant', false, 14, 9);
INSERT INTO public.planet VALUES (9, 'Kleper-186f', 'Terrestrial', false, 1, 8);
INSERT INTO public.planet VALUES (10, 'Kleper-1649c', 'Terrestrial', false, 1, 7);
INSERT INTO public.planet VALUES (11, 'Kleper-452b', 'Terrestrial', false, 1, 6);
INSERT INTO public.planet VALUES (12, 'Kleper-442b', 'Terrestrial', false, 1, 5);
INSERT INTO public.planet VALUES (13, 'Kleper-160b', 'Terrestrial', false, 1, 4);
INSERT INTO public.planet VALUES (14, 'HD 10180G', 'Gas Giant', false, 2, 3);
INSERT INTO public.planet VALUES (15, 'VY Canis Majoris b', 'Gas Giant', false, 0, 1);
INSERT INTO public.planet VALUES (16, 'Pluto', 'Icy Dwarf', false, 5, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Mirach', 50, 'A pulsating red giant variable star, with its brightness changing over time.', 1, 'Red');
INSERT INTO public.star VALUES (4, 'Sombrero Galaxy Central Star', 1000, 'A yellow giant, the brightest star at the center of the Sombrero Galaxy.', 2, 'Yellow');
INSERT INTO public.star VALUES (5, 'Pinwheel Galaxy Central Star', 200, 'A blue giant, the brightest star at the center of the Pinwheel Galaxy.', 3, 'Blue');
INSERT INTO public.star VALUES (6, 'Cartwheel Galaxy Central Star', 15, 'A blue giant, the brightest star at the center of the Cartwheel Galaxy.', 4, 'Blue');
INSERT INTO public.star VALUES (7, 'Antennae Galaxies Stars', 10, 'A pair of blue stars, the brightest stars at the center of the Antennae Galaxies.', 5, 'Blue');
INSERT INTO public.star VALUES (8, 'Black Eye Galaxy Central Star', 100, 'A yellow giant, the brightest star at the center of the Black Eye Galaxy.', 6, 'Yellow');
INSERT INTO public.star VALUES (9, 'Sun', 4600, 'A yellow dwarf star, the source of light and heat for life on Earth.', 7, 'Yellow');
INSERT INTO public.star VALUES (1, 'VY Canis Majoris', 10, 'One of the largest stars known, with a diameter 1,400 times greater than the Sun.', 1, 'Red');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: black_hole black_hole_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_description_key UNIQUE (description);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


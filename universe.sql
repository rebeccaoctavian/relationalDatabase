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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    planet_id integer,
    name character varying(40) NOT NULL,
    username character varying(40) NOT NULL,
    age integer
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_types character varying(40),
    description text,
    age_in_billion numeric(6,2)
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
    planet_id integer,
    name character varying(40) NOT NULL,
    description text,
    is_pherical boolean
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
    star_id integer,
    name character varying(40) NOT NULL,
    age_in_billion numeric(6,2),
    has_life boolean
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
    galaxy_id integer,
    name character varying(40) NOT NULL,
    star_class character varying(40),
    lifetime_in_million integer
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


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
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 7, 'Jack', 'jackiee', 40);
INSERT INTO public.astronaut VALUES (2, 6, 'Yasmine', 'minelo_we', 52);
INSERT INTO public.astronaut VALUES (3, 5, 'Becky Pamelo', 'bapelo', 38);
INSERT INTO public.astronaut VALUES (4, 5, 'Austine Lanapy', 'lanapy_austin', 42);
INSERT INTO public.astronaut VALUES (5, 4, 'Natasqy Haliqy', 'naliqy', 33);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'NGC 5', 'Elliptical', 'The NGC 5s location is 00 07 48.898 (R.A.) and +35 21 44.46 (Dec.).', 10.01);
INSERT INTO public.galaxy VALUES (2, 'NGC 2337', 'Irregullar', 'irregular galaxy that resides 25 million light-years away in the constellation of Lynx.', 12.08);
INSERT INTO public.galaxy VALUES (3, 'IC 4710', 'Spiral', 'Galaxy in southern constellation of Pavo, roughly 34 million light-years away.', 15.02);
INSERT INTO public.galaxy VALUES (4, 'Milky way', 'Spiral', 'The Milky Way is the galaxy that includes our Solar System,', 13.61);
INSERT INTO public.galaxy VALUES (5, 'NGC 67', 'Elliptical', 'NGC 67 is an Elliptical Galaxy in the constellation of Andromeda.', 10.08);
INSERT INTO public.galaxy VALUES (6, 'IC 559', 'Irregullar', 'classified as a type Sm galaxy.', 12.05);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 2, 'Full Wolf Moon', 'The howling of wolves was often heard at this time of year.', true);
INSERT INTO public.moon VALUES (2, 2, 'Full Snow Moon', 'February is typically a time of heavy snowfall.', true);
INSERT INTO public.moon VALUES (3, 1, 'Full Worm Moon', 'Traditionally thought to be named after the earthworms of warming spring soil.', true);
INSERT INTO public.moon VALUES (4, 1, 'Full Pink Moon', 'This full Moon heralded the appearance of the moss pink.', true);
INSERT INTO public.moon VALUES (5, 1, 'New Moon', 'If the Moon path crosses the plane of Earth orbit around the Sun.', false);
INSERT INTO public.moon VALUES (6, 1, 'Waxing Crescent Moon', 'The Crescent phases can be a good time to see Earthshine.', false);
INSERT INTO public.moon VALUES (7, 3, 'Full Flower Moon', 'Flowers spring forth in abundance this month.', true);
INSERT INTO public.moon VALUES (8, 3, 'First Quarter Moon', 'Look for the First Quarter Moon in the blue afternoon sky.', false);
INSERT INTO public.moon VALUES (9, 3, 'Waxing Gibbous Moon', 'A couple of days into the Waxing Gibbous Moon phase, you can see the Golden Handle.', false);
INSERT INTO public.moon VALUES (10, 4, 'Full Strawberry Moon', 'This was the time to gather ripening strawberries in what is now the northeastern United States.', true);
INSERT INTO public.moon VALUES (11, 5, 'Full Buck Moon', 'At this time, a bucks (male deers) antlers are in full growth mode.', true);
INSERT INTO public.moon VALUES (12, 5, 'Waning Gibbous Moon', 'Moving from Full Moon to Third Quarter Moon', false);
INSERT INTO public.moon VALUES (13, 6, 'Full Sturgeon Moon', 'The sturgeon of the Great Lakes and Lake Champlain were said to be most readily caught during this full Moon.', true);
INSERT INTO public.moon VALUES (14, 6, 'Third Quarter Moon', 'The Third Quarter Moon begins the last quarter of the lunar cycle.', false);
INSERT INTO public.moon VALUES (15, 6, 'Waning Crescent Moon', 'The Crescent phases can be a good time to see Earthshine.', false);
INSERT INTO public.moon VALUES (16, 2, 'Full Moon', 'Full moon occurs when the Moon is on the opposite side of Earth from the Sun.', true);
INSERT INTO public.moon VALUES (17, 2, 'Harvest Moon', 'In 2022, the Harvest Moon is the full Moon that occurs closest to the September equinox.', true);
INSERT INTO public.moon VALUES (18, 2, 'Full Hunters Moon', 'This is the month when the game is fattened up for winter.', true);
INSERT INTO public.moon VALUES (19, 2, 'Full Beaver Moon', 'This was the time when beavers finished preparations for winter and retreated into their lodges.', true);
INSERT INTO public.moon VALUES (20, 2, 'Full Cold Moon', 'This is the month when the winter cold fastens.', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 4.50, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 4.50, false);
INSERT INTO public.planet VALUES (3, 2, 'Earth', 4.54, true);
INSERT INTO public.planet VALUES (4, 2, 'Mars', 4.60, false);
INSERT INTO public.planet VALUES (5, 3, 'Jupiter', 4.60, false);
INSERT INTO public.planet VALUES (6, 4, 'Saturn', 4.50, false);
INSERT INTO public.planet VALUES (7, 5, 'Uranus', 4.50, false);
INSERT INTO public.planet VALUES (8, 6, 'Neptune', 4.50, false);
INSERT INTO public.planet VALUES (9, 2, 'CoRoT-7b', 1.50, false);
INSERT INTO public.planet VALUES (10, 2, 'Gliese 581', 2.00, false);
INSERT INTO public.planet VALUES (11, 3, 'Kepler-186f', 4.00, false);
INSERT INTO public.planet VALUES (12, 4, 'Kepler-452b', 6.00, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, '10 Lacerta', 'O', 10);
INSERT INTO public.star VALUES (2, 2, 'Rigel', 'B', 100);
INSERT INTO public.star VALUES (3, 6, 'Sirius', 'A', 1000);
INSERT INTO public.star VALUES (4, 3, 'Procyon', 'F', 3000);
INSERT INTO public.star VALUES (5, 1, 'Sun', 'G', 10000);
INSERT INTO public.star VALUES (6, 4, 'Arcturus', 'K', 50000);
INSERT INTO public.star VALUES (7, 5, 'Betelgeuse', 'M', 200000);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


--
-- Name: astronaut astronaut_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_username_key UNIQUE (username);


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
-- Name: astronaut astronaut_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


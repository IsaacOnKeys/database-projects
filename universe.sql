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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying,
    blackhole_id integer NOT NULL,
    description text,
    galaxy_id integer,
    is_hurtling_toward_earth boolean NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    number_of_stars_in_billions integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    is_spherical boolean,
    planet_id integer,
    description character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    is_spherical boolean,
    planet_type text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    number_of_planets integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('Sagittarius A', 1, 'the Galactic Center of the Milky Way', 1, false);
INSERT INTO public.blackhole VALUES ('B023-G078', 2, 'supermassive black hole', 2, false);
INSERT INTO public.blackhole VALUES ('Swift J164449.3+573451', 3, 'center of a small galaxy in the Draco constellation', 4, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home to our Earth and sun', 13600, 400000);
INSERT INTO public.galaxy VALUES (2, 'Aandromeda', 'Closest spiral galaxy to the Milky Way', 10000, 1000);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 'Closest Galaxy to the Milky way', 10000, 1000);
INSERT INTO public.galaxy VALUES (4, 'Draco II', 'Second closest to the Milky Way', 10000, 1000);
INSERT INTO public.galaxy VALUES (5, 'Tucana III', 'Third closest to the Milky Way', 10000, 1000);
INSERT INTO public.galaxy VALUES (6, 'Segue 1', 'Fourth closest to the Milky Way', 10000, 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 2, 'our moon- unusually large');
INSERT INTO public.moon VALUES (2, 'Phobos', false, 5, 'larger innermost moon- and is thought to be a rubble pile held together by a dark thin crust');
INSERT INTO public.moon VALUES (3, 'Deimos', false, 5, 'smaller outermost moon whose orbit is slowly expanding');
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 6, 'the only mooon in the solar system to possess a magnetic field- has a tenuous oxygen atmosphere- and is believed to have six times the water on Earth in the form of several subsurface saltwater oceans');
INSERT INTO public.moon VALUES (5, 'Callisto', true, 6, 'comprised of equal parts rock and ice and is geologically dead- with a surface covered with the oldest craters in the solar system');
INSERT INTO public.moon VALUES (6, 'Io', true, 6, 'hottest moon in the solar system- recording up to 2,600°F around its 400 volcanoes');
INSERT INTO public.moon VALUES (7, 'Europa', true, 6, 'ice moon possessing a subsurface water ocean and cryogeysers');
INSERT INTO public.moon VALUES (8, 'Amalthea', false, 6, 'Dust ejected from surface formed the Amalthea Gossamer Ring around Jupiter');
INSERT INTO public.moon VALUES (9, 'Titan', true, 7, 'the only moon known in the solar system to have a dense atmosphere and bodies of liquid on its surface');
INSERT INTO public.moon VALUES (10, 'Rhea', true, 7, 'composed of 75% water ice and 25% rocky material- has a thin oxygen atmosphere');
INSERT INTO public.moon VALUES (11, 'Iapetus', false, 7, 'has a massive equatorial ridge running three-quarters of the way around the moon- giving it the appearance of a walnut');
INSERT INTO public.moon VALUES (12, 'Hyperion', false, 7, 'surface is composed of mostly water ice and is covered with deep- sharp-edged craters that give it a sponge-like appearance');
INSERT INTO public.moon VALUES (13, 'Titania', true, 3, 'surface is composed of equal amounts of water ice and rock- is believed to have a subsurface liquid water ocean. Has a thin carbon dioxide atmosphere');
INSERT INTO public.moon VALUES (14, 'Oberon', true, 3, 'surface is composed of equal amounts of water ice and rock- is believed to have a subsurface liquid water ocean');
INSERT INTO public.moon VALUES (15, 'Umbriel', true, 3, 'surface is composed of equal amounts of water ice and rock and is blue in color');
INSERT INTO public.moon VALUES (16, 'Ariel', true, 3, 'surface is composed of equal amounts of water ice and rock');
INSERT INTO public.moon VALUES (17, 'Miranda', false, 3, 'surface is composed of mostly water ice across a patchwork of broken and tilted terrain and the largest known cliff in the solar system at over 3 miles in height');
INSERT INTO public.moon VALUES (18, 'Triton', true, 8, 'thought to have been a dwarf planet captured by Neptune from the Kuiper belt');
INSERT INTO public.moon VALUES (19, 'Proteus', false, 8, 'one of the darkest objects in the solar system and reflects only 6-10% of light');
INSERT INTO public.moon VALUES (20, 'Larissa', false, 8, 'likely a rubble pile that has re-accreted from fragments of the original moons of Neptune that collided after the moon Triton was captured');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (2, 'Earth', true, 'ours', true, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', true, 'ice giant', false, 1);
INSERT INTO public.planet VALUES (4, 'Venus', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (5, 'Mars', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (9, 'Jupiter', true, 'classical', false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', true, 'classical', NULL, 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', true, 'sub-earth', NULL, 2);
INSERT INTO public.planet VALUES (12, 'Luhman 16 B', NULL, 'exoplanet', NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Earths sun', 45000, 9, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'flare star part of Alpha Centauri', 4850, 3, 1);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 'Third brightest star & part of Alpha Centauri', 9200, 1, 1);
INSERT INTO public.star VALUES (4, 'Toliman', 'Smallest planet in Alpha Centauri', 53000, 1, 1);
INSERT INTO public.star VALUES (5, 'Barnards Star', 'flare star', 10000, 1, 1);
INSERT INTO public.star VALUES (6, 'Luhman 16', 'Binary system containing A and B', 500, 1, 1);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


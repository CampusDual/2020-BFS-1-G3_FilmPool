--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-02-03 11:00:44

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

DROP DATABASE cd03;
--
-- TOC entry 3124 (class 1262 OID 16389)
-- Name: cd03; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cd03 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect cd03

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 199 (class 1259 OID 19439)
-- Name: cast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."cast" (
    cast_id integer NOT NULL,
    cast_name character varying(100),
    cast_birth_date date,
    cast_dead_date date,
    cast_birth_place character varying(100),
    cast_nationality character varying(100),
    cast_pic character varying(1000)
);


--
-- TOC entry 198 (class 1259 OID 19437)
-- Name: actors_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 198
-- Name: actors_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public."cast".cast_id;


--
-- TOC entry 207 (class 1259 OID 19501)
-- Name: chapters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chapters (
    chapter_id integer NOT NULL,
    chapter_number integer,
    chapter_plot character varying(1000),
    season_id integer
);


--
-- TOC entry 203 (class 1259 OID 19463)
-- Name: content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content (
    content_id integer NOT NULL,
    content_name character varying(100),
    content_duration integer,
    content_nationality character varying(100),
    content_release_date date,
    studio_id integer,
    genre_id integer,
    content_plot character varying(1000),
    content_poster_path character varying(1000),
    content_total_vote integer,
    content_total_rating integer,
    director_id integer,
    content_trailer character varying(100),
    content_type integer
);


--
-- TOC entry 205 (class 1259 OID 19493)
-- Name: content_actors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_actors (
    content_actors_id integer NOT NULL,
    content_id integer,
    actor_id integer,
    character_name character varying(100)
);


--
-- TOC entry 201 (class 1259 OID 19455)
-- Name: genres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    genre_name character varying(100)
);


--
-- TOC entry 200 (class 1259 OID 19453)
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genres_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 200
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;


--
-- TOC entry 202 (class 1259 OID 19461)
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 202
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.content.content_id;


--
-- TOC entry 209 (class 1259 OID 19512)
-- Name: seasons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.seasons (
    season_id integer NOT NULL,
    season_number integer,
    season_plot character varying(1000),
    show_id integer
);


--
-- TOC entry 204 (class 1259 OID 19491)
-- Name: shows_actors_show_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shows_actors_show_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 204
-- Name: shows_actors_show_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shows_actors_show_actor_id_seq OWNED BY public.content_actors.content_actors_id;


--
-- TOC entry 206 (class 1259 OID 19499)
-- Name: shows_chapters_shows_chapters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shows_chapters_shows_chapters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 206
-- Name: shows_chapters_shows_chapters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shows_chapters_shows_chapters_id_seq OWNED BY public.chapters.chapter_id;


--
-- TOC entry 208 (class 1259 OID 19510)
-- Name: shows_seasons_show_season_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shows_seasons_show_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 208
-- Name: shows_seasons_show_season_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shows_seasons_show_season_id_seq OWNED BY public.seasons.season_id;


--
-- TOC entry 211 (class 1259 OID 19523)
-- Name: studios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.studios (
    studio_id integer NOT NULL,
    studio_name character varying(100)
);


--
-- TOC entry 210 (class 1259 OID 19521)
-- Name: studios_studio_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.studios_studio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 210
-- Name: studios_studio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.studios_studio_id_seq OWNED BY public.studios.studio_id;


--
-- TOC entry 228 (class 1259 OID 68775)
-- Name: ti18n; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n (
    id_i18n integer NOT NULL,
    class_name character varying(150),
    i18n_description character varying(250)
);


--
-- TOC entry 227 (class 1259 OID 68773)
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.ti18n ALTER COLUMN id_i18n ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.ti18n_id_i18n_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 68783)
-- Name: ti18n_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n_value (
    id_i18n_value integer NOT NULL,
    id_i18n integer NOT NULL,
    "KEY" character varying(250),
    es_es character varying(10485760),
    en_us character varying(10485760),
    gl_es character varying(10485760)
);


--
-- TOC entry 229 (class 1259 OID 68781)
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.ti18n_value ALTER COLUMN id_i18n_value ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.ti18n_value_id_i18n_value_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 68755)
-- Name: trequest_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trequest_statistics (
    id_request_statistics integer NOT NULL,
    service_name character varying(255),
    method_name character varying(50),
    user_name character varying(50),
    execution_date date,
    execution_time integer,
    method_params character varying(5000),
    service_exception character varying(5000)
);


--
-- TOC entry 221 (class 1259 OID 68731)
-- Name: trole; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole (
    id_rolename integer NOT NULL,
    rolename character varying(255),
    xmlclientpermission character varying(10485760)
);


--
-- TOC entry 220 (class 1259 OID 68729)
-- Name: trole_id_rolename_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.trole ALTER COLUMN id_rolename ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.trole_id_rolename_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 68793)
-- Name: trole_server_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole_server_permission (
    id_role_server_permission integer NOT NULL,
    id_rolename integer,
    id_server_permission integer
);


--
-- TOC entry 231 (class 1259 OID 68791)
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.trole_server_permission ALTER COLUMN id_role_server_permission ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.trole_server_permission_id_role_server_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 68744)
-- Name: tserver_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tserver_permission (
    id_server_permission integer NOT NULL,
    permission_name character varying(10485760)
);


--
-- TOC entry 222 (class 1259 OID 68742)
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.tserver_permission ALTER COLUMN id_server_permission ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tserver_permission_id_server_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 68765)
-- Name: tsetting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tsetting (
    id_setting integer NOT NULL,
    setting_key character varying(10485760),
    setting_value character varying(10485760),
    setting_comment character varying(10485760)
);


--
-- TOC entry 225 (class 1259 OID 68763)
-- Name: tsetting_id_setting_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.tsetting ALTER COLUMN id_setting ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tsetting_id_setting_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 68718)
-- Name: tuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser (
    user_ character varying(50) NOT NULL,
    password character varying(50),
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    nif character varying(50),
    userblocked timestamp without time zone,
    lastpasswordupdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    firstlogin boolean DEFAULT true
);


--
-- TOC entry 218 (class 1259 OID 68705)
-- Name: tuser_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(10485760)
);


--
-- TOC entry 217 (class 1259 OID 68695)
-- Name: tuser_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_role (
    id_user_role integer NOT NULL,
    id_rolename integer,
    user_ character varying(50)
);


--
-- TOC entry 216 (class 1259 OID 68693)
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.tuser_role ALTER COLUMN id_user_role ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tuser_role_id_user_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 19547)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(100),
    user_password character varying(100),
    user_registration_date date,
    user_birth_date date,
    user_email_adress character varying(100),
    user_address character varying(100),
    user_town character varying(100),
    user_nationality character varying(100)
);


--
-- TOC entry 215 (class 1259 OID 19560)
-- Name: users_contenido_ratings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_contenido_ratings (
    user_contenido_rating_id integer NOT NULL,
    user_id integer,
    movie_id integer,
    rating integer
);


--
-- TOC entry 197 (class 1259 OID 19431)
-- Name: users_contenido_wishlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_contenido_wishlist (
    user_contenido_whishlist_id integer NOT NULL,
    user_id integer,
    movie_id integer
);


--
-- TOC entry 214 (class 1259 OID 19558)
-- Name: users_movies_ratings_user_movie_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_movies_ratings_user_movie_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_movies_ratings_user_movie_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_movies_ratings_user_movie_rating_id_seq OWNED BY public.users_contenido_ratings.user_contenido_rating_id;


--
-- TOC entry 196 (class 1259 OID 19429)
-- Name: users_movies_wishlist_user_movie_whishlist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_movies_wishlist_user_movie_whishlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 196
-- Name: users_movies_wishlist_user_movie_whishlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_movies_wishlist_user_movie_whishlist_id_seq OWNED BY public.users_contenido_wishlist.user_contenido_whishlist_id;


--
-- TOC entry 212 (class 1259 OID 19545)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 212
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 2895 (class 2604 OID 19442)
-- Name: cast cast_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."cast" ALTER COLUMN cast_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 19504)
-- Name: chapters chapter_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chapters ALTER COLUMN chapter_id SET DEFAULT nextval('public.shows_chapters_shows_chapters_id_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 19466)
-- Name: content content_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content ALTER COLUMN content_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 19496)
-- Name: content_actors content_actors_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_actors ALTER COLUMN content_actors_id SET DEFAULT nextval('public.shows_actors_show_actor_id_seq'::regclass);


--
-- TOC entry 2896 (class 2604 OID 19458)
-- Name: genres genre_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);


--
-- TOC entry 2900 (class 2604 OID 19515)
-- Name: seasons season_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seasons ALTER COLUMN season_id SET DEFAULT nextval('public.shows_seasons_show_season_id_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 19526)
-- Name: studios studio_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.studios ALTER COLUMN studio_id SET DEFAULT nextval('public.studios_studio_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 19550)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 19563)
-- Name: users_contenido_ratings user_contenido_rating_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_ratings ALTER COLUMN user_contenido_rating_id SET DEFAULT nextval('public.users_movies_ratings_user_movie_rating_id_seq'::regclass);


--
-- TOC entry 2894 (class 2604 OID 19434)
-- Name: users_contenido_wishlist user_contenido_whishlist_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_wishlist ALTER COLUMN user_contenido_whishlist_id SET DEFAULT nextval('public.users_movies_wishlist_user_movie_whishlist_id_seq'::regclass);


--
-- TOC entry 3085 (class 0 OID 19439)
-- Dependencies: 199
-- Data for Name: cast; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."cast" VALUES (26, 'Horst Buchholz', '1933-12-04', '2003-03-03', 'Berlin', 'DE', 'https://live.staticflickr.com/2275/2304252157_f193dd42ac_w.jpg');
INSERT INTO public."cast" VALUES (1, 'Brad Pitt', '1963-12-18', NULL, 'Shawne', 'USA', 'https://live.staticflickr.com/5313/14525468044_f0eca763d3_n.jpg');
INSERT INTO public."cast" VALUES (2, 'Bryan Cranston', '1956-03-07', NULL, 'Hollywood', 'USA', 'https://live.staticflickr.com/4267/35354841466_bf29e5177f_b.jpg');
INSERT INTO public."cast" VALUES (3, 'Frankie Muniz', '1985-12-05', NULL, 'New-Jersey', 'USA', 'https://live.staticflickr.com/3583/3397678730_4f934c8b35_h.jpg');
INSERT INTO public."cast" VALUES (4, 'Jane Kaczmarek', '1955-12-21', NULL, 'Milwaukee', 'USA', 'https://live.staticflickr.com/3265/3111139682_2bb5aa036f_k.jpg');
INSERT INTO public."cast" VALUES (5, 'Justin Berfield', '1986-02-25', NULL, 'California', 'USA', 'https://live.staticflickr.com/2666/4101606996_7e41274498_b.jpg');
INSERT INTO public."cast" VALUES (6, 'Erik Per Sullivan', '1991-07-12', NULL, 'Worcester', 'USA', 'https://live.staticflickr.com/3387/3335293641_fdaee3b777.jpg');
INSERT INTO public."cast" VALUES (7, 'Christopher Masterson', '1980-01-22', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/1268/4709337337_cf5ef3efc9.jpg');
INSERT INTO public."cast" VALUES (8, 'Michael J. Fox', '1961-06-09', NULL, 'Edmonton', 'CA', 'https://live.staticflickr.com/7513/15573932733_c85c41db22_m.jpg');
INSERT INTO public."cast" VALUES (9, 'Christopher Lloyd', '1938-09-22', NULL, 'Stamford', 'USA', 'https://live.staticflickr.com/5156/7378135438_b225dc3ac0.jpg');
INSERT INTO public."cast" VALUES (10, 'Lea Thompson', '1961-05-31', NULL, 'Rochester', 'USA', 'https://live.staticflickr.com/2634/4169849502_e946baaa67.jpg');
INSERT INTO public."cast" VALUES (11, 'Chazz Palminteri', '1952-05-15', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/7077/13873376233_45d3b3b3c3_k.jpg');
INSERT INTO public."cast" VALUES (12, 'Robert De Niro', '1943-08-17', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/3259/2795388437_9af9587664_w.jpg');
INSERT INTO public."cast" VALUES (13, 'Lillo Brancato', '1976-08-30', NULL, 'Bogota', 'COL', 'https://imagenes.elpais.com/resizer/cF10w_Z5eX5C4NefDX1jZ9vJG3w=/768x0/arc-anglerfish-eu-central-1-prod-prisa.s3.amazonaws.com/public/FUOMZORYKSF2KD4KX4IDSKK7HA.jpg');
INSERT INTO public."cast" VALUES (14, 'Joe Pesci', '1943-02-09', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/4004/4322155415_1c10d4733c.jpg');
INSERT INTO public."cast" VALUES (15, 'Quentin Tarantino', '1963-03-27', NULL, 'Knoxville', 'USA', 'https://live.staticflickr.com/5788/23602040045_9791807577.jpg');
INSERT INTO public."cast" VALUES (16, 'John Travolta', '1954-02-18', NULL, 'New-Jersey', 'USA', 'https://live.staticflickr.com/2064/2261749812_e22edf9c8d.jpg');
INSERT INTO public."cast" VALUES (17, 'Uma Thurman', '1970-04-29', NULL, 'Massachusetts', 'USA', 'https://live.staticflickr.com/43/86106072_64a8923600.jpg');
INSERT INTO public."cast" VALUES (18, 'Samuel L. Jackson', '1948-12-21', NULL, 'Washington D. C', 'USA', 'https://live.staticflickr.com/3606/3536049417_eff708395b_k.jpg');
INSERT INTO public."cast" VALUES (19, 'Al Pacino', '1940-04-25', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/4660/39403105424_e38624fe4f_k.jpg');
INSERT INTO public."cast" VALUES (20, 'James Caan', '1940-03-26', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/6043/6348096587_ae0bae365d_w.jpg');
INSERT INTO public."cast" VALUES (21, 'Marlon Brando', '1924-04-03', '2004-07-01', 'Nebraska', 'USA', 'https://live.staticflickr.com/886/41426275122_8775a4a3a1.jpg');
INSERT INTO public."cast" VALUES (22, 'Robert Duvall', '1931-01-05', NULL, 'California', 'USA', 'https://live.staticflickr.com/2624/3808107833_f787e77a88_w.jpg');
INSERT INTO public."cast" VALUES (23, 'Roberto Benigni', '1952-10-27', NULL, 'Manciano', 'IT', 'https://live.staticflickr.com/4346/36761650352_350c4ed18c_k.jpg');
INSERT INTO public."cast" VALUES (24, 'Giorgio Cantarini', '1992-04-12', NULL, 'Orvieto', 'IT', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOdxDMAEqftoJsJ262NAiypqqxw92_C629WA&usqp=CAU');
INSERT INTO public."cast" VALUES (25, 'Nicoletta Braschi', '1960-04-19', NULL, 'Cesena', 'IT', 'https://live.staticflickr.com/5600/15361224529_47c86b3d1d_k.jpg');
INSERT INTO public."cast" VALUES (27, 'Linda Hamilton', '1956-09-26', NULL, 'Maryland', 'USA', 'https://live.staticflickr.com/3120/3113497983_6f53deb0e5.jpg');
INSERT INTO public."cast" VALUES (28, 'John Paul Salapatek', '1959-06-16', NULL, 'Illinois', 'USA', 'https://www.aullidos.com/imagenes/articulos/nenes/nene-6.jpg');
INSERT INTO public."cast" VALUES (29, 'Peter Horton', '1953-08-20', NULL, 'Washington', 'USA', 'https://live.staticflickr.com/104/254199408_957eedd87b_k.jpg');
INSERT INTO public."cast" VALUES (30, 'R. G. Armstrong', '1917-04-07', '2012-07-27', 'Alabama', 'USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgwNERhXcFDTHQfXWK4snGoRWELKmtOm49hA&usqp=CAU');
INSERT INTO public."cast" VALUES (31, 'Salma Hayek', '1966-09-02', NULL, 'Coatzacoalcos', 'MX', 'https://live.staticflickr.com/7648/28212182315_398116ab49.jpg');
INSERT INTO public."cast" VALUES (32, 'Kevin Kline', '1947-10-24', NULL, 'Misuri', 'USA', 'https://live.staticflickr.com/7109/7537610476_f8546c55b6.jpg');
INSERT INTO public."cast" VALUES (33, 'Bai Ling', '1966-10-10', NULL, 'Chengdu', 'CN', 'https://live.staticflickr.com/39/80663488_31391f9a99.jpg');
INSERT INTO public."cast" VALUES (34, 'Will Smith', '1968-09-25', NULL, 'Pensilvania', 'USA', 'https://live.staticflickr.com/4054/4711437820_a529b4f030.jpg');
INSERT INTO public."cast" VALUES (35, 'David Carradine', '1936-12-08', '2009-06-03', 'Bangkok', 'TH', 'https://live.staticflickr.com/3663/3595018843_ff8dc04478.jpg');
INSERT INTO public."cast" VALUES (36, 'Daryl Hannah', '1960-12-03', NULL, 'Illinois', 'USA', 'https://live.staticflickr.com/6068/6124990090_a18972aeef_n.jpg');
INSERT INTO public."cast" VALUES (37, 'Vivica A. Fox', '1964-07-30', NULL, 'Indiana', 'USA', 'https://live.staticflickr.com/1480/24159041159_51e9ac8cb4_b.jpg');
INSERT INTO public."cast" VALUES (38, 'Matt Damon', '1970-10-08', NULL, 'Massachusetts', 'USA', 'https://live.staticflickr.com/3054/2919825282_5048dbef8e_n.jpg');
INSERT INTO public."cast" VALUES (39, 'Edward Norton', '1969-08-18', NULL, 'Massachusetts', 'USA', 'https://live.staticflickr.com/4003/4309131829_07a8a8154f_k.jpg');
INSERT INTO public."cast" VALUES (40, 'Gretchen Mol', '1972-11-08', NULL, 'Connecticut', 'USA', 'https://live.staticflickr.com/5251/5420287979_7feb6c7963_k.jpg');
INSERT INTO public."cast" VALUES (41, 'John Malkovich', '1953-12-09', NULL, 'Illinois', 'USA', 'https://live.staticflickr.com/3031/2831742657_9c07624200.jpg');
INSERT INTO public."cast" VALUES (42, 'Liam Neeson', '1952-06-07', NULL, 'Ballymena', 'GB', 'https://live.staticflickr.com/4056/5143103053_2222918683.jpg');
INSERT INTO public."cast" VALUES (43, 'Ben Kingsley', '1943-12-31', NULL, 'Snainton', 'GB', 'https://live.staticflickr.com/5083/5338112724_b1a2d7b6e4_w.jpg');
INSERT INTO public."cast" VALUES (44, 'Ralph Fiennes', '1962-12-22', NULL, 'Ipswich', 'GB', 'https://live.staticflickr.com/3443/3732791059_50fbd13b15_h.jpg');
INSERT INTO public."cast" VALUES (45, 'Embeth Davidtz', '1965-08-11', NULL, 'Indiana', 'USA', 'https://live.staticflickr.com/4016/4336802523_b916764714_w.jpg');
INSERT INTO public."cast" VALUES (46, 'Aaron Paul', '1979-08-27', NULL, 'Idaho', 'USA', 'https://live.staticflickr.com/65535/48889945247_1f1bab3a06_b.jpg');
INSERT INTO public."cast" VALUES (47, 'Anna Gunn', '1968-08-11', NULL, 'Ohio', 'USA', 'https://live.staticflickr.com/7358/12934024863_7e88ed7a99_w.jpg');
INSERT INTO public."cast" VALUES (48, 'Dean Norris', '1963-04-08', NULL, 'Indiana', 'USA', 'https://live.staticflickr.com/4402/35611779493_12f059b2aa.jpg');
INSERT INTO public."cast" VALUES (49, 'James Gandolfini', '1961-09-18', '2013-06-27', 'New-Jersey', 'USA', 'https://live.staticflickr.com/3784/9087615443_528a472209_k.jpg');
INSERT INTO public."cast" VALUES (50, 'Edie Falco', '1963-07-05', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/4002/4452644083_b8e92a96b6_k.jpg');
INSERT INTO public."cast" VALUES (51, 'Michael Imperioli', '1966-03-26', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/1601/24423592402_d831d48e44_k.jpg');
INSERT INTO public."cast" VALUES (52, 'Lorraine Bracco', '1954-10-02', NULL, 'New-York', 'USA', 'https://live.staticflickr.com/4063/4322206239_9f40679d53_w.jpg');
INSERT INTO public."cast" VALUES (53, 'Juanjo Artero', '1965-06-27', NULL, 'Madrid', 'ES', 'https://live.staticflickr.com/5171/5583599272_4192bd58fc_w.jpg');
INSERT INTO public."cast" VALUES (54, 'Pilar Torres', '1962-08-14', NULL, 'Madrid', 'ES', 'https://live.staticflickr.com/150/416586187_1400ab81ea.jpg');
INSERT INTO public."cast" VALUES (55, 'Miguel Joven', '1973-01-15', NULL, 'Lubeca', 'DE', 'https://live.staticflickr.com/8471/8427507280_6b42cd15f0_z.jpg');
INSERT INTO public."cast" VALUES (56, 'Miguel Ángel Valero', '1971-12-22', NULL, 'Madrid', 'ES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8I1Eg0jmiEwr6cMiTxKj2BKZ13OiUjxhZ9w&usqp=CAU');
INSERT INTO public."cast" VALUES (57, 'Marilyn Monroe', '1926-06-01', '1962-08-04', 'Los Angeles', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Marilyn_Monroe%2C_Photoplay_1953.jpg/220px-Marilyn_Monroe%2C_Photoplay_1953.jpg');
INSERT INTO public."cast" VALUES (58, 'Jack Lemmon', '1925-02-08', '2001-06-27', 'Los Angeles', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Jack_Lemmon_-_1968.jpg/250px-Jack_Lemmon_-_1968.jpg');
INSERT INTO public."cast" VALUES (59, 'Tony Curtis', '1925-06-03', '2010-09-29', 'Nueva York', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Tony_Curtis_1958.jpg/220px-Tony_Curtis_1958.jpg');
INSERT INTO public."cast" VALUES (60, 'James Stewart', '1908-05-20', '1997-07-02', 'Pensilvania (Indiana)', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Annex_-_Stewart%2C_James_%28Call_Northside_777%29_01.jpg/240px-Annex_-_Stewart%2C_James_%28Call_Northside_777%29_01.jpg');
INSERT INTO public."cast" VALUES (61, 'Kim Novak', '1933-02-13', NULL, 'Chicago', 'USA', 'https://commons.wikimedia.org/wiki/File:Kim_Novak_Cannes_Festival_2013.jpg');


--
-- TOC entry 3093 (class 0 OID 19501)
-- Dependencies: 207
-- Data for Name: chapters; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.chapters VALUES (1, 1, 'Malcolm has been labeled a boy genius and is moved, much to his chagrin, into the Krelboyne class, which is a class full of nerds and geniuses like himself.', 1);
INSERT INTO public.chapters VALUES (5, 1, 'Malcolm sale a comprar el pan, se le olvida el dinero', 1);
INSERT INTO public.chapters VALUES (7, 6, 'Malcom va al parque', 1);
INSERT INTO public.chapters VALUES (8, 1, NULL, NULL);


--
-- TOC entry 3089 (class 0 OID 19463)
-- Dependencies: 203
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.content VALUES (5, 'Los chicos del maíz', 122, 'USA', '1984-02-02', NULL, 4, 'El viaje de un médico y su esposa es interrumpido cuando la pareja encuentra el cuerpo de un niño en la carretera. Ellos intentan llamar a la policía y acaban en una aldea donde jóvenes adoradores de un culto macabro realizan sacrificios humanos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBYhbkZ7AJCVGjjnNEwIzN8xZzgGkvxPYkOA&usqp=CAU', NULL, 7, NULL, 'https://youtu.be/IzehsJgu9jU', 1);
INSERT INTO public.content VALUES (3, 'Wild Wild West', 147, 'USA', '1999-02-02', NULL, 9, 'En 1869, dos agentes del gobierno, uno encantador y el otro un maestro del disfraz, son enviados a detener a un científico que planea asesinar al presidente.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQqg2g2aZdxvQ7ZZcXOq1AvU1qJtGgW7-0PsA&usqp=CAU', NULL, 5, NULL, 'https://youtu.be/IzehsJgu9jU', 1);
INSERT INTO public.content VALUES (8, 'Pulp Fiction', 153, 'USA', '1994-01-01', NULL, 2, 'Jules y Vincent, dos asesinos a sueldo con no demasiadas luces, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su atractiva mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe. Cuando llega la hora de trabajar, ambos deben ponerse "manos a la obra". Su misión: recuperar un misterioso maletín', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyTCMsWjWHCxJiCBLIZOIospoe1VULUaejsw&usqp=CAU', NULL, 9, NULL, 'https://www.youtube.com/watch?v=ZFYCXAG6fdo', 1);
INSERT INTO public.content VALUES (9, 'El padrino', 175, 'USA', '1972-01-01', NULL, 1, 'América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York. Tiene cuatro hijos: Connie (Talia Shire), el impulsivo Sonny (James Caan), el pusilánime Fredo (John Cazale) y Michael (Al Pacino), que no quiere saber nada de los negocios de su padre. Cuando Corleone, en contra de los consejos de ''Il consigliere'' Tom Hagen (Robert Duvall), se niega a participar en el negocio de las drogas, el jefe de otra banda ordena su asesinato. Empieza entonces una violenta y cruenta guerra entre las familias mafiosas.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrktIPtodC1RApGv-wxbHxF8_Mfs8T4sgoOA&usqp=CAU', NULL, 10, NULL, 'https://www.youtube.com/watch?v=gCVj1LeYnsc', 1);
INSERT INTO public.content VALUES (10, 'La vida es bella', 117, 'IT', '1997-01-01', NULL, 2, 'En 1939, a punto de estallar la Segunda Guerra Mundial (1939-1945), el extravagante Guido llega a Arezzo, en la Toscana, con la intención de abrir una librería. Allí conoce a la encantadora Dora y, a pesar de que es la prometida del fascista Rodolfo, se casa con ella y tiene un hijo. Al estallar la guerra, los tres son internados en un campo de exterminio, donde Guido hará lo imposible para hacer creer a su hijo que la terrible situación que están padeciendo es tan sólo un juego', 'https://www.tuposter.com/pub/media/catalog/product/cache/image/700x560/91bbed04eb86c2a8aaef7fbfb2041b2a/f/i/file_13_15.jpg', NULL, 7, NULL, 'https://www.youtube.com/watch?v=_2z4QAbpyPU', 1);
INSERT INTO public.content VALUES (1, 'Malcolm, in the middle', 139, 'USA', '1999-11-05', 1, 3, 'Malcolm in the middle es una serie protagonizada por Frankie Muniz en el papel de Malcolm. Este chico es un joven adolescente superdotado que intenta sobrevivir en una torpe familia disfuncional. ... Así, cada situación le enseña a Malcolm valiosas lecciones que aprende no siempre por las buenas, debido a su mala suerte', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2017/03/malcolm-serie-tv-cartel.jpg?itok=bfjD_64C', NULL, 8, NULL, 'https://youtu.be/IzehsJgu9jU', 0);
INSERT INTO public.content VALUES (2, 'Regreso al futuro', 122, 'USA', '1982-12-01', NULL, 5, 'Una máquina del tiempo transporta a un adolescente a los años 50, cuando sus padres todavía estudiaban en la secundaria.', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR80666e4S2B6AgopyUP0aybHhpFGBNbWf8oYtNWlm0rQ_tf8gd', NULL, 8, NULL, 'https://youtu.be/IzehsJgu9jU', 1);
INSERT INTO public.content VALUES (7, 'Rounders', 123, 'USA', '1998-03-03', 1, 1, 'Un estudiante de leyes vuelve al mundo adictivo del juego de cartas, para liberar a su amigo detenido bajo fianza.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR3h-tUoxyQvZ-EYCrNkBKKXX5z6Yz58Y3O7g&usqp=CAU', NULL, 9, 1, 'https://youtu.be/IzehsJgu9jU', 1);
INSERT INTO public.content VALUES (12, 'Los Simpsons', 684, 'USA', '1989-04-12', NULL, 3, 'La serie es una sátira hacia la sociedad estadounidense que narra la vida y el día a día de una familia de clase media de ese país (cuyos miembros son Homer, Marge, Bart, Lisa y Maggie Simpson) que vive en un pueblo ficticio llamado Springfield.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQP8Sdb9M35TdM1eCTpL3LcFMHdDqaJsUAFcw&usqp=CAU', NULL, 8, NULL, 'https://www.youtube.com/watch?v=aDcFhYtiIEM', 0);
INSERT INTO public.content VALUES (6, 'Kill Bill', 158, 'USA', '2003-02-02', 1, 1, 'Una asesina despierta de un coma y, tras descubrir que el hijo que llevaba en el vientre ya no está, decide salir a buscar a los criminales que la traicionaron.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXzhtKNVEmSlDMZnd_CtsQjGA6cLvXGlUJSYozAGeFchr5IF2X', NULL, 10, 1, 'https://www.youtube.com/embed/c_dNIXwrbzY', 1);
INSERT INTO public.content VALUES (4, 'Una historia del Bronx', 164, 'USA', '1980-11-10', NULL, 1, 'Durante la tensión racial de los sesenta, el hijo (Lillo Brancato) de un conductor (Robert De Niro) de autobús respeta a un jefe (Chazz Palminteri) mafioso.', 'https://elfinalde.com/wp-content/uploads/2017/04/jr3JlhUGHO1H7yRRZn7JhJBW4FP.jpg', NULL, 8, NULL, 'https://youtu.be/IzehsJgu9jU', 1);
INSERT INTO public.content VALUES (13, 'Futurama', 140, 'USA', '1999-01-04', NULL, 3, 's
Serie de TV (1999-2003. 2010-2013). 7 temporadas. 140 episodios. Serie de animación creada por Matt Groening (creador también de Los Simpson) y David X. Cohen (guionista también de Los Simpson). Ambientada en la ciudad de "Nueva Nueva York" en el año 3000, la serie comienza con Philip J. Fry, un joven repartidor de pizza neoyorquino fracasado y desmotivado que es criogénicamente congelado por accidente la Nochevieja de 1999. Mil años después es descongelado, encontrándose en Nueva Nueva York el 31 de diciembre de 2999. El intento de Fry por escapar de la entonces obligatoria asignación laboral como repartidor termina cuando es contratado en Planet Express, una pequeña compañía de mensajería intergaláctica propiedad de su sobrino lejano, como repartidor. La serie trata sobre las aventuras de Fry y sus colegas cuando viajan por el universo haciendo repartos para Planet Express. ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT0ZdjvFcGxiTKWRL8qjXPUfaR-Q6bcJTlVXg&usqp=CAU', NULL, 6, NULL, 'https://www.youtube.com/watch?v=6F1QNfmiqHc', 0);
INSERT INTO public.content VALUES (15, 'Breaking Bad', 62, 'USA', '2008-05-03', NULL, 1, 'Breaking Bad (The Breaking Bad) es una serie de televisión estadounidense creada en 2008 por Vince Gilligan. Fue emitida por la cadena AMC y protagonizada por Bryan Cranston, quien interpreta a un químico que se involucra en el mundo del tráfico de drogas para asegurar el futuro económico de su familia.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmIYywkWs1jHuJYCAoWaxLuqRpuc1RgjFZag&usqp=CAU', NULL, 9, NULL, 'https://www.youtube.com/watch?v=HhesaQXLuRY', 0);
INSERT INTO public.content VALUES (19, 'Lo que hacemos en las sombras', 20, 'USA', '2019-02-05', NULL, 3, 'Un vistazo a la vida de cuatro vampiros que han estado juntos por cientos de años. Ellos reciben la visita de su señor oscuro, quien llega para recordarles cuál es su misión de haber ido a la ciudad de Nueva York hace más de un siglo.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDz1Bpk_HUdQluOD4C3fbUiTCQNB9yVVjuuQ&usqp=CAU', NULL, 5, NULL, 'https://www.youtube.com/watch?v=mfBbSwX6kEk', 0);
INSERT INTO public.content VALUES (20, 'Juego de tronos', 73, 'USA', '2011-10-10', NULL, 1, 'Esta serie, basada en los libros de George R.R. Martin, muestra la competencia entre familias nobles de siete reinos de Westeros, cuya finalidad es ganar el control sobre el Trono de Hierro.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHkQzNFFSbZ0Az1Idq069qdf74hwmrfKxyZQ&usqp=CAU', NULL, 9, NULL, 'https://www.youtube.com/watch?v=TZE9gVF1QbA', 0);
INSERT INTO public.content VALUES (17, 'Verano Azul', 19, 'ES', '1981-05-06', NULL, 2, 'Producida por Televisión Española y dirigida por Antonio Mercero, Verano Azul fue estrenada el 11 de octubre de 1981. La serie, rodada en escenarios naturales, narra las aventuras de un grupo de jóvenes que veranean en un pueblo malagueño. Tito, Bea, Javi, Pancho, Piraña, Quique y Desi se conocen en Nerja.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRcV8oP-ywmqlZyO2qIjWlsLz6lqsq_HnCkqw&usqp=CAU', NULL, 6, NULL, 'https://www.youtube.com/watch?v=Prm9nc5ZFow', 0);
INSERT INTO public.content VALUES (14, 'Yaiba', 54, 'JPN', '1993-09-03', NULL, 10, 'Kenyū Densetsu Yaiba (剣勇伝説YAIBA? lit. La leyenda del espadachín Yaiba), o simplemente Yaiba es un manga shōnen creado por Gōshō Aoyama. Narra las aventuras de Yaiba, un joven practicante de kendo que busca la perfección de su técnica batiéndose en duelo con cualquiera. Fue publicado en 1988 por Shōgakukan en la revista Shōnen Sunday y compilado en 24 volúmenes tankōbon. Más tarde fue reeditada por ediciones "Wide Ban", en 12 tomos más gruesos. En 1993 recibió el premio Shōgakukan.1​', 'https://vignette.wikia.nocookie.net/detective-conan/images/5/50/Yaiba_Volumen_1.jpg/revision/latest/scale-to-width-down/340?cb=20130807222123&path-prefix=es', NULL, 5, NULL, 'https://www.youtube.com/watch?v=0klpVJZiyOI', 0);
INSERT INTO public.content VALUES (16, 'Los Soprano', 86, 'USA', '1999-10-01', NULL, 1, '''Los Soprano'' es un reconocidísimo drama de la HBO en el que el mayor capo de la mafia es un hombre de familia que no confía en nadie más que en su psiquiatra. ... Y es que Tony es el "padrino" de una banda mafiosa afincada en Nueva Jersey, y la extorsión, el tráfico ilegal y los sobornos forman parte de su día a día.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRGGtv8pwx2zMhkfP8J3fyhyrdUyBu1hAG1og&usqp=CAU', NULL, 10, NULL, 'https://www.youtube.com/watch?v=k5jyy5Ijp3w', 0);
INSERT INTO public.content VALUES (18, 'The I.T Crowd', 24, 'USA', '2006-03-02', NULL, 3, 'Un departamento de tecnología de una empresa conformado por tres personas poco sociables están relegados al sótano, donde hacen de lo mejor por mantener las cosas funcionando y con un mínimo de contacto social.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT9WBnG7pHEiwu0uJpJfCuoiTiGT-_S0Qgpiw&usqp=CAU', NULL, 8, NULL, 'https://www.youtube.com/watch?v=q9QbwiQUXpw', 0);
INSERT INTO public.content VALUES (22, 'Tiempos modernos', 89, 'USA', '1936-02-05', NULL, 3, 'Extenuado por el frenético ritmo de la cadena de montaje, un obrero metalúrgico que trabaja apretando tuercas acaba perdiendo la razón. Después de recuperarse en un hospital, sale y es encarcelado por participar en una manifestación en la que se encontraba por casualidad.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Modern_Times_poster.jpg/300px-Modern_Times_poster.jpg', NULL, 10, NULL, 'https://www.youtube.com/watch?v=Sy16A3ARC4c', 1);
INSERT INTO public.content VALUES (27, 'Con faldas y a lo loco', 120, 'USA', '1963-10-14', NULL, 3, 'Febrero de 1929 en la ciudad de Chicago. Joe (Tony Curtis) es un saxofonista irresponsable, jugador y mujeriego; su amigo Jerry (Jack Lemmon) es un contrabajista apocado y sensato. De manera accidental presencian la Matanza de San Valentín; cuando los gánsteres, dirigidos por "Spats" Colombo (George Raft), les descubren, se ven obligados a huir para salvar sus vidas.', 'https://www.edmradio.es/wp-content/uploads/2017/11/CONFALDASYALOLOCO77.jpg', NULL, 7, NULL, 'https://www.youtube.com/watch?v=7R0DOhIQSWc', 1);
INSERT INTO public.content VALUES (23, 'El gran dictador', 124, 'USA', '1976-03-22', NULL, 3, 'Durante una batalla que tuvo lugar en los últimos meses de la Primera Guerra Mundial, un soldado judío del ejército de la nación de Tomania8​ y barbero de profesión (Chaplin) salva la vida del oficial Schultz (Reginald Gardiner) ayudándolo a escapar en su avión, pero sufren un accidente y el avión se estrella. Ambos sobreviven, pero el soldado pierde la memoria.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/The_Great_Dictator_%281940%29_poster.jpg/220px-The_Great_Dictator_%281940%29_poster.jpg', NULL, 10, NULL, 'https://www.youtube.com/watch?v=wNFWcR5dqlw', 1);
INSERT INTO public.content VALUES (26, 'Vértigo', 128, 'USA', '1959-06-29', NULL, 1, 'Después de una persecución en una azotea, donde su miedo a las alturas y el vértigo provocan la muerte de un policía, el detective de San Francisco John "Scottie" Ferguson se retira. Scottie intenta conquistar su miedo, pero su amiga y ex prometida Midge Wood dice que otro shock emocional severo puede ser la única cura. ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Vertigomovie_restoration.jpg/220px-Vertigomovie_restoration.jpg', 10, 8, NULL, 'https://www.youtube.com/watch?v=Geu4LXm_GlY', 1);
INSERT INTO public.content VALUES (11, 'La lista de Schindler', 195, 'USA', '1993-06-02', NULL, 2, 'Oskar Schindler (Liam Neeson), un empresario alemán de gran talento para las relaciones públicas, busca ganarse la simpatía de los nazis de cara a su beneficio personal. Después de la invasión de Polonia por los alemanes en 1939, Schindler consigue, gracias a sus relaciones con los altos jerarcas nazis, la propiedad de una fábrica de Cracovia. Allí emplea a cientos de operarios judíos, cuya explotación le hace prosperar rápidamente, gracias sobre todo a su gerente Itzhak Stern (Ben Kingsley), también judío. Pero conforme la guerra avanza, Schindler y Stern comienzan ser conscientes de que a los judíos que contratan, los salvan de una muerte casi segura en el temible campo de concentración de Plaszow, que lidera el Comandante nazi Amon Goeth (Ralph Fiennes), un hombre cruel que disfruta ejecutando judíos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQVLDEg9_2nbvaZn_mXoRssrk8VstlawriJdg&usqp=CAU', NULL, 10, NULL, 'https://www.youtube.com/watch?v=BmkchuRJ82w', 1);
INSERT INTO public.content VALUES (21, 'Cantando bajo la lluvia', 102, 'USA', '1952-04-11', NULL, 6, 'Don Lockwood es una romántica estrella del cine mudo a quien ha costado mucho llegar hasta la cima. Hasta llegar a triunfar en Hollywood ha llevado un largo camino en compañía de su íntimo amigo Cosmo Brown. Ahora forma pareja con Lina Lamont, una bella chica, no tan tonta como parece, pero bastante turbia en sus intenciones.', 'https://i.pinimg.com/originals/38/86/a6/3886a60573e6e7f4dfe84768cf23ef38.jpg', NULL, 9, NULL, 'https://www.youtube.com/watch?v=aiRDOUXarlY', 1);
INSERT INTO public.content VALUES (25, 'Que bello es vivir', 130, 'USA', '1948-03-27', NULL, 3, 'La película comienza en la Nochebuena de 1945, en la que George Bailey se dispone a suicidarse. Las oraciones por él, procedentes de los habitantes del pequeño pueblo de Bedford Falls, llegan al Cielo, donde una corte celestial se reúne para cumplir lo que le piden desde allí. La gente pide a Dios que se acuerde de George Bailey y le ayude a ser feliz.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/It%27s_a_Wonderful_Life_%281946_poster%29.jpeg/250px-It%27s_a_Wonderful_Life_%281946_poster%29.jpeg', NULL, 3, NULL, 'https://www.youtube.com/watch?v=LsnihCquA7E', 1);
INSERT INTO public.content VALUES (24, 'El chico', 68, 'USA', '1921-01-21', NULL, 2, 'Una mujer joven, Edna (interpretada por Edna Purviance), acaba de dar a luz a un hijo que no quería. Con el dolor de su alma, decide dejar al niño dentro del elegante automóvil de cierta familia adinerada, junto a una nota en la que brevemente le pide que se haga cargo de su hijo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/CC_The_Kid_1921.jpg/220px-CC_The_Kid_1921.jpg', NULL, 3, NULL, 'https://www.youtube.com/watch?v=nV6jurG7K7U', 1);


--
-- TOC entry 3091 (class 0 OID 19493)
-- Dependencies: 205
-- Data for Name: content_actors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.content_actors VALUES (1, 1, 2, 'Hal');
INSERT INTO public.content_actors VALUES (2, 1, 3, 'Malcolm');
INSERT INTO public.content_actors VALUES (3, 1, 4, 'Lois');
INSERT INTO public.content_actors VALUES (4, 1, 5, 'Reese');
INSERT INTO public.content_actors VALUES (5, 1, 6, 'Dewee');
INSERT INTO public.content_actors VALUES (6, 1, 7, 'Frank');
INSERT INTO public.content_actors VALUES (7, 2, 8, 'Marty Mcfly');
INSERT INTO public.content_actors VALUES (8, 2, 9, 'Doc. Emmet Brown');
INSERT INTO public.content_actors VALUES (9, 2, 10, 'Lorrayne Mcfly');
INSERT INTO public.content_actors VALUES (10, 4, 11, 'Sonny LoSpecchio');
INSERT INTO public.content_actors VALUES (11, 4, 12, 'Lorenzo Anello');
INSERT INTO public.content_actors VALUES (12, 4, 13, 'Calogero Anello');
INSERT INTO public.content_actors VALUES (13, 4, 14, 'Carmine');
INSERT INTO public.content_actors VALUES (14, 8, 15, 'Jimmie Dimmick');
INSERT INTO public.content_actors VALUES (15, 8, 16, 'Vicent Vega');
INSERT INTO public.content_actors VALUES (16, 8, 17, 'Mia Wallace');
INSERT INTO public.content_actors VALUES (17, 8, 18, 'Jules Winnfield');
INSERT INTO public.content_actors VALUES (18, 9, 19, 'Michael Corleone');
INSERT INTO public.content_actors VALUES (19, 9, 20, 'Sonny Corleone');
INSERT INTO public.content_actors VALUES (20, 9, 21, 'Vito Corleone');
INSERT INTO public.content_actors VALUES (21, 9, 22, 'Tom Hagen');
INSERT INTO public.content_actors VALUES (22, 10, 23, 'Guido Orefice');
INSERT INTO public.content_actors VALUES (23, 10, 24, 'Giosue Orefice');
INSERT INTO public.content_actors VALUES (24, 10, 25, 'Dora');
INSERT INTO public.content_actors VALUES (25, 10, 26, 'Doctor Lessing');
INSERT INTO public.content_actors VALUES (26, 5, 27, 'Vivky Stanton');
INSERT INTO public.content_actors VALUES (27, 5, 28, 'Issac Chroner');
INSERT INTO public.content_actors VALUES (28, 5, 29, 'Brut Stanton');
INSERT INTO public.content_actors VALUES (29, 5, 30, 'Diehl');
INSERT INTO public.content_actors VALUES (30, 3, 31, 'Rita Escobar');
INSERT INTO public.content_actors VALUES (31, 3, 32, 'Artemus Gordon');
INSERT INTO public.content_actors VALUES (32, 3, 33, 'Miss East');
INSERT INTO public.content_actors VALUES (33, 3, 34, 'Jim West');
INSERT INTO public.content_actors VALUES (34, 6, 17, 'La Novia');
INSERT INTO public.content_actors VALUES (35, 6, 35, 'Bill');
INSERT INTO public.content_actors VALUES (36, 6, 36, 'Elle Driver');
INSERT INTO public.content_actors VALUES (37, 6, 37, 'Vernita Green');
INSERT INTO public.content_actors VALUES (38, 7, 38, 'Mike McDermott');
INSERT INTO public.content_actors VALUES (39, 7, 39, 'Lester');
INSERT INTO public.content_actors VALUES (40, 7, 40, 'Jo');
INSERT INTO public.content_actors VALUES (41, 7, 41, 'Teddy KGB');
INSERT INTO public.content_actors VALUES (42, 11, 42, 'Oskar Schindler');
INSERT INTO public.content_actors VALUES (43, 11, 43, 'Itzhak Sterm');
INSERT INTO public.content_actors VALUES (44, 11, 44, 'Amon Goeth');
INSERT INTO public.content_actors VALUES (45, 11, 45, 'Helen Hirsch');
INSERT INTO public.content_actors VALUES (46, 15, 2, 'Walter White');
INSERT INTO public.content_actors VALUES (47, 15, 46, 'Jesse Pinkman');
INSERT INTO public.content_actors VALUES (48, 15, 47, 'Skyler White');
INSERT INTO public.content_actors VALUES (49, 15, 48, 'Hank Schrader');
INSERT INTO public.content_actors VALUES (50, 16, 49, 'Tony Soprano');
INSERT INTO public.content_actors VALUES (51, 16, 50, 'Carmela Soprano');
INSERT INTO public.content_actors VALUES (52, 16, 51, 'Christopher Moltisanti');
INSERT INTO public.content_actors VALUES (53, 16, 52, 'Jennifer Melfi');
INSERT INTO public.content_actors VALUES (54, 17, 53, 'Javi');
INSERT INTO public.content_actors VALUES (55, 17, 54, 'Bea');
INSERT INTO public.content_actors VALUES (56, 17, 55, 'Tito');
INSERT INTO public.content_actors VALUES (57, 17, 56, 'Piraña');
INSERT INTO public.content_actors VALUES (58, 27, 57, 'Sugar Kane');
INSERT INTO public.content_actors VALUES (59, 27, 58, 'Jerry');
INSERT INTO public.content_actors VALUES (60, 27, 59, 'Joe');
INSERT INTO public.content_actors VALUES (61, 26, 60, 'Detective John ''Scottie'' Ferguson');
INSERT INTO public.content_actors VALUES (62, 26, 61, 'Madeleine Elster');


--
-- TOC entry 3087 (class 0 OID 19455)
-- Dependencies: 201
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genres VALUES (1, 'Thriller');
INSERT INTO public.genres VALUES (2, 'Drama');
INSERT INTO public.genres VALUES (4, 'Terror');
INSERT INTO public.genres VALUES (5, 'Ciencia Ficción');
INSERT INTO public.genres VALUES (6, 'Musical');
INSERT INTO public.genres VALUES (7, 'Documental');
INSERT INTO public.genres VALUES (8, 'Histórico');
INSERT INTO public.genres VALUES (9, 'Western');
INSERT INTO public.genres VALUES (10, 'Infantil');
INSERT INTO public.genres VALUES (3, 'Comedia');


--
-- TOC entry 3095 (class 0 OID 19512)
-- Dependencies: 209
-- Data for Name: seasons; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.seasons VALUES (5, 2, 'Malcom tiene nuevas aventuras, se lo pasa bien con sus amigos', 1);
INSERT INTO public.seasons VALUES (1, 1, 'For the first season, often judged as the best in the series, the decor is set and the characters of the characters gradually established: Malcolm, the misunderstood gifted, Reese, the happy fool, Dewey, the mischievous and manipulative younger, Lois, the tyrannical mother, Hal, totally irresponsible father, without forgetting Francis, the older brother sent to Alabama to a military school run by Commander Edwin Spangler, in which he once again challenges authority. Season 1 marks the spirits by inventive intrigues and situations quickly become cult!', 1);
INSERT INTO public.seasons VALUES (6, 3, 'Malcom es buena persona, ayuda a cruzar a los demas', 1);


--
-- TOC entry 3097 (class 0 OID 19523)
-- Dependencies: 211
-- Data for Name: studios; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.studios VALUES (1, 'Fox 2000 Pictures');
INSERT INTO public.studios VALUES (2, 'Fox 21 Television Studios');


--
-- TOC entry 3114 (class 0 OID 68775)
-- Dependencies: 228
-- Data for Name: ti18n; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.ti18n VALUES (1, 'i18n.bundle', 'Resource bundle in database');


--
-- TOC entry 3116 (class 0 OID 68783)
-- Dependencies: 230
-- Data for Name: ti18n_value; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3110 (class 0 OID 68755)
-- Dependencies: 224
-- Data for Name: trequest_statistics; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3107 (class 0 OID 68731)
-- Dependencies: 221
-- Data for Name: trole; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.trole VALUES (0, 'admin', '<?xml version="1.0" encoding="UTF-8"?><security></security>');


--
-- TOC entry 3118 (class 0 OID 68793)
-- Dependencies: 232
-- Data for Name: trole_server_permission; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.trole_server_permission VALUES (0, 0, 0);
INSERT INTO public.trole_server_permission VALUES (1, 0, 1);
INSERT INTO public.trole_server_permission VALUES (2, 0, 2);
INSERT INTO public.trole_server_permission VALUES (3, 0, 3);
INSERT INTO public.trole_server_permission VALUES (4, 0, 4);
INSERT INTO public.trole_server_permission VALUES (5, 0, 5);
INSERT INTO public.trole_server_permission VALUES (6, 0, 6);
INSERT INTO public.trole_server_permission VALUES (7, 0, 7);
INSERT INTO public.trole_server_permission VALUES (8, 0, 8);
INSERT INTO public.trole_server_permission VALUES (9, 0, 9);
INSERT INTO public.trole_server_permission VALUES (10, 0, 10);
INSERT INTO public.trole_server_permission VALUES (11, 0, 11);
INSERT INTO public.trole_server_permission VALUES (12, 0, 12);
INSERT INTO public.trole_server_permission VALUES (13, 0, 13);
INSERT INTO public.trole_server_permission VALUES (14, 0, 14);
INSERT INTO public.trole_server_permission VALUES (15, 0, 15);
INSERT INTO public.trole_server_permission VALUES (16, 0, 16);


--
-- TOC entry 3109 (class 0 OID 68744)
-- Dependencies: 223
-- Data for Name: tserver_permission; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tserver_permission VALUES (0, 'com.ontimize.hr.api.core.service.IUserAndRoleService/userQuery');
INSERT INTO public.tserver_permission VALUES (1, 'com.ontimize.jee.common.services.user.IUserInformationService/getUserInformation');
INSERT INTO public.tserver_permission VALUES (2, 'com.ontimize.jee.common.services.mail.IMailService/sendMail');
INSERT INTO public.tserver_permission VALUES (3, 'com.ontimize.jee.common.services.mail.IMailService/sendMailWithoutAttach');
INSERT INTO public.tserver_permission VALUES (4, 'com.ontimize.jee.common.services.i18n.II18nService/getAvailableBundles');
INSERT INTO public.tserver_permission VALUES (5, 'com.ontimize.jee.common.services.i18n.II18nService/getBundle');
INSERT INTO public.tserver_permission VALUES (7, 'com.ontimize.jee.common.services.i18n.II18nService/getAllResourceBundles');
INSERT INTO public.tserver_permission VALUES (9, 'com.ontimize.jee.common.services.i18n.II18nService/updateBundleValues');
INSERT INTO public.tserver_permission VALUES (8, 'com.ontimize.jee.common.services.i18n.II18nService/getAvailableLocales');
INSERT INTO public.tserver_permission VALUES (10, 'com.ontimize.jee.common.services.preferences.IRemoteApplicationPreferencesService/getPreference');
INSERT INTO public.tserver_permission VALUES (11, 'com.ontimize.jee.common.services.preferences.IRemoteApplicationPreferencesService/getDefaultPreference');
INSERT INTO public.tserver_permission VALUES (12, 'com.ontimize.jee.common.services.preferences.IRemoteApplicationPreferencesService/setPreference');
INSERT INTO public.tserver_permission VALUES (13, 'com.ontimize.jee.common.services.preferences.IRemoteApplicationPreferencesService/setDefaultPreference');
INSERT INTO public.tserver_permission VALUES (14, 'com.ontimize.jee.common.services.preferences.IRemoteApplicationPreferencesService/savePreferences');
INSERT INTO public.tserver_permission VALUES (15, 'com.ontimize.jee.common.services.preferences.IRemoteApplicationPreferencesService/loadPreferences');
INSERT INTO public.tserver_permission VALUES (16, 'com.ontimize.jee.common.services.i18n.II18nService/deleteBundleValues');
INSERT INTO public.tserver_permission VALUES (6, 'com.ontimize.jee.common.services.i18n.II18nService/getBundles');


--
-- TOC entry 3112 (class 0 OID 68765)
-- Dependencies: 226
-- Data for Name: tsetting; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tsetting VALUES (0, 'mail_host', 'smtp.gmail.com', 'Host del servidor');
INSERT INTO public.tsetting VALUES (1, 'mail_port', '587', 'Puerto del servidor de email');
INSERT INTO public.tsetting VALUES (2, 'mail_protocol', 'smtp', 'Protocolo de env\u005cu00edo de mails');
INSERT INTO public.tsetting VALUES (3, 'mail_user', 'mi.mail@example.com', 'Usuario para el env\u005cu00edo de mails');
INSERT INTO public.tsetting VALUES (4, 'mail_password', 'mis_credenciales', 'Password del servidor de mail');
INSERT INTO public.tsetting VALUES (5, 'mail_encoding', 'UTF-8', 'Codificaci\u005cu00f3n de mails');
INSERT INTO public.tsetting VALUES (6, 'mail_properties', 'mail.smtp.auth:true;mail.smtp.starttls.enable:true;', 'Propiedades de mails');
INSERT INTO public.tsetting VALUES (7, 'report_folder', 'C:/applications/ontimize-boot-app/reports', 'Carpeta de las plantillas de report');


--
-- TOC entry 3105 (class 0 OID 68718)
-- Dependencies: 219
-- Data for Name: tuser; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser VALUES ('demo', 'demouser', 'demo', 'demo', NULL, '44460713B', NULL, NULL, NULL);
INSERT INTO public.tuser VALUES ('prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, NULL, '2020-07-13 20:15:53.096949', true);
INSERT INTO public.tuser VALUES ('Sergio', 'Makina', 'Total', '5', 'smt5', NULL, NULL, '2020-07-13 20:21:54.368302', true);


--
-- TOC entry 3104 (class 0 OID 68705)
-- Dependencies: 218
-- Data for Name: tuser_preference; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser_preference VALUES (0, 'user_preference', 'demo', 'Iw0KI1R1ZSBNYXkgMTYgMTI6NTc6MDYgQ0VTVCAyMDE3DQpkZW1vX2FwcF9zdGF0dXNfYmFyX3Zpc2libGU9eWVzDQpkZW1vX2FkanVzdF90cmVlX3NwYWNlPXRydWUNCmRlbW9fYXBwX3dpbmRvd19zdGF0ZT0wDQpkZW1vX3RhYmxlX2NvbmZfc29ydF9maWx0ZXJfZm9ybUN1c3RvbWVyLnhtbF9DdXN0b21lclNlcnZpY2UuY3VzdG9tZXJfVEVTVD1udWxsO251bGw7U1VSTkFNRVw9OThcOjF8SURcPTc1XDoyfE5BTUVcPTk5XDozfENVU1RPTUVSVFlQRUlEXD0wXDo0fENVU1RPTUVSSURcPTEyNVw6NXxBRERSRVNTXD0xMjNcOjZ8UEhPTkVcPTEyMVw6N3xTVEFSVERBVEVcPTEzNlw6OHxMT05HSVRVREVcPTExNlw6OXxMQVRJVFVERVw9MTEzXDoxMHxFTUFJTFw9MTcwXDoxMnw7QkFTRTY0ck8wQUJYTnlBQk5xWVhaaExuVjBhV3d1U0dGemFIUmhZbXhsRTdzUEpTRks1TGdEQUFKR0FBcHNiMkZrUm1GamRHOXlTUUFKZEdoeVpYTm9iMnhrZUhBL1FBQUFBQUFBQ0hjSUFBQUFDd0FBQUFCNA0KZGVtb190YWJsZV9jb25mX3NvcnRfZmlsdGVyX2NvbmZpZ3VyYXRpb25zX2Zvcm1DdXN0b21lci54bWxfQ3VzdG9tZXJTZXJ2aWNlLmN1c3RvbWVyPVRFU1QNCmRlbW9fdGFibGVfY29udHJvbF9wYW5lbF9mb3JtQWNjb3VudHMtZGV0YWlsLnhtbF9Nb3ZlbWVudFNlcnZpY2UubW92ZW1lbnQ9Z3JvdXB0YWJsZWtleTtkZWZhdWx0Y2hhcnRidXR0b247ZXhjZWxleHBvcnRidXR0b247c3Vtcm93YnV0dG9uO2NhbGN1bGVkY29sc2J1dHRvbjtwcmludGluZ2J1dHRvbjtmaWx0ZXJzYXZlYnV0dG9uO3Zpc2libGVjb2xzYnV0dG9uO2h0bWxleHBvcnRidXR0b247Y29weWJ1dHRvbjtncm91cHRhYmxla2V5O2luc2VydGJ1dHRvbjtyZWZyZXNoYnV0dG9uDQpkZW1vX2Zvcm1CcmFuY2hlcy1kZXRhaWwueG1sPTg4MDs1MDU7LTExNTA7MzY5DQpkZW1vX2RldGFpbF9kaWFsb2dfc2l6ZV9wb3NpdGlvbl9mb3JtQ3VzdG9tZXIueG1sX0N1c3RvbWVyU2VydmljZS5jdXN0b21lcj03NDk7MzUwOy0xOTA1OzM5MQ0KZGVtb19hcHBfdG9vbGJhcl9sb2NhdGlvbj1Ob3J0aA0KZGVtb19hcHBfd2luZG93X3Bvc2l0aW9uPS0xNTgwOzExDQpkZW1vX2FwcF93aW5kb3dfc2l6ZT0xNTg0OzEwNDQNCmRlbW9fZm9ybUVtcGxveWVlcy1kZXRhaWwueG1sPTExMTY7NzM5OzYxMDsxOTUNCmRlbW9fZm9ybUFjY291bnRzLWRldGFpbC54bWw9OTE1OzUwMDstMTE1MDszNjkNCg==');
INSERT INTO public.tuser_preference VALUES (1, 'user_preference', 'demo', 'Iw0KI1R1ZSBNYXkgMTYgMTI6NTc6MDYgQ0VTVCAyMDE3DQpkZW1vX2FwcF9zdGF0dXNfYmFyX3Zpc2libGU9eWVzDQpkZW1vX2FkanVzdF90cmVlX3NwYWNlPXRydWUNCmRlbW9fYXBwX3dpbmRvd19zdGF0ZT0wDQpkZW1vX3RhYmxlX2NvbmZfc29ydF9maWx0ZXJfZm9ybUN1c3RvbWVyLnhtbF9DdXN0b21lclNlcnZpY2UuY3VzdG9tZXJfVEVTVD1udWxsO251bGw7U1VSTkFNRVw9OThcOjF8SURcPTc1XDoyfE5BTUVcPTk5XDozfENVU1RPTUVSVFlQRUlEXD0wXDo0fENVU1RPTUVSSURcPTEyNVw6NXxBRERSRVNTXD0xMjNcOjZ8UEhPTkVcPTEyMVw6N3xTVEFSVERBVEVcPTEzNlw6OHxMT05HSVRVREVcPTExNlw6OXxMQVRJVFVERVw9MTEzXDoxMHxFTUFJTFw9MTcwXDoxMnw7QkFTRTY0ck8wQUJYTnlBQk5xWVhaaExuVjBhV3d1U0dGemFIUmhZbXhsRTdzUEpTRks1TGdEQUFKR0FBcHNiMkZrUm1GamRHOXlTUUFKZEdoeVpYTm9iMnhrZUhBL1FBQUFBQUFBQ0hjSUFBQUFDd0FBQUFCNA0KZGVtb190YWJsZV9jb25mX3NvcnRfZmlsdGVyX2NvbmZpZ3VyYXRpb25zX2Zvcm1DdXN0b21lci54bWxfQ3VzdG9tZXJTZXJ2aWNlLmN1c3RvbWVyPVRFU1QNCmRlbW9fdGFibGVfY29udHJvbF9wYW5lbF9mb3JtQWNjb3VudHMtZGV0YWlsLnhtbF9Nb3ZlbWVudFNlcnZpY2UubW92ZW1lbnQ9Z3JvdXB0YWJsZWtleTtkZWZhdWx0Y2hhcnRidXR0b247ZXhjZWxleHBvcnRidXR0b247c3Vtcm93YnV0dG9uO2NhbGN1bGVkY29sc2J1dHRvbjtwcmludGluZ2J1dHRvbjtmaWx0ZXJzYXZlYnV0dG9uO3Zpc2libGVjb2xzYnV0dG9uO2h0bWxleHBvcnRidXR0b247Y29weWJ1dHRvbjtncm91cHRhYmxla2V5O2luc2VydGJ1dHRvbjtyZWZyZXNoYnV0dG9uDQpkZW1vX2Zvcm1CcmFuY2hlcy1kZXRhaWwueG1sPTg4MDs1MDU7LTExNTA7MzY5DQpkZW1vX2RldGFpbF9kaWFsb2dfc2l6ZV9wb3NpdGlvbl9mb3JtQ3VzdG9tZXIueG1sX0N1c3RvbWVyU2VydmljZS5jdXN0b21lcj03NDk7MzUwOy0xOTA1OzM5MQ0KZGVtb19hcHBfdG9vbGJhcl9sb2NhdGlvbj1Ob3J0aA0KZGVtb19hcHBfd2luZG93X3Bvc2l0aW9uPS0xNTgwOzExDQpkZW1vX2FwcF93aW5kb3dfc2l6ZT0xNTg0OzEwNDQNCmRlbW9fZm9ybUVtcGxveWVlcy1kZXRhaWwueG1sPTExMTY7NzM5OzYxMDsxOTUNCmRlbW9fZm9ybUFjY291bnRzLWRldGFpbC54bWw9OTE1OzUwMDstMTE1MDszNjkNCg==');


--
-- TOC entry 3103 (class 0 OID 68695)
-- Dependencies: 217
-- Data for Name: tuser_role; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser_role VALUES (0, 0, 'demo');


--
-- TOC entry 3099 (class 0 OID 19547)
-- Dependencies: 213
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Kennan Duran', 'PYG66AJI6QQ', '2020-03-07', '2020-06-30', 'Donec.luctus.aliquet@scelerisquescelerisque.net', '8415 Ornare, Street', 'Nantes', 'French Guiana');
INSERT INTO public.users VALUES (2, 'Brianna Thomas', 'OML88LJK3UM', '2020-01-16', '2020-07-28', 'Donec.at.arcu@mifringilla.net', 'P.O. Box 845, 9026 Cras Rd.', 'Springdale', 'Guadeloupe');
INSERT INTO public.users VALUES (3, 'Lydia Olsen', 'FRT14RKJ0YZ', '2019-05-26', '2021-03-15', 'a.felis@eleifendCrassed.edu', '3687 Maecenas Road', 'Glovertown', 'Afghanistan');
INSERT INTO public.users VALUES (4, 'Grant Malone', 'TGL96AEF4AE', '2019-08-05', '2020-06-16', 'tempus.non.lacinia@velnislQuisque.edu', 'Ap #149-2389 Dictum Road', 'Cametá', 'Qatar');
INSERT INTO public.users VALUES (5, 'Dane Burks', 'SXB69CFW1SM', '2019-10-02', '2019-09-10', 'sit.amet.diam@aliquamiaculis.com', 'P.O. Box 822, 625 Eget St.', 'Collecchio', 'Bonaire, Sint Eustatius and Saba');
INSERT INTO public.users VALUES (6, 'Kenyon Massey', 'XHZ39OGA2TM', '2021-01-17', '2020-02-10', 'erat@scelerisquedui.com', '548-9885 Libero St.', 'Paignton', 'Guadeloupe');
INSERT INTO public.users VALUES (7, 'Mechelle Eaton', 'BZK02BZS1TJ', '2019-12-12', '2020-12-02', 'arcu.Morbi@velpedeblandit.com', '243-6213 Sed Rd.', 'Balıkesir', 'Zimbabwe');
INSERT INTO public.users VALUES (8, 'Kennan Garrison', 'JOL05DTE7UO', '2020-06-15', '2021-03-29', 'arcu@Fusce.co.uk', 'P.O. Box 226, 2848 Erat Street', 'Bavikhove', 'Anguilla');
INSERT INTO public.users VALUES (9, 'Calista Jarvis', 'BYZ36GJT7GM', '2021-04-30', '2021-01-14', 'metus.facilisis@penatibusetmagnis.net', 'P.O. Box 529, 9830 Sit St.', 'Gonnosfanadiga', 'China');
INSERT INTO public.users VALUES (10, 'Juliet Rios', 'ZCF51GOC0KP', '2019-09-03', '2020-03-01', 'pede.Cum@per.net', '6111 Ad Avenue', 'Amstelveen', 'Chad');
INSERT INTO public.users VALUES (11, 'Victor Petty', 'QFQ90VGG8TC', '2019-07-05', '2019-12-19', 'et.euismod@afacilisisnon.co.uk', 'Ap #537-8751 Quam. Rd.', 'Villers-sur-Semois', 'Slovakia');
INSERT INTO public.users VALUES (12, 'Risa Rodriguez', 'WGG49JWV2CB', '2019-09-04', '2020-02-10', 'parturient@Nullam.co.uk', 'Ap #801-2855 Sed Ave', 'Visso', 'Lesotho');
INSERT INTO public.users VALUES (13, 'Nola Conrad', 'OVY06JFD7LH', '2020-02-07', '2020-01-04', 'blandit.congue.In@Cum.net', '872-7586 Orci, Rd.', 'Las Cabras', 'Uzbekistan');
INSERT INTO public.users VALUES (14, 'Ignatius Martin', 'KLL01CCH4WC', '2019-07-15', '2019-07-31', 'montes.nascetur.ridiculus@duiFuscediam.edu', 'P.O. Box 280, 899 Diam Rd.', 'Płock', 'Eritrea');
INSERT INTO public.users VALUES (15, 'Drew Banks', 'RVT72AWV5XR', '2020-06-10', '2020-06-10', 'ac@vitae.ca', '527-4292 Dictum Rd.', 'Calgary', 'Australia');
INSERT INTO public.users VALUES (16, 'Samson Bowers', 'CTP02XKA3ZR', '2019-07-27', '2020-05-24', 'non.quam@amet.com', '230-2481 Leo St.', 'Leonding', 'United States Minor Outlying Islands');
INSERT INTO public.users VALUES (17, 'Colin Eaton', 'KDG89ZNX9BN', '2019-06-13', '2019-06-01', 'commodo.hendrerit.Donec@vitaenibhDonec.co.uk', 'P.O. Box 494, 8694 Malesuada Road', 'Acireale', 'Maldives');
INSERT INTO public.users VALUES (18, 'Malcolm Rose', 'APD70AQY3HG', '2020-02-08', '2021-01-31', 'Integer.sem.elit@infaucibusorci.edu', 'P.O. Box 613, 5876 Ligula. Road', 'Cornwall', 'Guinea');
INSERT INTO public.users VALUES (19, 'Kelsie Walsh', 'BJC90SFJ6RY', '2019-10-10', '2019-06-05', 'ante@Aeneangravida.co.uk', '210-6901 Pretium Rd.', 'Kamoke', 'Kiribati');
INSERT INTO public.users VALUES (20, 'Gretchen Hicks', 'ZES91PFF3BT', '2019-11-24', '2019-07-27', 'tristique.pellentesque.tellus@sedorci.co.uk', '992-5778 Et, St.', 'Bulandshahr', 'Faroe Islands');
INSERT INTO public.users VALUES (21, 'Elliott Guerra', 'FKE07ZWJ8OT', '2020-11-11', '2019-07-12', 'pede.Cum@purus.co.uk', '769-6747 Dolor St.', 'Moose Jaw', 'Switzerland');
INSERT INTO public.users VALUES (22, 'Adria Reese', 'KWN09JLE8HJ', '2020-03-28', '2019-08-02', 'Pellentesque.ut.ipsum@convallis.ca', 'P.O. Box 473, 1964 Viverra. Street', 'Alva', 'India');
INSERT INTO public.users VALUES (23, 'Harrison Leon', 'SWD31OCX0TK', '2020-10-31', '2020-01-09', 'gravida@Phasellusnulla.net', '702-549 Suspendisse Street', 'Wellingborough', 'Isle of Man');
INSERT INTO public.users VALUES (24, 'Mallory Dillon', 'IUX81DGX6MR', '2020-06-03', '2020-12-21', 'lobortis@semperpretium.edu', '460-8796 Molestie Street', 'Tula', 'French Guiana');
INSERT INTO public.users VALUES (25, 'Malcolm Macdonald', 'XFX19BKJ7ZH', '2020-12-12', '2020-08-24', 'Nunc.sollicitudin.commodo@Namporttitorscelerisque.com', '494-9734 Torquent Street', 'Gubkin', 'Yemen');
INSERT INTO public.users VALUES (26, 'Zenia Newton', 'SWO44URK8JW', '2020-11-12', '2020-12-04', 'dignissim@ac.co.uk', 'Ap #430-365 Ultrices Avenue', 'Kitchener', 'Costa Rica');
INSERT INTO public.users VALUES (27, 'Preston Chaney', 'GGZ44IOQ7AD', '2020-11-18', '2020-09-05', 'dui.lectus.rutrum@loremtristique.ca', 'Ap #664-1168 Scelerisque Avenue', 'Stony Plain', 'Poland');
INSERT INTO public.users VALUES (28, 'Karleigh Kelly', 'YEE42YFH4WQ', '2021-04-18', '2019-12-24', 'id.enim.Curabitur@aliquamadipiscinglacus.co.uk', '918-8040 Semper Rd.', 'LaSalle', 'Samoa');
INSERT INTO public.users VALUES (29, 'Hayes Mcfadden', 'BYK99CAF1SS', '2021-05-03', '2020-12-25', 'sagittis.placerat.Cras@scelerisquemollis.edu', 'P.O. Box 100, 4016 Natoque St.', 'Biloxi', 'Belgium');
INSERT INTO public.users VALUES (30, 'Orla Elliott', 'DDX14JSS9AJ', '2019-08-29', '2020-12-01', 'nec.leo@felispurusac.edu', 'Ap #337-2582 Purus, St.', 'Leeuwarden', 'Botswana');
INSERT INTO public.users VALUES (31, 'Amos Hammond', 'KGU47QAL3GL', '2019-06-28', '2021-02-18', 'augue.malesuada.malesuada@eliteratvitae.edu', '365-6121 Enim. Av.', 'Amravati', 'Somalia');
INSERT INTO public.users VALUES (32, 'Kellie Rodriguez', 'CFC69NLQ4KW', '2020-02-26', '2019-12-27', 'dapibus.gravida@fringilla.co.uk', '7783 Pharetra Road', 'Quirihue', 'Sweden');
INSERT INTO public.users VALUES (33, 'Kennan Harrell', 'QQR03PES6AK', '2019-11-16', '2020-11-03', 'porttitor.vulputate.posuere@urna.org', '2895 Vulputate, St.', 'Vito d''Asio', 'Benin');
INSERT INTO public.users VALUES (34, 'Nissim Landry', 'QSL73YNT2LI', '2019-07-14', '2020-07-13', 'vel.arcu@ornare.com', '518-4855 Donec Ave', 'Gurgaon', 'Ghana');
INSERT INTO public.users VALUES (35, 'Reuben Cooke', 'MPS96UAE8EC', '2020-11-19', '2019-10-25', 'Sed.id.risus@risusNunc.net', 'P.O. Box 425, 5143 Nunc. Road', 'Halle', 'Puerto Rico');
INSERT INTO public.users VALUES (36, 'Stella Taylor', 'BIT69LZR1AX', '2020-02-16', '2019-12-25', 'sagittis.semper@interdumCurabitur.edu', '736-8054 In Road', 'Crecchio', 'Israel');
INSERT INTO public.users VALUES (37, 'Chiquita Sharp', 'ANJ36DPK5UR', '2020-07-01', '2020-09-12', 'Quisque.nonummy.ipsum@Cras.org', 'P.O. Box 101, 235 Torquent St.', 'Orroli', 'Mozambique');
INSERT INTO public.users VALUES (38, 'Abigail Blackburn', 'WFR82LHY2QY', '2020-01-23', '2019-07-19', 'at.iaculis@leoCrasvehicula.edu', '292-7379 Odio St.', 'Augusta', 'Anguilla');
INSERT INTO public.users VALUES (39, 'Oren Newman', 'XGZ60NZQ9SR', '2020-04-17', '2020-09-29', 'cursus.et.magna@ac.org', 'P.O. Box 385, 5086 Sed Street', 'Zittau', 'Gambia');
INSERT INTO public.users VALUES (40, 'Mason Anderson', 'HNQ73GSG2IG', '2020-10-19', '2021-03-19', 'Etiam.imperdiet@in.edu', 'P.O. Box 874, 3745 Enim St.', 'Langen', 'Suriname');
INSERT INTO public.users VALUES (41, 'Dalton Brown', 'JJA32XQY3HW', '2019-10-09', '2019-10-14', 'elit.pellentesque.a@semperetlacinia.co.uk', 'Ap #602-4272 Morbi St.', 'Goiânia', 'Honduras');
INSERT INTO public.users VALUES (42, 'Breanna Alexander', 'VRJ01UEE8MI', '2021-01-19', '2020-02-06', 'magna.Ut@cubiliaCurae.com', '508-2115 Eget St.', 'Lago Ranco', 'Cuba');
INSERT INTO public.users VALUES (43, 'Isabelle Mckay', 'FOH66UQI7HP', '2020-02-12', '2020-02-07', 'neque.In.ornare@consequatdolor.co.uk', 'P.O. Box 642, 5016 Est. Av.', 'Lisieux', 'Montenegro');
INSERT INTO public.users VALUES (44, 'Kyle Chang', 'GAO33JIQ4MX', '2021-01-06', '2019-08-28', 'Proin.non.massa@Cum.co.uk', '304-4318 Dui Av.', 'Sittard', 'Congo, the Democratic Republic of the');
INSERT INTO public.users VALUES (45, 'Cora Macias', 'KRI90DVC1AP', '2020-08-06', '2021-02-17', 'tristique.senectus.et@imperdiet.com', '207-6111 Dictum Ave', 'Vidisha', 'Saint Barthélemy');
INSERT INTO public.users VALUES (46, 'Lionel Rocha', 'BSL97EUS5NF', '2020-10-14', '2021-02-11', 'Suspendisse.sagittis.Nullam@sit.edu', '4860 Tempor, Rd.', 'Stockerau', 'Curaçao');
INSERT INTO public.users VALUES (47, 'Orson Whitfield', 'NZF46KVN5TV', '2019-11-25', '2020-04-03', 'Nunc.ullamcorper@diam.org', '9500 Sed, St.', 'Offida', 'Mauritius');
INSERT INTO public.users VALUES (48, 'Jamalia Merritt', 'QKT29WTE5AS', '2020-10-21', '2019-05-24', 'semper.auctor@vitaesodalesat.net', '115-381 Enim. Avenue', 'Gulfport', 'Mauritius');
INSERT INTO public.users VALUES (49, 'Lenore Tillman', 'RQC83FAK5QL', '2021-01-06', '2020-03-31', 'sed.sapien@Aliquamrutrumlorem.co.uk', 'Ap #927-5046 Eleifend Street', 'Joué-lès-Tours', 'Virgin Islands, United States');
INSERT INTO public.users VALUES (50, 'Aquila Harris', 'XUO47PBR3TG', '2021-01-10', '2020-01-28', 'velit@ornare.com', 'P.O. Box 740, 3428 Scelerisque Ave', 'Tulsa', 'Kenya');
INSERT INTO public.users VALUES (51, 'Kamal Sullivan', 'PLY87YBJ7OX', '2019-08-16', '2021-05-05', 'mi.Aliquam@mauriselit.org', 'Ap #541-6762 Aliquet Rd.', 'Burns Lake', 'Korea, South');
INSERT INTO public.users VALUES (52, 'Giselle Hill', 'MMY61WKF0MT', '2020-12-28', '2019-08-23', 'Integer.vitae@vitaesodales.org', 'Ap #521-2955 Nulla. Avenue', 'Rhemes-Notre-Dame', 'Turks and Caicos Islands');
INSERT INTO public.users VALUES (53, 'Yetta Wiley', 'RJV04YQC6TF', '2020-12-28', '2019-08-29', 'Suspendisse.aliquet@dignissim.org', 'P.O. Box 559, 5387 Sapien. Road', 'Ancarano', 'Saint Barthélemy');
INSERT INTO public.users VALUES (54, 'Wang Faulkner', 'OBB77NXH6XY', '2020-04-29', '2021-03-03', 'et.magnis.dis@metusIn.edu', 'Ap #704-2214 Eu, St.', 'Meridian', 'Saudi Arabia');
INSERT INTO public.users VALUES (55, 'Lev Hutchinson', 'NEL86XCA8RV', '2020-07-13', '2020-07-08', 'pede@magnaa.com', '3696 Congue Rd.', 'São João de Meriti', 'Guinea');
INSERT INTO public.users VALUES (56, 'Barry Vaughn', 'AFR03HGY7BM', '2020-09-12', '2020-05-06', 'ac.nulla.In@Nam.org', '8898 Cras Av.', 'Fossato di Vico', 'French Southern Territories');
INSERT INTO public.users VALUES (57, 'Anika Estrada', 'FHZ84WSQ8YD', '2020-03-19', '2020-11-21', 'ipsum@tristiquesenectus.edu', '386-4552 Vitae St.', 'Coalhurst', 'Tajikistan');
INSERT INTO public.users VALUES (58, 'Zahir Palmer', 'GMD91PNC7OF', '2019-11-26', '2019-12-28', 'fringilla.mi.lacinia@tempusmauris.com', 'Ap #398-5480 Laoreet St.', 'Lamorteau', 'Bermuda');
INSERT INTO public.users VALUES (59, 'Alan Mercer', 'HEU40ZLS9RI', '2020-05-23', '2019-06-05', 'tortor.nibh.sit@arcuSedet.com', '678-7180 Ultricies St.', 'North Cowichan', 'Syria');
INSERT INTO public.users VALUES (60, 'Quinn Noble', 'CJX13DEL1CD', '2019-10-08', '2019-10-12', 'ante.dictum@neque.net', 'Ap #407-9271 Consectetuer Avenue', 'Monte Santa Maria Tiberina', 'Macedonia');
INSERT INTO public.users VALUES (61, 'Perry Miller', 'QUY93CNG5LM', '2020-10-13', '2019-12-28', 'gravida.molestie.arcu@sed.co.uk', '481-2725 Eget, Rd.', 'Harelbeke', 'Egypt');
INSERT INTO public.users VALUES (62, 'Malik Freeman', 'QKS70DHA5EK', '2019-07-30', '2019-12-20', 'Class.aptent.taciti@non.edu', 'P.O. Box 247, 2218 Leo. Road', 'Itter', 'Norway');
INSERT INTO public.users VALUES (63, 'Bryar Sykes', 'EQM41BDB2BX', '2020-11-02', '2020-11-01', 'diam.lorem.auctor@tinciduntadipiscing.ca', '4073 Et Road', 'Gangneung', 'Wallis and Futuna');
INSERT INTO public.users VALUES (64, 'Francesca Campos', 'NPN00RTD4SI', '2019-07-24', '2019-12-29', 'lobortis@Fuscealiquamenim.org', '3012 Mollis. St.', 'Bruderheim', 'Costa Rica');
INSERT INTO public.users VALUES (65, 'Conan Frank', 'KOC93FSE2KP', '2020-12-08', '2020-12-19', 'Cum@doloregestasrhoncus.co.uk', 'P.O. Box 790, 8243 Semper, Road', 'Tintange', 'Canada');
INSERT INTO public.users VALUES (66, 'Drake Orr', 'SZO20ABG7UK', '2020-04-29', '2020-04-20', 'Praesent@aliquet.co.uk', 'P.O. Box 879, 4102 Massa. Av.', 'Nanterre', 'Turkey');
INSERT INTO public.users VALUES (67, 'Remedios Dawson', 'RBR98RMX6CY', '2021-01-01', '2020-01-30', 'Cras.dolor@Cumsociisnatoque.co.uk', 'Ap #745-9518 Eu Av.', 'Gellik', 'Tonga');
INSERT INTO public.users VALUES (68, 'Francesca Lindsay', 'PEP04LSK2VN', '2020-05-03', '2019-06-11', 'Aliquam.rutrum.lorem@egestasligulaNullam.com', '8777 At St.', 'Celaya', 'Hong Kong');
INSERT INTO public.users VALUES (69, 'Hop Daniel', 'FCW53EFD9LR', '2020-07-31', '2019-10-01', 'nec.quam.Curabitur@tristiquesenectuset.com', '615-8998 Urna Av.', 'Alert Bay', 'Paraguay');
INSERT INTO public.users VALUES (70, 'Christian Vinson', 'JHY66KVM7OM', '2020-07-20', '2021-02-06', 'arcu.Vivamus@accumsaninterdumlibero.com', '377 Nunc Rd.', 'Haasdonk', 'Niue');
INSERT INTO public.users VALUES (71, 'Merrill Hicks', 'RBT60NIE1UN', '2019-12-31', '2020-02-18', 'mauris.Integer.sem@vitae.edu', '7374 Auctor Avenue', 'Erie', 'Christmas Island');
INSERT INTO public.users VALUES (72, 'Zachery Boyd', 'HZZ02CTX7WG', '2019-06-04', '2020-02-11', 'at.augue@arcu.co.uk', 'Ap #613-5355 Egestas Road', 'Cuernavaca', 'Western Sahara');
INSERT INTO public.users VALUES (73, 'Rafael Sanford', 'DMX35WGY3YS', '2020-02-07', '2020-11-04', 'non@Aliquamornare.edu', 'Ap #805-4490 Justo. St.', 'Fiuminata', 'Czech Republic');
INSERT INTO public.users VALUES (74, 'Farrah Gaines', 'MQR20NKY7TN', '2021-02-05', '2021-02-04', 'orci@condimentum.edu', 'Ap #290-1929 Netus St.', 'Lloydminster', 'Comoros');
INSERT INTO public.users VALUES (75, 'Wynne Bradford', 'RXX08KVC1QD', '2021-01-26', '2021-03-28', 'luctus@mauris.edu', 'P.O. Box 873, 8195 Mattis Av.', 'Berhampore', 'Iceland');
INSERT INTO public.users VALUES (76, 'Timothy Holland', 'XLC85LBG9LF', '2020-12-13', '2020-09-06', 'Fusce.aliquet.magna@metus.net', 'Ap #999-4490 Sed Ave', 'Overmere', 'Monaco');
INSERT INTO public.users VALUES (77, 'Tad Shaffer', 'GCK62GFH7ZM', '2020-07-31', '2020-04-03', 'mauris@incursus.com', 'Ap #419-1327 Aliquam Av.', 'Caplan', 'French Southern Territories');
INSERT INTO public.users VALUES (78, 'Tallulah Stevenson', 'LSG67KXQ8HF', '2020-07-30', '2020-09-24', 'interdum.libero.dui@pharetrased.org', 'P.O. Box 843, 7699 Auctor Av.', 'Kaliningrad', 'Hong Kong');
INSERT INTO public.users VALUES (79, 'Tana Waters', 'QWW62CHN7PB', '2020-12-29', '2019-08-03', 'lectus.pede@Sedpharetra.com', 'Ap #959-7028 Consectetuer Ave', 'Sujawal', 'Chile');
INSERT INTO public.users VALUES (80, 'Cathleen Villarreal', 'LZD19PJC1KB', '2020-08-22', '2019-08-04', 'adipiscing@nuncInat.com', '514-3959 Ut, Road', 'Vieste', 'Virgin Islands, British');
INSERT INTO public.users VALUES (81, 'Maile Shaw', 'NMA04YYY6YX', '2020-12-10', '2020-09-01', 'litora.torquent@nonummyutmolestie.edu', '981-8382 Augue. St.', 'Autre-Eglise', 'Romania');
INSERT INTO public.users VALUES (82, 'Richard Black', 'MGU04OQC4SS', '2019-12-07', '2020-10-04', 'aliquet@cursus.co.uk', 'P.O. Box 289, 9847 Consectetuer Rd.', 'Jefferson City', 'Guinea-Bissau');
INSERT INTO public.users VALUES (83, 'Francis Trujillo', 'VVV42NKR4ST', '2020-10-13', '2019-08-21', 'tincidunt@vitaesodales.net', '3425 Lectus Avenue', 'Subbiano', 'Ghana');
INSERT INTO public.users VALUES (84, 'Stephanie Kirkland', 'CKF67MOU6EL', '2019-07-07', '2020-06-07', 'arcu@id.com', '973-9601 Ultrices Rd.', 'Santarcangelo di Romagna', 'Zambia');
INSERT INTO public.users VALUES (85, 'Kaseem Allison', 'STX82BNG8PD', '2020-04-05', '2020-04-26', 'blandit@vulputateeu.org', '256-1771 Libero Road', 'Chiusa Sclafani', 'Curaçao');
INSERT INTO public.users VALUES (86, 'Brody Calhoun', 'TQR53TRB2YM', '2020-09-24', '2020-02-23', 'imperdiet.dictum@nibhPhasellus.net', 'Ap #732-2436 Non Road', 'Musakhel', 'Namibia');
INSERT INTO public.users VALUES (87, 'Julian Suarez', 'OZW25JAD2AY', '2019-06-30', '2020-12-11', 'vel@mattisvelit.org', '5677 Morbi Street', 'La Estrella', 'Mauritius');
INSERT INTO public.users VALUES (88, 'Kessie Hobbs', 'QYM30ZHA3YD', '2020-09-12', '2020-12-15', 'eget.metus.In@lorem.com', '600-4315 Diam Rd.', 'Slough', 'Iraq');
INSERT INTO public.users VALUES (89, 'Wendy Shelton', 'XQT47RYQ8VH', '2020-12-29', '2020-12-27', 'rutrum@iaculisenim.net', 'Ap #717-867 Dis Road', 'Armstrong', 'Saint Pierre and Miquelon');
INSERT INTO public.users VALUES (90, 'Yen Warner', 'IWO23XIG3PR', '2019-08-13', '2019-06-27', 'Pellentesque@MaurismagnaDuis.edu', 'P.O. Box 449, 796 Pede St.', 'Orosei', 'Norfolk Island');
INSERT INTO public.users VALUES (91, 'Aiko Hansen', 'OKN44AIE8CJ', '2019-06-05', '2020-06-08', 'molestie.pharetra@augue.com', 'P.O. Box 306, 6945 Malesuada Ave', 'Melipeuco', 'Japan');
INSERT INTO public.users VALUES (92, 'Cooper Oliver', 'OZZ85FKR2UG', '2020-04-11', '2021-04-03', 'tellus@inmagna.net', '8021 Quis, Road', 'Cincinnati', 'Montenegro');
INSERT INTO public.users VALUES (93, 'Francesca Cook', 'LZF84ZBD3PJ', '2020-06-27', '2019-12-16', 'quam.vel.sapien@egestashendreritneque.edu', 'P.O. Box 859, 3665 Vel, St.', 'Chiny', 'Viet Nam');
INSERT INTO public.users VALUES (94, 'David Strickland', 'ARR55SBH9JM', '2020-02-25', '2019-09-08', 'tellus.sem.mollis@congue.co.uk', '722 Pretium Rd.', 'Nocciano', 'Greenland');
INSERT INTO public.users VALUES (95, 'Preston Russo', 'WFR94PMN7CV', '2019-09-17', '2021-02-01', 'sed.sapien@risusDonec.com', 'Ap #200-9081 A Street', 'Miranda', 'Christmas Island');
INSERT INTO public.users VALUES (96, 'Nathaniel Johns', 'LIW68HDQ5HF', '2020-12-10', '2021-02-20', 'libero.at.auctor@Nam.co.uk', 'Ap #702-4413 Placerat, Av.', 'Savannah', 'France');
INSERT INTO public.users VALUES (97, 'Debra Jacobs', 'TLQ41REL4EH', '2020-10-18', '2020-08-02', 'sociosqu.ad.litora@sodales.ca', 'P.O. Box 761, 2992 Eu St.', 'Cuernavaca', 'Peru');
INSERT INTO public.users VALUES (98, 'Jerome Hobbs', 'KMM01ZMF0DJ', '2019-10-26', '2019-08-22', 'lobortis.tellus.justo@orci.co.uk', 'Ap #295-8360 In St.', 'Pondicherry', 'Iceland');
INSERT INTO public.users VALUES (99, 'Abbot Webster', 'HME51OXJ9MV', '2019-08-12', '2019-05-30', 'Proin@montesnascetur.com', 'P.O. Box 614, 9076 Tristique Street', 'Pellizzano', 'Northern Mariana Islands');
INSERT INTO public.users VALUES (100, 'Libby Becker', 'QEA02FMU3JX', '2020-04-03', '2020-03-11', 'mattis.ornare.lectus@parturient.co.uk', '2418 Amet, Rd.', 'Villarrica', 'Russian Federation');


--
-- TOC entry 3101 (class 0 OID 19560)
-- Dependencies: 215
-- Data for Name: users_contenido_ratings; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users_contenido_ratings VALUES (1, 85, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (2, 69, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (3, 99, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (4, 97, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (5, 66, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (6, 45, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (7, 23, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (8, 19, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (9, 29, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (10, 93, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (11, 85, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (12, 6, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (13, 28, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (14, 63, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (15, 33, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (16, 56, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (17, 17, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (18, 18, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (19, 66, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (20, 38, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (21, 90, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (22, 66, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (23, 75, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (24, 42, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (25, 100, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (26, 60, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (27, 55, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (28, 73, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (29, 65, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (30, 26, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (31, 15, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (32, 68, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (33, 88, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (34, 9, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (35, 55, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (36, 6, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (37, 7, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (38, 74, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (39, 86, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (40, 23, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (41, 21, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (42, 65, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (43, 18, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (44, 29, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (45, 11, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (46, 17, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (47, 94, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (48, 54, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (49, 43, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (50, 69, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (51, 25, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (52, 99, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (53, 74, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (54, 44, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (55, 18, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (56, 39, 1, 9);
INSERT INTO public.users_contenido_ratings VALUES (57, 15, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (58, 81, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (59, 34, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (60, 15, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (61, 12, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (62, 61, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (63, 44, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (64, 98, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (65, 65, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (66, 17, 1, 9);
INSERT INTO public.users_contenido_ratings VALUES (67, 21, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (68, 79, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (69, 79, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (70, 79, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (71, 56, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (72, 55, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (73, 27, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (74, 88, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (75, 85, 1, 9);
INSERT INTO public.users_contenido_ratings VALUES (76, 93, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (77, 45, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (78, 12, 1, 2);
INSERT INTO public.users_contenido_ratings VALUES (79, 17, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (80, 85, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (81, 41, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (82, 23, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (83, 46, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (84, 69, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (85, 12, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (86, 74, 1, 5);
INSERT INTO public.users_contenido_ratings VALUES (87, 78, 1, 9);
INSERT INTO public.users_contenido_ratings VALUES (88, 100, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (89, 75, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (90, 42, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (91, 88, 1, 3);
INSERT INTO public.users_contenido_ratings VALUES (92, 27, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (93, 8, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (94, 15, 1, 4);
INSERT INTO public.users_contenido_ratings VALUES (95, 72, 1, 6);
INSERT INTO public.users_contenido_ratings VALUES (96, 47, 1, 7);
INSERT INTO public.users_contenido_ratings VALUES (97, 25, 1, 10);
INSERT INTO public.users_contenido_ratings VALUES (98, 48, 1, 1);
INSERT INTO public.users_contenido_ratings VALUES (99, 69, 1, 8);
INSERT INTO public.users_contenido_ratings VALUES (100, 6, 1, 8);


--
-- TOC entry 3083 (class 0 OID 19431)
-- Dependencies: 197
-- Data for Name: users_contenido_wishlist; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users_contenido_wishlist VALUES (1, 75, 1);
INSERT INTO public.users_contenido_wishlist VALUES (2, 27, 1);
INSERT INTO public.users_contenido_wishlist VALUES (3, 70, 1);
INSERT INTO public.users_contenido_wishlist VALUES (4, 57, 1);
INSERT INTO public.users_contenido_wishlist VALUES (5, 46, 1);
INSERT INTO public.users_contenido_wishlist VALUES (6, 26, 1);
INSERT INTO public.users_contenido_wishlist VALUES (7, 63, 1);
INSERT INTO public.users_contenido_wishlist VALUES (8, 44, 1);
INSERT INTO public.users_contenido_wishlist VALUES (9, 38, 1);
INSERT INTO public.users_contenido_wishlist VALUES (10, 94, 1);
INSERT INTO public.users_contenido_wishlist VALUES (11, 92, 1);
INSERT INTO public.users_contenido_wishlist VALUES (12, 54, 1);
INSERT INTO public.users_contenido_wishlist VALUES (13, 93, 1);
INSERT INTO public.users_contenido_wishlist VALUES (14, 72, 1);
INSERT INTO public.users_contenido_wishlist VALUES (15, 100, 1);
INSERT INTO public.users_contenido_wishlist VALUES (16, 19, 1);
INSERT INTO public.users_contenido_wishlist VALUES (17, 100, 1);
INSERT INTO public.users_contenido_wishlist VALUES (18, 87, 1);
INSERT INTO public.users_contenido_wishlist VALUES (19, 28, 1);
INSERT INTO public.users_contenido_wishlist VALUES (20, 69, 1);
INSERT INTO public.users_contenido_wishlist VALUES (21, 61, 1);
INSERT INTO public.users_contenido_wishlist VALUES (22, 62, 1);
INSERT INTO public.users_contenido_wishlist VALUES (23, 58, 1);
INSERT INTO public.users_contenido_wishlist VALUES (24, 10, 1);
INSERT INTO public.users_contenido_wishlist VALUES (25, 50, 1);
INSERT INTO public.users_contenido_wishlist VALUES (26, 85, 1);
INSERT INTO public.users_contenido_wishlist VALUES (27, 58, 1);
INSERT INTO public.users_contenido_wishlist VALUES (28, 60, 1);
INSERT INTO public.users_contenido_wishlist VALUES (29, 22, 1);
INSERT INTO public.users_contenido_wishlist VALUES (30, 82, 1);
INSERT INTO public.users_contenido_wishlist VALUES (31, 72, 1);
INSERT INTO public.users_contenido_wishlist VALUES (32, 86, 1);
INSERT INTO public.users_contenido_wishlist VALUES (33, 80, 1);
INSERT INTO public.users_contenido_wishlist VALUES (34, 34, 1);
INSERT INTO public.users_contenido_wishlist VALUES (35, 63, 1);
INSERT INTO public.users_contenido_wishlist VALUES (36, 8, 1);
INSERT INTO public.users_contenido_wishlist VALUES (37, 2, 1);
INSERT INTO public.users_contenido_wishlist VALUES (38, 20, 1);
INSERT INTO public.users_contenido_wishlist VALUES (39, 34, 1);
INSERT INTO public.users_contenido_wishlist VALUES (40, 45, 1);
INSERT INTO public.users_contenido_wishlist VALUES (41, 52, 1);
INSERT INTO public.users_contenido_wishlist VALUES (42, 96, 1);
INSERT INTO public.users_contenido_wishlist VALUES (43, 61, 1);
INSERT INTO public.users_contenido_wishlist VALUES (44, 42, 1);
INSERT INTO public.users_contenido_wishlist VALUES (45, 71, 1);
INSERT INTO public.users_contenido_wishlist VALUES (46, 3, 1);
INSERT INTO public.users_contenido_wishlist VALUES (47, 35, 1);
INSERT INTO public.users_contenido_wishlist VALUES (48, 79, 1);
INSERT INTO public.users_contenido_wishlist VALUES (49, 1, 1);
INSERT INTO public.users_contenido_wishlist VALUES (50, 28, 1);
INSERT INTO public.users_contenido_wishlist VALUES (51, 24, 1);
INSERT INTO public.users_contenido_wishlist VALUES (52, 29, 1);
INSERT INTO public.users_contenido_wishlist VALUES (53, 62, 1);
INSERT INTO public.users_contenido_wishlist VALUES (54, 41, 1);
INSERT INTO public.users_contenido_wishlist VALUES (55, 51, 1);
INSERT INTO public.users_contenido_wishlist VALUES (56, 21, 1);
INSERT INTO public.users_contenido_wishlist VALUES (57, 22, 1);
INSERT INTO public.users_contenido_wishlist VALUES (58, 6, 1);
INSERT INTO public.users_contenido_wishlist VALUES (59, 46, 1);
INSERT INTO public.users_contenido_wishlist VALUES (60, 61, 1);
INSERT INTO public.users_contenido_wishlist VALUES (61, 50, 1);
INSERT INTO public.users_contenido_wishlist VALUES (62, 1, 1);
INSERT INTO public.users_contenido_wishlist VALUES (63, 11, 1);
INSERT INTO public.users_contenido_wishlist VALUES (64, 56, 1);
INSERT INTO public.users_contenido_wishlist VALUES (65, 6, 1);
INSERT INTO public.users_contenido_wishlist VALUES (66, 25, 1);
INSERT INTO public.users_contenido_wishlist VALUES (67, 15, 1);
INSERT INTO public.users_contenido_wishlist VALUES (68, 40, 1);
INSERT INTO public.users_contenido_wishlist VALUES (69, 89, 1);
INSERT INTO public.users_contenido_wishlist VALUES (70, 46, 1);
INSERT INTO public.users_contenido_wishlist VALUES (71, 77, 1);
INSERT INTO public.users_contenido_wishlist VALUES (72, 31, 1);
INSERT INTO public.users_contenido_wishlist VALUES (73, 53, 1);
INSERT INTO public.users_contenido_wishlist VALUES (74, 85, 1);
INSERT INTO public.users_contenido_wishlist VALUES (75, 13, 1);
INSERT INTO public.users_contenido_wishlist VALUES (76, 75, 1);
INSERT INTO public.users_contenido_wishlist VALUES (77, 44, 1);
INSERT INTO public.users_contenido_wishlist VALUES (78, 55, 1);
INSERT INTO public.users_contenido_wishlist VALUES (79, 18, 1);
INSERT INTO public.users_contenido_wishlist VALUES (80, 36, 1);
INSERT INTO public.users_contenido_wishlist VALUES (81, 33, 1);
INSERT INTO public.users_contenido_wishlist VALUES (82, 16, 1);
INSERT INTO public.users_contenido_wishlist VALUES (83, 87, 1);
INSERT INTO public.users_contenido_wishlist VALUES (84, 45, 1);
INSERT INTO public.users_contenido_wishlist VALUES (85, 71, 1);
INSERT INTO public.users_contenido_wishlist VALUES (86, 19, 1);
INSERT INTO public.users_contenido_wishlist VALUES (87, 82, 1);
INSERT INTO public.users_contenido_wishlist VALUES (88, 97, 1);
INSERT INTO public.users_contenido_wishlist VALUES (89, 2, 1);
INSERT INTO public.users_contenido_wishlist VALUES (90, 44, 1);
INSERT INTO public.users_contenido_wishlist VALUES (91, 29, 1);
INSERT INTO public.users_contenido_wishlist VALUES (92, 68, 1);
INSERT INTO public.users_contenido_wishlist VALUES (93, 58, 1);
INSERT INTO public.users_contenido_wishlist VALUES (94, 81, 1);
INSERT INTO public.users_contenido_wishlist VALUES (95, 62, 1);
INSERT INTO public.users_contenido_wishlist VALUES (96, 96, 1);
INSERT INTO public.users_contenido_wishlist VALUES (97, 36, 1);
INSERT INTO public.users_contenido_wishlist VALUES (98, 6, 1);
INSERT INTO public.users_contenido_wishlist VALUES (99, 20, 1);
INSERT INTO public.users_contenido_wishlist VALUES (100, 91, 1);
INSERT INTO public.users_contenido_wishlist VALUES (101, 1, 1);


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 198
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 1, false);


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 200
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 10, true);


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 202
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 7, true);


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 204
-- Name: shows_actors_show_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shows_actors_show_actor_id_seq', 1, true);


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 206
-- Name: shows_chapters_shows_chapters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shows_chapters_shows_chapters_id_seq', 8, true);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 208
-- Name: shows_seasons_show_season_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shows_seasons_show_season_id_seq', 6, true);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 210
-- Name: studios_studio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.studios_studio_id_seq', 2, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 227
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_id_i18n_seq', 1, false);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 229
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_value_id_i18n_value_seq', 1, false);


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 220
-- Name: trole_id_rolename_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_id_rolename_seq', 1, false);


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 231
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_server_permission_id_role_server_permission_seq', 1, false);


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 222
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tserver_permission_id_server_permission_seq', 1, false);


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 225
-- Name: tsetting_id_setting_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tsetting_id_setting_seq', 1, false);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 216
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuser_role_id_user_role_seq', 1, false);


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_movies_ratings_user_movie_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_movies_ratings_user_movie_rating_id_seq', 1, false);


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 196
-- Name: users_movies_wishlist_user_movie_whishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_movies_wishlist_user_movie_whishlist_id_seq', 1, false);


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 212
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- TOC entry 2909 (class 2606 OID 19444)
-- Name: cast actors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."cast"
    ADD CONSTRAINT actors_pkey PRIMARY KEY (cast_id);


--
-- TOC entry 2911 (class 2606 OID 19460)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 2913 (class 2606 OID 19471)
-- Name: content movies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT movies_pkey PRIMARY KEY (content_id);


--
-- TOC entry 2915 (class 2606 OID 19498)
-- Name: content_actors shows_actors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_actors
    ADD CONSTRAINT shows_actors_pkey PRIMARY KEY (content_actors_id);


--
-- TOC entry 2917 (class 2606 OID 68665)
-- Name: chapters shows_chapters_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chapters
    ADD CONSTRAINT shows_chapters_pk PRIMARY KEY (chapter_id);


--
-- TOC entry 2919 (class 2606 OID 19520)
-- Name: seasons shows_seasons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seasons
    ADD CONSTRAINT shows_seasons_pkey PRIMARY KEY (season_id);


--
-- TOC entry 2921 (class 2606 OID 19528)
-- Name: studios studios_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.studios
    ADD CONSTRAINT studios_pkey PRIMARY KEY (studio_id);


--
-- TOC entry 2942 (class 2606 OID 68779)
-- Name: ti18n ti18n_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n
    ADD CONSTRAINT ti18n_pkey PRIMARY KEY (id_i18n);


--
-- TOC entry 2944 (class 2606 OID 68790)
-- Name: ti18n_value ti18n_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value
    ADD CONSTRAINT ti18n_value_pkey PRIMARY KEY (id_i18n_value);


--
-- TOC entry 2938 (class 2606 OID 68762)
-- Name: trequest_statistics trequest_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics
    ADD CONSTRAINT trequest_statistics_pkey PRIMARY KEY (id_request_statistics);


--
-- TOC entry 2934 (class 2606 OID 68738)
-- Name: trole trole_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole
    ADD CONSTRAINT trole_pkey PRIMARY KEY (id_rolename);


--
-- TOC entry 2946 (class 2606 OID 68797)
-- Name: trole_server_permission trole_server_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT trole_server_permission_pkey PRIMARY KEY (id_role_server_permission);


--
-- TOC entry 2936 (class 2606 OID 68751)
-- Name: tserver_permission tserver_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tserver_permission
    ADD CONSTRAINT tserver_permission_pkey PRIMARY KEY (id_server_permission);


--
-- TOC entry 2940 (class 2606 OID 68772)
-- Name: tsetting tsetting_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsetting
    ADD CONSTRAINT tsetting_pkey PRIMARY KEY (id_setting);


--
-- TOC entry 2932 (class 2606 OID 68724)
-- Name: tuser tuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_pkey PRIMARY KEY (user_);


--
-- TOC entry 2929 (class 2606 OID 68699)
-- Name: tuser_role tuser_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_pkey PRIMARY KEY (id_user_role);


--
-- TOC entry 2927 (class 2606 OID 19565)
-- Name: users_contenido_ratings users_movies_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_ratings
    ADD CONSTRAINT users_movies_ratings_pkey PRIMARY KEY (user_contenido_rating_id);


--
-- TOC entry 2907 (class 2606 OID 19436)
-- Name: users_contenido_wishlist users_movies_wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_wishlist
    ADD CONSTRAINT users_movies_wishlist_pkey PRIMARY KEY (user_contenido_whishlist_id);


--
-- TOC entry 2923 (class 2606 OID 19555)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2925 (class 2606 OID 19557)
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- TOC entry 2930 (class 1259 OID 68725)
-- Name: sys_idx_sys_pk_10120_10121; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX sys_idx_sys_pk_10120_10121 ON public.tuser_preference USING btree (id_user_preference);


--
-- TOC entry 2953 (class 2606 OID 102095)
-- Name: content_actors content_actors_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_actors
    ADD CONSTRAINT content_actors_fk FOREIGN KEY (content_id) REFERENCES public.content(content_id);


--
-- TOC entry 2951 (class 2606 OID 68654)
-- Name: content fk_director; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk_director FOREIGN KEY (director_id) REFERENCES public."cast"(cast_id);


--
-- TOC entry 2959 (class 2606 OID 68798)
-- Name: trole_server_permission fk_trole_server_permission; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_trole_server_permission FOREIGN KEY (id_rolename) REFERENCES public.trole(id_rolename);


--
-- TOC entry 2960 (class 2606 OID 68803)
-- Name: trole_server_permission fk_tserver_permission; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_tserver_permission FOREIGN KEY (id_server_permission) REFERENCES public.tserver_permission(id_server_permission);


--
-- TOC entry 2949 (class 2606 OID 19917)
-- Name: content movies_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT movies_fk FOREIGN KEY (studio_id) REFERENCES public.studios(studio_id);


--
-- TOC entry 2950 (class 2606 OID 19922)
-- Name: content movies_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT movies_fk_1 FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id);


--
-- TOC entry 2952 (class 2606 OID 19952)
-- Name: content_actors shows_actors_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_actors
    ADD CONSTRAINT shows_actors_fk_1 FOREIGN KEY (actor_id) REFERENCES public."cast"(cast_id);


--
-- TOC entry 2954 (class 2606 OID 19957)
-- Name: chapters shows_chapters_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chapters
    ADD CONSTRAINT shows_chapters_fk FOREIGN KEY (season_id) REFERENCES public.seasons(season_id);


--
-- TOC entry 2955 (class 2606 OID 68659)
-- Name: seasons shows_seasons_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seasons
    ADD CONSTRAINT shows_seasons_fk FOREIGN KEY (show_id) REFERENCES public.content(content_id);


--
-- TOC entry 2958 (class 2606 OID 68814)
-- Name: tuser_role tuser_role_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_fk FOREIGN KEY (user_) REFERENCES public.tuser(user_);


--
-- TOC entry 2956 (class 2606 OID 19987)
-- Name: users_contenido_ratings users_movies_ratings_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_ratings
    ADD CONSTRAINT users_movies_ratings_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 2957 (class 2606 OID 19992)
-- Name: users_contenido_ratings users_movies_ratings_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_ratings
    ADD CONSTRAINT users_movies_ratings_fk_1 FOREIGN KEY (movie_id) REFERENCES public.content(content_id);


--
-- TOC entry 2947 (class 2606 OID 19997)
-- Name: users_contenido_wishlist users_movies_wishlist_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_wishlist
    ADD CONSTRAINT users_movies_wishlist_fk FOREIGN KEY (movie_id) REFERENCES public.content(content_id);


--
-- TOC entry 2948 (class 2606 OID 20002)
-- Name: users_contenido_wishlist users_movies_wishlist_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_contenido_wishlist
    ADD CONSTRAINT users_movies_wishlist_fk_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);


-- Completed on 2023-02-03 11:00:49

--
-- PostgreSQL database dump complete
--


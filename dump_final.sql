--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Debian 10.6-1.pgdg90+1)
-- Dumped by pg_dump version 10.6 (Debian 10.6-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO underwonder_remastered;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO underwonder_remastered;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO underwonder_remastered;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO underwonder_remastered;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO underwonder_remastered;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO underwonder_remastered;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO underwonder_remastered;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO underwonder_remastered;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO underwonder_remastered;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO underwonder_remastered;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO underwonder_remastered;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO underwonder_remastered;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: breakfast_items; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.breakfast_items (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    content text NOT NULL,
    price character varying(20) NOT NULL,
    weight character varying(20) NOT NULL,
    parent_id integer,
    bold boolean NOT NULL,
    content_eng text NOT NULL
);


ALTER TABLE public.breakfast_items OWNER TO underwonder_remastered;

--
-- Name: breakfast_items_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.breakfast_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.breakfast_items_id_seq OWNER TO underwonder_remastered;

--
-- Name: breakfast_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.breakfast_items_id_seq OWNED BY public.breakfast_items.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO underwonder_remastered;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO underwonder_remastered;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO underwonder_remastered;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO underwonder_remastered;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO underwonder_remastered;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO underwonder_remastered;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO underwonder_remastered;

--
-- Name: drink_categories; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.drink_categories (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    description text,
    description_eng text,
    parent_id integer
);


ALTER TABLE public.drink_categories OWNER TO underwonder_remastered;

--
-- Name: drink_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.drink_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drink_categories_id_seq OWNER TO underwonder_remastered;

--
-- Name: drink_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.drink_categories_id_seq OWNED BY public.drink_categories.id;


--
-- Name: drink_items; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.drink_items (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    content text NOT NULL,
    price character varying(20) NOT NULL,
    weight character varying(20) NOT NULL,
    category_id integer,
    content_eng text NOT NULL
);


ALTER TABLE public.drink_items OWNER TO underwonder_remastered;

--
-- Name: drink_items_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.drink_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drink_items_id_seq OWNER TO underwonder_remastered;

--
-- Name: drink_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.drink_items_id_seq OWNED BY public.drink_items.id;


--
-- Name: index_page_content; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.index_page_content (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    content text NOT NULL,
    content_eng text NOT NULL
);


ALTER TABLE public.index_page_content OWNER TO underwonder_remastered;

--
-- Name: index_page_content_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.index_page_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.index_page_content_id_seq OWNER TO underwonder_remastered;

--
-- Name: index_page_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.index_page_content_id_seq OWNED BY public.index_page_content.id;


--
-- Name: menu_categories; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.menu_categories (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    description text,
    description_eng text,
    parent_id integer
);


ALTER TABLE public.menu_categories OWNER TO underwonder_remastered;

--
-- Name: menu_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.menu_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_categories_id_seq OWNER TO underwonder_remastered;

--
-- Name: menu_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.menu_categories_id_seq OWNED BY public.menu_categories.id;


--
-- Name: menu_items; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.menu_items (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    content text NOT NULL,
    price character varying(20) NOT NULL,
    weight character varying(20) NOT NULL,
    category_id integer,
    content_eng text NOT NULL
);


ALTER TABLE public.menu_items OWNER TO underwonder_remastered;

--
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_id_seq OWNER TO underwonder_remastered;

--
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- Name: wine_categories; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.wine_categories (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    description text,
    description_eng text,
    parent_id integer
);


ALTER TABLE public.wine_categories OWNER TO underwonder_remastered;

--
-- Name: wine_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.wine_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wine_categories_id_seq OWNER TO underwonder_remastered;

--
-- Name: wine_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.wine_categories_id_seq OWNED BY public.wine_categories.id;


--
-- Name: wine_items; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.wine_items (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_eng character varying(120) NOT NULL,
    content text NOT NULL,
    price character varying(20) NOT NULL,
    weight character varying(20) NOT NULL,
    category_id integer,
    content_eng text NOT NULL
);


ALTER TABLE public.wine_items OWNER TO underwonder_remastered;

--
-- Name: wine_items_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.wine_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wine_items_id_seq OWNER TO underwonder_remastered;

--
-- Name: wine_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.wine_items_id_seq OWNED BY public.wine_items.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: breakfast_items id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.breakfast_items ALTER COLUMN id SET DEFAULT nextval('public.breakfast_items_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: drink_categories id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.drink_categories ALTER COLUMN id SET DEFAULT nextval('public.drink_categories_id_seq'::regclass);


--
-- Name: drink_items id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.drink_items ALTER COLUMN id SET DEFAULT nextval('public.drink_items_id_seq'::regclass);


--
-- Name: index_page_content id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.index_page_content ALTER COLUMN id SET DEFAULT nextval('public.index_page_content_id_seq'::regclass);


--
-- Name: menu_categories id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.menu_categories ALTER COLUMN id SET DEFAULT nextval('public.menu_categories_id_seq'::regclass);


--
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- Name: wine_categories id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.wine_categories ALTER COLUMN id SET DEFAULT nextval('public.wine_categories_id_seq'::regclass);


--
-- Name: wine_items id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.wine_items ALTER COLUMN id SET DEFAULT nextval('public.wine_items_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_group (id, name) FROM stdin;
1	Администратор
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	33
2	1	34
3	1	35
4	1	36
5	1	25
6	1	26
7	1	27
8	1	28
9	1	29
10	1	30
11	1	31
12	1	32
13	1	37
14	1	38
15	1	39
16	1	40
17	1	41
18	1	42
19	1	43
20	1	44
21	1	45
22	1	46
23	1	47
24	1	48
25	1	49
26	1	50
27	1	51
28	1	52
29	1	54
30	1	56
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Категория	7	add_menucategory
26	Can change Категория	7	change_menucategory
27	Can delete Категория	7	delete_menucategory
28	Can view Категория	7	view_menucategory
29	Can add Позиция	8	add_menuitem
30	Can change Позиция	8	change_menuitem
31	Can delete Позиция	8	delete_menuitem
32	Can view Позиция	8	view_menuitem
33	Can add Позиция завтрака	9	add_breakfastitem
34	Can change Позиция завтрака	9	change_breakfastitem
35	Can delete Позиция завтрака	9	delete_breakfastitem
36	Can view Позиция завтрака	9	view_breakfastitem
37	Can add Категория	10	add_winecategory
38	Can change Категория	10	change_winecategory
39	Can delete Категория	10	delete_winecategory
40	Can view Категория	10	view_winecategory
41	Can add Вино	11	add_wineitem
42	Can change Вино	11	change_wineitem
43	Can delete Вино	11	delete_wineitem
44	Can view Вино	11	view_wineitem
45	Can add Категория	12	add_drinkcategory
46	Can change Категория	12	change_drinkcategory
47	Can delete Категория	12	delete_drinkcategory
48	Can view Категория	12	view_drinkcategory
49	Can add Напиток	13	add_drinkitem
50	Can change Напиток	13	change_drinkitem
51	Can delete Напиток	13	delete_drinkitem
52	Can view Напиток	13	view_drinkitem
53	Can add Раздел на главной странице	14	add_section
54	Can change Раздел на главной странице	14	change_section
55	Can delete Раздел на главной странице	14	delete_section
56	Can view Раздел на главной странице	14	view_section
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$zeJdDCpXYX0n$0Dt80jSF99JZFQuHBfNF1XS8bsskT/rWejDOeGeYL3g=	2018-11-28 13:14:55.06671+00	t	admin				t	t	2018-11-28 02:06:57.921487+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: breakfast_items; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.breakfast_items (id, title, title_eng, content, price, weight, parent_id, bold, content_eng) FROM stdin;
1	Київський	Київський	сирники, оладки з яблук та млинці з сиром, мед, сметана	142	400	\N	t	сирники, оладки з яблук та млинці з сиром, мед, сметана
2	Англійський	Англійський	ковбаски домашні, оката яєчня з двох яєць, бекон, квасоля з овочами, тости	138	300	\N	t	ковбаски домашні, оката яєчня з двох яєць, бекон, квасоля з овочами, тости
3	Омлет або оката яєчня (з трьох яєць)	Омлет або оката яєчня (з трьох яєць)		114	150	\N	f	
4	томати/ перець болгарський/ цукіні/ броколі/ цибуля порей	томати/ перець болгарський/ цукіні/ броколі/ цибуля порей		20	50	3	f	
5	брі/ бергадер/ пекоріно/ пармезан/ моцарелла	брі/ бергадер/ пекоріно/ пармезан/ моцарелла		36	25	3	f	
6	лосось пряний	лосось пряний		62	30	3	f	
7	бекон	бекон		34	30	3	f	
8	Яйця-пашот на тостах з сиром брі	Яйця-пашот на тостах з сиром брі		0.1	240	\N	f	
9	Вівсяна каша з яблуком і родзинками	Вівсяна каша з яблуком і родзинками		72	250	\N	f	
10	Вівсяна каша з курагою та фініками	Вівсяна каша з курагою та фініками		74	250	\N	f	
11	Оладки з яблук із сметаною та медом	Оладки з яблук із сметаною та медом		78	230	\N	f	
12	Млинці з сиром та вишнею	Млинці з сиром та вишнею		98	220	\N	f	
13	Сирники з родзинками та сметаною	Сирники з родзинками та сметаною		123	340	\N	f	
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-11-28 02:10:49.954552+00	1	Київський	1	[{"added": {}}]	9	1
2	2018-11-28 02:11:19.221381+00	2	Англійський	1	[{"added": {}}]	9	1
3	2018-11-28 02:11:41.425497+00	3	Омлет або оката яєчня (з трьох яєць)	1	[{"added": {}}]	9	1
4	2018-11-28 02:12:07.380503+00	4	томати/ перець болгарський/ цукіні/ броколі/ цибуля порей	1	[{"added": {}}]	9	1
5	2018-11-28 02:12:35.114169+00	5	брі/ бергадер/ пекоріно/ пармезан/ моцарелла	1	[{"added": {}}]	9	1
6	2018-11-28 02:12:54.169325+00	6	лосось пряний	1	[{"added": {}}]	9	1
7	2018-11-28 02:13:11.548525+00	7	бекон	1	[{"added": {}}]	9	1
8	2018-11-28 02:13:55.726703+00	8	Яйця-пашот на тостах з сиром брі	1	[{"added": {}}]	9	1
9	2018-11-28 02:14:13.950435+00	9	Вівсяна каша з яблуком і родзинками	1	[{"added": {}}]	9	1
10	2018-11-28 02:14:31.377675+00	10	Вівсяна каша з курагою та фініками	1	[{"added": {}}]	9	1
11	2018-11-28 02:14:49.7275+00	11	Оладки з яблук із сметаною та медом	1	[{"added": {}}]	9	1
12	2018-11-28 02:15:08.883708+00	12	Млинці з сиром та вишнею	1	[{"added": {}}]	9	1
13	2018-11-28 02:15:27.610366+00	13	Сирники з родзинками та сметаною	1	[{"added": {}}]	9	1
14	2018-11-28 02:15:49.755323+00	1	Закуски	1	[{"added": {}}]	7	1
15	2018-11-28 02:16:01.567893+00	2	Салати	1	[{"added": {}}]	7	1
16	2018-11-28 02:16:11.938693+00	3	Карпаччо та тартари	1	[{"added": {}}]	7	1
17	2018-11-28 02:16:19.805806+00	4	Супи	1	[{"added": {}}]	7	1
18	2018-11-28 02:16:33.376031+00	5	Паста та різотто	1	[{"added": {}}]	7	1
19	2018-11-28 02:16:42.888864+00	6	Риба та морепродукти	1	[{"added": {}}]	7	1
20	2018-11-28 02:16:57.53178+00	7	М`ясо та птиця	1	[{"added": {}}]	7	1
21	2018-11-28 02:17:04.872831+00	8	Десерти	1	[{"added": {}}]	7	1
22	2018-11-28 02:17:34.645474+00	1	Тірамісу	1	[{"added": {}}]	8	1
23	2018-11-28 02:17:56.923976+00	2	Крем-брюле	1	[{"added": {}}]	8	1
24	2018-11-28 02:18:16.869762+00	3	Панна котта	1	[{"added": {}}]	8	1
25	2018-11-28 02:18:41.167773+00	4	Шоколадний моале з лавандовим морозивом	1	[{"added": {}}]	8	1
26	2018-11-28 02:18:57.834408+00	5	Чізкейк	1	[{"added": {}}]	8	1
27	2018-11-28 02:19:16.517137+00	6	Морозиво від шефа	1	[{"added": {}}]	8	1
28	2018-11-28 02:19:35.322503+00	7	Сорбет	1	[{"added": {}}]	8	1
29	2018-11-28 02:20:02.54643+00	8	Бістека Фіорентина	1	[{"added": {}}]	8	1
30	2018-11-28 02:20:24.00538+00	9	Філе міньйон з трюфельним картопляним гратеном і винним соусом	1	[{"added": {}}]	8	1
31	2018-11-28 02:20:42.402113+00	10	Стейк рібай	1	[{"added": {}}]	8	1
32	2018-11-28 02:21:01.63377+00	11	Рублений біфштекс, обсмажений на грилі, зі спаржевою квасолею та беконом	1	[{"added": {}}]	8	1
33	2018-11-28 02:21:23.339355+00	12	Качина ніжка конфі з яблучно-гірчичним пюре, томленою грушею і соусом з чорної смородини	1	[{"added": {}}]	8	1
34	2018-11-28 02:21:45.400035+00	13	Філе курчати з картопляним пюре, шпинатом і вершковим соусом	1	[{"added": {}}]	8	1
35	2018-11-28 02:22:08.677351+00	14	Філе скандинавської форелі зі спаржею та соусом із чорнил каракатиці	1	[{"added": {}}]	8	1
36	2018-11-28 02:23:40.96748+00	15	Дорадо з овочами, "Папільот", або запечена в солі	1	[{"added": {}}]	8	1
37	2018-11-28 02:23:58.768868+00	16	Філе морського окуня з пюре із цвітної капусти, лимонним кіноа та соусом з мідій	1	[{"added": {}}]	8	1
38	2018-11-28 02:24:16.425317+00	17	Восьминіг з буряково-кавовим пюре, запеченим солодким буряком і бататом	1	[{"added": {}}]	8	1
39	2018-11-28 02:24:35.894961+00	18	Мідії з овочами і лемонграсом у вершковому соусі	1	[{"added": {}}]	8	1
40	2018-11-28 02:25:06.706133+00	5	Паста та різотто	2	[{"changed": {"fields": ["description", "description_eng"]}}]	7	1
41	2018-11-28 02:26:00.102158+00	19	Спагетті неро з креветками та винно-вершковим соусом *	1	[{"added": {}}]	8	1
42	2018-11-28 02:26:26.387522+00	20	Спагетті La Carbonara Roma	1	[{"added": {}}]	8	1
43	2018-11-28 02:26:53.758782+00	21	Тальятелле з М`ясним рагу *	1	[{"added": {}}]	8	1
44	2018-11-28 02:27:25.457008+00	22	Равіолі неро з лососем, сирним соусом і трюфельним кремом *	1	[{"added": {}}]	8	1
45	2018-11-28 02:27:45.733787+00	23	Равіолі з підкопченим м&#39;ясом кролика та вершковим соусом з Порто *	1	[{"added": {}}]	8	1
46	2018-11-28 02:28:07.390145+00	24	Шпинатові каннеллоні з грибами та рікоттою *	1	[{"added": {}}]	8	1
47	2018-11-28 02:28:27.531803+00	25	Різотто з гребінцями, білими грибами та трюфельною пастою	1	[{"added": {}}]	8	1
48	2018-11-28 02:28:49.442713+00	26	Різотто з копченим гарбузом і горгонцолою дольче	1	[{"added": {}}]	8	1
49	2018-11-28 02:29:17.697329+00	27	Мінестроне	1	[{"added": {}}]	8	1
50	2018-11-28 02:29:41.431547+00	28	Гарбузово-імбирний крем-суп із креветками	1	[{"added": {}}]	8	1
51	2018-11-28 02:30:08.746809+00	29	П`ємонтський рибний суп	1	[{"added": {}}]	8	1
52	2018-11-28 02:30:31.830358+00	30	Баклажановий крем-суп зі шпинатом, копченою вишнею, сиром Гауда та мигдальним горіхом	1	[{"added": {}}]	8	1
53	2018-11-28 02:31:29.539193+00	31	Карпаччо з лосося з апельсиново-гірчичним соусом	1	[{"added": {}}]	8	1
54	2018-11-28 02:31:53.719102+00	32	Карпаччо із телятини з пармезаном і трюфельною олією	1	[{"added": {}}]	8	1
55	2018-11-28 02:32:20.582128+00	33	Тартар зі скандинавської форелі з ніжним кремом із авокадо	1	[{"added": {}}]	8	1
56	2018-11-28 02:32:40.038109+00	34	Тартар із телятини з трюфельним кремом	1	[{"added": {}}]	8	1
57	2018-11-28 02:34:37.211707+00	35	Салат Under Wonder Green	1	[{"added": {}}]	8	1
58	2018-11-28 02:35:00.519505+00	36	Салат ромен з копченим філе індички (або зі смаженими креветками) та анчоусовою заправкою	1	[{"added": {}}]	8	1
59	2018-11-28 02:35:21.230335+00	37	Салат з пряним лососем, авокадо та сиром Шавру	1	[{"added": {}}]	8	1
60	2018-11-28 02:35:45.415286+00	38	Салат з копченим курчам, гострим манго, авокадо і полуницею	1	[{"added": {}}]	8	1
61	2018-11-28 02:36:02.666814+00	39	Теплий салат з бебі кальмарами і овочевою сальсою	1	[{"added": {}}]	8	1
62	2018-11-28 02:36:22.516543+00	40	Теплий салат із телятини з цукіні, копченою вишнею і блакитним сиром	1	[{"added": {}}]	8	1
63	2018-11-28 02:36:50.312841+00	41	Дует брускет із перцем-конфі, козячим сиром і овочевою сапьсою, та з маринованим лососем і каперсами	1	[{"added": {}}]	8	1
64	2018-11-28 02:37:24.739214+00	42	Плато італійських антипасто	1	[{"added": {}}]	8	1
65	2018-11-28 02:37:47.262785+00	43	Севіче із сибаса з кіноа та манго-чилі соусом	1	[{"added": {}}]	8	1
66	2018-11-28 02:38:04.376307+00	44	Моцарелла Di Buffala з віяленими томатами та соусом песто	1	[{"added": {}}]	8	1
67	2018-11-28 02:38:22.704782+00	45	Паштет із печінки цесарки у вишневій глазурі	1	[{"added": {}}]	8	1
68	2018-11-28 02:38:48.72338+00	46	Вітелло тоннато	1	[{"added": {}}]	8	1
69	2018-11-28 02:39:21.779648+00	47	Melanzane alla parmigiana	1	[{"added": {}}]	8	1
70	2018-11-28 02:39:40.345582+00	48	Грибне рагу з трюфельним соусом і пармезаном	1	[{"added": {}}]	8	1
71	2018-11-28 02:39:57.808649+00	49	Хлібний кошик	1	[{"added": {}}]	8	1
72	2018-11-28 02:40:46.524638+00	1	Шампанське	1	[{"added": {}}]	10	1
73	2018-11-28 02:40:55.926262+00	2	Шампанське -> Ігристі вина	1	[{"added": {}}]	10	1
74	2018-11-28 02:41:21.437957+00	3	Франція	1	[{"added": {}}]	10	1
75	2018-11-28 02:41:29.398913+00	4	Франція -> Бордо	1	[{"added": {}}]	10	1
76	2018-11-28 02:41:38.338668+00	5	Франція -> Бургундія	1	[{"added": {}}]	10	1
77	2018-11-28 02:41:50.323836+00	6	Франція -> Долина Рони	1	[{"added": {}}]	10	1
78	2018-11-28 02:42:04.419125+00	7	Німеччина	1	[{"added": {}}]	10	1
79	2018-11-28 02:42:19.008613+00	8	Україна	1	[{"added": {}}]	10	1
80	2018-11-28 02:42:33.038664+00	9	Домашнє вино	1	[{"added": {}}]	10	1
81	2018-11-28 02:42:42.10151+00	10	Вина з Еноматіка	1	[{"added": {}}]	10	1
82	2018-11-28 02:42:56.499044+00	11	Італія	1	[{"added": {}}]	10	1
83	2018-11-28 02:43:03.753047+00	12	Італія -> Абруццо	1	[{"added": {}}]	10	1
84	2018-11-28 02:43:14.62596+00	13	Італія -> Альто Адідже	1	[{"added": {}}]	10	1
85	2018-11-28 02:43:31.367903+00	14	Італія -> П'ємонт	1	[{"added": {}}]	10	1
86	2018-11-28 02:43:40.626156+00	15	Італія -> Венето	1	[{"added": {}}]	10	1
87	2018-11-28 02:43:52.896849+00	16	Італія -> Тоскана	1	[{"added": {}}]	10	1
88	2018-11-28 02:44:01.584266+00	17	Італія -> Сицилія	1	[{"added": {}}]	10	1
89	2018-11-28 02:44:08.544515+00	18	Нова Зеландія	1	[{"added": {}}]	10	1
90	2018-11-28 02:44:14.33821+00	19	Австралія	1	[{"added": {}}]	10	1
91	2018-11-28 02:44:20.189895+00	20	Чилі	1	[{"added": {}}]	10	1
92	2018-11-28 02:44:25.744667+00	21	Аргентина	1	[{"added": {}}]	10	1
93	2018-11-28 02:44:31.402864+00	22	ПАР	1	[{"added": {}}]	10	1
94	2018-11-28 02:44:37.577178+00	23	Португалія	1	[{"added": {}}]	10	1
95	2018-11-28 02:45:11.478546+00	1	Prosecco Millesimato (Canti) DOC 0.75L	1	[{"added": {}}]	11	1
96	2018-11-28 02:45:24.927887+00	2	Senior Valdoniadene Prosecco Superiore (Bortolomiol) DOC 0.2L	1	[{"added": {}}]	11	1
97	2018-11-28 02:45:41.462627+00	3	Prior Valdobbiadene Prosecco Superiore (Bortolomiol) DOCG 0.75L	1	[{"added": {}}]	11	1
98	2018-11-28 02:45:56.626968+00	4	Cuvee Imperiale Brut (Guido Berlucchi) DOCG 0.375L	1	[{"added": {}}]	11	1
99	2018-11-28 02:46:11.960471+00	5	Cuvee Imperiale Max Rose (Guido Berlucchi) DOCG 0.75L	1	[{"added": {}}]	11	1
100	2018-11-28 02:46:27.933776+00	6	Brut Classic (Deutz) AOP 0.75L	1	[{"added": {}}]	11	1
101	2018-11-28 02:46:41.677413+00	7	Alzania Vino Frizzante Bianco (Alzania) 0.15L	1	[{"added": {}}]	11	1
102	2018-11-28 02:46:57.739738+00	8	Chateau Boisson Blanc (Bordeaux) AOP	1	[{"added": {}}]	11	1
103	2018-11-28 02:47:12.248908+00	9	Chateau Vieux Frene (Bordeaux) AOP	1	[{"added": {}}]	11	1
104	2018-11-28 02:47:27.200396+00	10	Chateau Vieux du Terme (Haut - Medoc) AOP	1	[{"added": {}}]	11	1
105	2018-11-28 02:47:44.740533+00	11	Chateau de Sergue (Laland De Pomerol) AOP	1	[{"added": {}}]	11	1
106	2018-11-28 02:47:59.056555+00	12	Chablis (Domaine Du Colombier) AOP	1	[{"added": {}}]	11	1
107	2018-11-28 02:48:16.026667+00	13	Chabli Premier Cru Vaucoupin (Domain Du Colombier) AOP	1	[{"added": {}}]	11	1
108	2018-11-28 02:48:30.929483+00	14	Bourgogne Chardonnay Vieilles Vigne (Domain Du Rochebin) AOP	1	[{"added": {}}]	11	1
109	2018-11-28 02:48:46.937962+00	15	Bourgogne Pinot Noir Vicomtee  (Doubet Naudin) AOP	1	[{"added": {}}]	11	1
110	2018-11-28 02:49:02.80837+00	16	Cotes du Rhone La Grivelier Pere Anselme white (Brotte) AOP	1	[{"added": {}}]	11	1
111	2018-11-28 02:49:16.368144+00	17	Cotes De Provence Pere Anselme (Brotte) AOP	1	[{"added": {}}]	11	1
112	2018-11-28 02:49:44.895458+00	18	Reserve de l'Aube Pere Anselme Syrah-Merlo (Brotte) AOP	1	[{"added": {}}]	11	1
113	2018-11-28 02:50:07.256773+00	19	Chateau L'Ermitage (Ambiance Rhone Terroirs) AOP	1	[{"added": {}}]	11	1
114	2018-11-28 02:50:24.023433+00	20	Peter Nicolay Riesling Trocken (Dr. Heidennemans-Bergweiler)	1	[{"added": {}}]	11	1
115	2018-11-28 02:50:40.292844+00	21	Riesling (Dr. Loosen) Qualitatswein	1	[{"added": {}}]	11	1
116	2018-11-28 02:50:55.556903+00	22	Gewurztraminer Villa Wolf (J.L.Wolf) Qualitatswein	1	[{"added": {}}]	11	1
117	2018-11-28 02:51:15.525541+00	23	Pinot Noir (Villa Wolf) Qualitatswein	1	[{"added": {}}]	11	1
118	2018-11-28 10:31:13.972899+00	24	Шардоне сухое сортовое - Chardonnay (Колонист)	1	[{"added": {}}]	11	1
119	2018-11-28 10:31:28.21824+00	25	Каберне сухое сортовое - Cabernet (Колонист)	1	[{"added": {}}]	11	1
120	2018-11-28 10:31:43.66632+00	26	Одеське чорне сухе сортове	1	[{"added": {}}]	11	1
121	2018-11-28 10:31:58.185487+00	27	White House Wine	1	[{"added": {}}]	11	1
122	2018-11-28 10:32:11.620519+00	28	Red House Wine	1	[{"added": {}}]	11	1
123	2018-11-28 10:32:34.432777+00	29	Sancerre Le Chene (Lucien Crochet)	1	[{"added": {}}]	11	1
124	2018-11-28 10:32:49.998777+00	30	Alastro (Planeta)	1	[{"added": {}}]	11	1
125	2018-11-28 10:33:10.813365+00	31	Corvar Rosso Veroneze (Zeni)	1	[{"added": {}}]	11	1
126	2018-11-28 10:33:23.870014+00	32	Sangiovese Gamla (Golan Heights Winery)	1	[{"added": {}}]	11	1
127	2018-11-28 10:33:39.406422+00	33	Pecorino Bianco (Illuminati Dino) DOC	1	[{"added": {}}]	11	1
128	2018-11-28 10:33:55.796381+00	34	Santoro Muntepulciano d'Abruzzo (San Marzano) DOC	1	[{"added": {}}]	11	1
129	2018-11-28 10:34:09.008108+00	35	Santoro Sangiovese Terre di Chieti (San Marzano) IGT	1	[{"added": {}}]	11	1
130	2018-11-28 10:34:25.347507+00	36	Pfefferer Moscato Classic Line (Colterenzio) DOC	1	[{"added": {}}]	11	1
131	2018-11-28 10:34:36.388847+00	37	Muller Thurgau Dolomiti Classic Line (Colterenzio)	1	[{"added": {}}]	11	1
132	2018-11-28 10:34:52.512953+00	38	Gavi il Doge (Broglia) DOCG	1	[{"added": {}}]	11	1
133	2018-11-28 10:35:05.128456+00	39	Gavi Villa Scolca (La Scolca) DOCG	1	[{"added": {}}]	11	1
134	2018-11-28 10:35:18.824116+00	40	Dolcetto d'Alba Munfrina (Pelissero) DOC	1	[{"added": {}}]	11	1
135	2018-11-28 10:35:34.69902+00	41	Barbaresco Roberto Fossati (Guido Mazzarello) DOCG	1	[{"added": {}}]	11	1
136	2018-11-28 10:35:47.134891+00	42	Barolo Serralunga (Schiavenza) DOCG	1	[{"added": {}}]	11	1
137	2018-11-28 10:36:03.302572+00	43	Pinot GR.delle Venezia Fiorile Cesari IGT	1	[{"added": {}}]	11	1
138	2018-11-28 10:36:23.874189+00	44	Soave Il Seleze (I Stefanini) DOC	1	[{"added": {}}]	11	1
139	2018-11-28 10:36:39.174443+00	45	Valpolicella, Cantine di Ora (Schenk) DOC	1	[{"added": {}}]	11	1
140	2018-11-28 10:36:52.507555+00	46	Amarona della Valpolicella Classico (Cesari) DOCG	1	[{"added": {}}]	11	1
141	2018-11-28 10:37:05.698339+00	47	Chianto Classico Riserva (Schenk) DOCG	1	[{"added": {}}]	11	1
142	2018-11-28 10:41:59.024079+00	1	Аперетиви	1	[{"added": {}}]	12	1
143	2018-11-28 10:42:05.794772+00	2	Горілка	1	[{"added": {}}]	12	1
144	2018-11-28 10:42:13.585763+00	3	Ром	1	[{"added": {}}]	12	1
145	2018-11-28 10:42:15.7703+00	4	Джин	1	[{"added": {}}]	12	1
146	2018-11-28 10:42:21.744887+00	5	Текіла	1	[{"added": {}}]	12	1
147	2018-11-28 10:42:27.673725+00	6	Віскі	1	[{"added": {}}]	12	1
148	2018-11-28 10:42:33.20735+00	7	Коньяк	1	[{"added": {}}]	12	1
149	2018-11-28 10:42:38.483784+00	8	Бренді	1	[{"added": {}}]	12	1
150	2018-11-28 10:42:43.788165+00	9	Лікери	1	[{"added": {}}]	12	1
151	2018-11-28 10:42:49.404943+00	10	Спеціальні вина	1	[{"added": {}}]	12	1
152	2018-11-28 10:42:54.112798+00	11	Пиво	1	[{"added": {}}]	12	1
153	2018-11-28 10:42:59.735038+00	12	Вода	1	[{"added": {}}]	12	1
154	2018-11-28 10:43:06.576405+00	13	Свіжовижатий сік	1	[{"added": {}}]	12	1
155	2018-11-28 10:43:10.904426+00	14	Кава ILLY	1	[{"added": {}}]	12	1
156	2018-11-28 10:43:16.396895+00	15	Чай	1	[{"added": {}}]	12	1
157	2018-11-28 10:43:35.473188+00	1	Loose tea Daman	1	[{"added": {}}]	13	1
158	2018-11-28 10:43:48.319262+00	2	Espresso	1	[{"added": {}}]	13	1
159	2018-11-28 10:43:57.558503+00	3	Americano	1	[{"added": {}}]	13	1
160	2018-11-28 10:44:25.253892+00	4	Espresso Macchiato	1	[{"added": {}}]	13	1
161	2018-11-28 10:44:36.509447+00	5	Cappuccino	1	[{"added": {}}]	13	1
162	2018-11-28 10:44:48.093069+00	6	Latte Macchiato	1	[{"added": {}}]	13	1
163	2018-11-28 10:45:17.555683+00	7	Молоко (100мл.)	1	[{"added": {}}]	13	1
164	2018-11-28 10:45:32.119816+00	8	Апельсин, яблоко, грейпфрут, морква	1	[{"added": {}}]	13	1
165	2018-11-28 10:45:48.824354+00	9	Селера	1	[{"added": {}}]	13	1
166	2018-11-28 10:45:57.723179+00	10	Ананас	1	[{"added": {}}]	13	1
167	2018-11-28 10:46:20.105233+00	11	Rocchetta(Italy)	1	[{"added": {}}]	13	1
168	2018-11-28 10:46:38.62276+00	12	VODA UA (Ukraine)	1	[{"added": {}}]	13	1
169	2018-11-28 10:47:00.863829+00	13	Coca Cola	1	[{"added": {}}]	13	1
170	2018-11-28 10:47:26.379766+00	14	Royal Club Tonic water	1	[{"added": {}}]	13	1
171	2018-11-28 10:47:43.336661+00	15	Royal Club Soda water	1	[{"added": {}}]	13	1
172	2018-11-28 10:48:01.681135+00	16	Leffe (light, dark)	1	[{"added": {}}]	13	1
173	2018-11-28 10:48:20.656155+00	17	Palm (n/a)	1	[{"added": {}}]	13	1
174	2018-11-28 10:48:40.346437+00	18	Sherry Oloroso Alburejo	1	[{"added": {}}]	13	1
175	2018-11-28 10:49:07.210189+00	19	Port Sandeman Towny 10 y.o	1	[{"added": {}}]	13	1
176	2018-11-28 10:49:23.269022+00	20	Dulce de Moscatel Gran Feudo (Bodegas Julian Chivite	1	[{"added": {}}]	13	1
177	2018-11-28 10:49:34.674159+00	20	Dulce de Moscatel Gran Feudo (Bodegas Julian Chivite)	2	[{"changed": {"fields": ["title", "title_eng"]}}]	13	1
178	2018-11-28 10:49:53.882028+00	21	Baileys	1	[{"added": {}}]	13	1
179	2018-11-28 10:50:07.740323+00	22	Cointreau	1	[{"added": {}}]	13	1
180	2018-11-28 10:50:18.389452+00	23	Kahlua	1	[{"added": {}}]	13	1
181	2018-11-28 10:50:30.964126+00	24	Sambuca Ramazotti	1	[{"added": {}}]	13	1
182	2018-11-28 10:50:46.771112+00	25	Grappa Berta (Sant’Antone, Valdavi)	1	[{"added": {}}]	13	1
183	2018-11-28 10:51:01.33788+00	26	Calvados Reserver Pays d’Auge (Christian Droun)	1	[{"added": {}}]	13	1
184	2018-11-28 10:51:16.223032+00	27	Ferrand Ambre	1	[{"added": {}}]	13	1
185	2018-11-28 10:51:27.328747+00	28	H by Hine VSOP	1	[{"added": {}}]	13	1
186	2018-11-28 10:51:37.573949+00	29	Cigar Reserve Hine XO	1	[{"added": {}}]	13	1
187	2018-11-28 10:52:21.605395+00	30	Jack Daniel’s	1	[{"added": {}}]	13	1
188	2018-11-28 10:52:31.40923+00	31	Four Roses Small Batch	1	[{"added": {}}]	13	1
189	2018-11-28 10:52:42.261829+00	32	Loch Lomond Single Grain	1	[{"added": {}}]	13	1
190	2018-11-28 10:52:56.434106+00	33	Loch Lomond Original	1	[{"added": {}}]	13	1
191	2018-11-28 10:53:22.833331+00	34	Jameson Black Barrel	1	[{"added": {}}]	13	1
192	2018-11-28 10:53:35.655089+00	35	Arran Lochranza Reserve	1	[{"added": {}}]	13	1
193	2018-11-28 10:53:46.665386+00	36	BenRiach Sherry 12 y.o	1	[{"added": {}}]	13	1
194	2018-11-28 10:53:59.270859+00	37	Benromach Sassicaia Wood Finish	1	[{"added": {}}]	13	1
195	2018-11-28 10:54:11.815158+00	38	Milagro silver (100% de agave)	1	[{"added": {}}]	13	1
196	2018-11-28 10:54:23.897243+00	39	Milagro reposado (100% de agave)	1	[{"added": {}}]	13	1
197	2018-11-28 10:54:38.210966+00	40	Patron Silver	1	[{"added": {}}]	13	1
198	2018-11-28 10:54:49.882886+00	41	London Hill	1	[{"added": {}}]	13	1
199	2018-11-28 10:55:00.848569+00	42	Hendrick’s	1	[{"added": {}}]	13	1
200	2018-11-28 10:55:11.314003+00	43	Monkey 47	1	[{"added": {}}]	13	1
201	2018-11-28 10:55:23.562643+00	44	Santiago de Cuba Carta Blanca	1	[{"added": {}}]	13	1
202	2018-11-28 10:55:45.942166+00	45	Santiago de Cuba Anejo	1	[{"added": {}}]	13	1
203	2018-11-28 10:56:05.469568+00	46	Plantation 3 stars	1	[{"added": {}}]	13	1
204	2018-11-28 10:56:17.309949+00	47	Plantation original dark	1	[{"added": {}}]	13	1
205	2018-11-28 10:56:28.982089+00	48	Staritsky&Levitsky	1	[{"added": {}}]	13	1
206	2018-11-28 10:56:40.465339+00	49	Grey Goose	1	[{"added": {}}]	13	1
207	2018-11-28 10:56:51.581186+00	50	Finlandia Cranberry white	1	[{"added": {}}]	13	1
208	2018-11-28 10:57:03.300666+00	51	Tanqueray Sterling	1	[{"added": {}}]	13	1
209	2018-11-28 10:57:19.801441+00	52	Martini (bianko, dry)	1	[{"added": {}}]	13	1
210	2018-11-28 10:57:30.789932+00	53	Campari	1	[{"added": {}}]	13	1
211	2018-11-28 10:57:40.897003+00	54	Jagermeister	1	[{"added": {}}]	13	1
212	2018-11-28 10:57:53.99986+00	55	Becherovka	1	[{"added": {}}]	13	1
213	2018-11-28 11:05:54.048091+00	48	Il Leo Chianti Superiore (Ruffino) DOCG	1	[{"added": {}}]	11	1
214	2018-11-28 11:06:50.33729+00	49	Poggio alla Guardia (Rocca di Frassinello) DOC	1	[{"added": {}}]	11	1
215	2018-11-28 11:07:27.299598+00	50	Vagona (Aia Vecchia) IGT	1	[{"added": {}}]	11	1
216	2018-11-28 11:08:21.932153+00	51	Brunello di Montalcino (Sassetti Livio) DOCG	1	[{"added": {}}]	11	1
217	2018-11-28 11:09:29.828411+00	52	Duca di Castelmonte Tareni Inzolia Sicilian (Carlo Pellegrino) IGT	1	[{"added": {}}]	11	1
218	2018-11-28 11:10:08.095175+00	53	Moscato di Noto (Planeta) DOC	1	[{"added": {}}]	11	1
219	2018-11-28 11:11:03.567865+00	54	Duca di Castelmonte Dinari Nero d'Avola Siciliane (Carlo Pellegrino) IGT	1	[{"added": {}}]	11	1
220	2018-11-28 11:11:27.570326+00	55	Plumbago (Planeta) DOC	1	[{"added": {}}]	11	1
221	2018-11-28 11:12:24.263782+00	56	Sauvignon Blanc Marlborough Sun (Saint Clair)	1	[{"added": {}}]	11	1
222	2018-11-28 11:12:52.76069+00	57	Sauvignon Rose Marlborough Sun (Saint Clair)	1	[{"added": {}}]	11	1
223	2018-11-28 11:13:41.350001+00	58	Stump Jump Red Grenache Shiraz Mourvedre (d'Arnberg)	1	[{"added": {}}]	11	1
224	2018-11-28 11:14:32.203438+00	59	Sauvignon Blanc Reserva (Montes)	1	[{"added": {}}]	11	1
225	2018-11-28 11:14:56.789142+00	60	Caberne Sauvignon Reserva (Montes)	1	[{"added": {}}]	11	1
226	2018-11-28 11:15:31.520034+00	61	Malbec Selected Callia (Salentein)	1	[{"added": {}}]	11	1
227	2018-11-28 11:16:12.276095+00	62	Chenin Blanc Savanha (Spier Winesa)	1	[{"added": {}}]	11	1
228	2018-11-28 11:16:39.997533+00	63	Pinotage (The Grinder)	1	[{"added": {}}]	11	1
229	2018-11-28 11:17:07.122476+00	64	Colossal Reserva (Casa Santos Lima)	1	[{"added": {}}]	11	1
230	2018-11-28 11:22:14.053759+00	1	Аперетиви	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
231	2018-11-28 11:22:22.238815+00	2	Горілка	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
232	2018-11-28 11:22:29.729508+00	3	Ром	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
233	2018-11-28 11:22:37.199466+00	4	Джин	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
234	2018-11-28 11:22:42.058628+00	5	Текіла	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
235	2018-11-28 11:22:51.99181+00	6	Віскі	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
236	2018-11-28 11:22:56.878262+00	7	Коньяк	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
237	2018-11-28 11:23:01.546803+00	8	Бренді	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
238	2018-11-28 11:23:06.237914+00	9	Лікери	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
239	2018-11-28 11:23:14.980124+00	10	Спеціальні вина	2	[{"changed": {"fields": ["description", "description_eng"]}}]	12	1
240	2018-11-28 11:32:30.563758+00	21	Riesling (Dr. Loosen) Qualitatswein	2	[{"changed": {"fields": ["price"]}}]	11	1
241	2018-11-28 13:15:17.000286+00	1	Аперетиви	2	[{"changed": {"fields": ["small_description"]}}]	12	1
242	2018-11-28 21:20:36.80382+00	1	Section object (1)	1	[{"added": {}}]	14	1
243	2018-11-28 21:21:00.794959+00	2	Section object (2)	1	[{"added": {}}]	14	1
244	2018-11-28 21:21:27.265141+00	3	Section object (3)	1	[{"added": {}}]	14	1
245	2018-11-28 21:21:51.781097+00	4	Section object (4)	1	[{"added": {}}]	14	1
246	2018-11-29 11:28:56.985222+00	1	Администратор	1	[{"added": {}}]	3	1
247	2018-11-29 11:29:29.860681+00	1	Администратор	2	[{"changed": {"fields": ["permissions"]}}]	3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	main_menu	menucategory
8	main_menu	menuitem
9	breakfasts	breakfastitem
10	wine_card	winecategory
11	wine_card	wineitem
12	drinks	drinkcategory
13	drinks	drinkitem
14	index	section
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-28 02:06:36.307477+00
2	auth	0001_initial	2018-11-28 02:06:36.376857+00
3	admin	0001_initial	2018-11-28 02:06:36.400635+00
4	admin	0002_logentry_remove_auto_add	2018-11-28 02:06:36.412074+00
5	admin	0003_logentry_add_action_flag_choices	2018-11-28 02:06:36.423351+00
6	contenttypes	0002_remove_content_type_name	2018-11-28 02:06:36.451719+00
7	auth	0002_alter_permission_name_max_length	2018-11-28 02:06:36.460443+00
8	auth	0003_alter_user_email_max_length	2018-11-28 02:06:36.474377+00
9	auth	0004_alter_user_username_opts	2018-11-28 02:06:36.486042+00
10	auth	0005_alter_user_last_login_null	2018-11-28 02:06:36.49831+00
11	auth	0006_require_contenttypes_0002	2018-11-28 02:06:36.50085+00
12	auth	0007_alter_validators_add_error_messages	2018-11-28 02:06:36.512067+00
13	auth	0008_alter_user_username_max_length	2018-11-28 02:06:36.527062+00
14	auth	0009_alter_user_last_name_max_length	2018-11-28 02:06:36.539247+00
15	breakfasts	0001_initial	2018-11-28 02:06:36.550246+00
16	breakfasts	0002_breakfastitem_bold	2018-11-28 02:06:36.563177+00
17	breakfasts	0003_auto_20181126_2033	2018-11-28 02:06:36.567821+00
18	breakfasts	0004_auto_20181126_2201	2018-11-28 02:06:36.583676+00
19	breakfasts	0005_auto_20181126_2201	2018-11-28 02:06:36.588836+00
20	breakfasts	0006_auto_20181127_2006	2018-11-28 02:06:36.601203+00
21	breakfasts	0007_auto_20181127_2020	2018-11-28 02:06:36.606047+00
22	drinks	0001_initial	2018-11-28 02:06:36.625378+00
23	drinks	0002_auto_20181126_2033	2018-11-28 02:06:36.631179+00
24	drinks	0003_auto_20181126_2201	2018-11-28 02:06:36.648558+00
25	drinks	0004_auto_20181126_2201	2018-11-28 02:06:36.654287+00
26	drinks	0005_auto_20181127_2006	2018-11-28 02:06:36.668682+00
27	drinks	0006_auto_20181127_2020	2018-11-28 02:06:36.674805+00
28	main_menu	0001_initial	2018-11-28 02:06:36.694734+00
29	main_menu	0002_auto_20181126_2033	2018-11-28 02:06:36.700639+00
30	main_menu	0003_auto_20181126_2201	2018-11-28 02:06:36.71846+00
31	main_menu	0004_auto_20181126_2201	2018-11-28 02:06:36.724294+00
32	main_menu	0005_auto_20181127_2006	2018-11-28 02:06:36.73872+00
33	main_menu	0006_auto_20181127_2020	2018-11-28 02:06:36.74484+00
34	sessions	0001_initial	2018-11-28 02:06:36.7553+00
35	wine_card	0001_initial	2018-11-28 02:06:36.77916+00
36	wine_card	0002_auto_20181126_2033	2018-11-28 02:06:36.785876+00
37	wine_card	0003_auto_20181126_2201	2018-11-28 02:06:36.804775+00
38	wine_card	0004_auto_20181126_2201	2018-11-28 02:06:36.810625+00
39	wine_card	0005_auto_20181127_2006	2018-11-28 02:06:36.828689+00
40	wine_card	0006_auto_20181127_2020	2018-11-28 02:06:36.836275+00
41	index	0001_initial	2018-11-28 21:17:56.147242+00
42	index	0002_auto_20181128_2245	2018-11-28 21:17:56.167074+00
43	index	0003_auto_20181128_2247	2018-11-28 21:17:56.174893+00
44	index	0004_auto_20181128_2305	2018-11-28 21:17:56.179346+00
45	index	0005_auto_20181128_2319	2018-11-28 21:19:45.646767+00
46	index	0006_auto_20181128_2322	2018-11-28 21:22:52.772636+00
47	drinks	0007_remove_drinkcategory_small_description	2018-11-29 11:22:56.039658+00
48	main_menu	0007_remove_menucategory_small_description	2018-11-29 11:22:56.04958+00
49	wine_card	0007_remove_winecategory_small_description	2018-11-29 11:22:56.057885+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tq5udrtki3ysrrjhgll1arzsqp5fnc0y	OWI0MmY4N2Y4MjZiNjI3MGIyODU3YzFiZjM1NjBiMDAyNTNlNWE1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTE2ODYyM2I1ZTExN2FkMzFiYmU2ZTg0MTkwMmI0MmE4MTY0N2Y4In0=	2018-12-12 02:10:07.629775+00
59zbwkvi8ssx3eo1h6nlhjtjdqr8jdh5	OWI0MmY4N2Y4MjZiNjI3MGIyODU3YzFiZjM1NjBiMDAyNTNlNWE1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTE2ODYyM2I1ZTExN2FkMzFiYmU2ZTg0MTkwMmI0MmE4MTY0N2Y4In0=	2018-12-12 13:14:55.068952+00
\.


--
-- Data for Name: drink_categories; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.drink_categories (id, title, title_eng, description, description_eng, parent_id) FROM stdin;
11	Пиво	Пиво			\N
12	Вода	Вода			\N
13	Свіжовижатий сік	Свіжовижатий сік			\N
14	Кава ILLY	Кава ILLY			\N
15	Чай	Чай			\N
2	Горілка	Горілка	(ціна за 50мл.)	(ціна за 50мл.)	\N
3	Ром	Ром	(ціна за 50мл.)	(ціна за 50мл.)	\N
4	Джин	Джин	(ціна за 50мл.)	(ціна за 50мл.)	\N
5	Текіла	Текіла	(ціна за 50мл.)	(ціна за 50мл.)	\N
6	Віскі	Віскі	(ціна за 50мл.)	(ціна за 50мл.)	\N
7	Коньяк	Коньяк	(ціна за 50мл.)	(ціна за 50мл.)	\N
8	Бренді	Бренді	(ціна за 50мл.)	(ціна за 50мл.)	\N
9	Лікери	Лікери	(ціна за 50мл.)	(ціна за 50мл.)	\N
10	Спеціальні вина	Спеціальні вина	(ціна за 50мл.)	(ціна за 50мл.)	\N
1	Аперетиви	Аперетиви	(ціна за 50мл.)	(ціна за 50мл.)	\N
\.


--
-- Data for Name: drink_items; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.drink_items (id, title, title_eng, content, price, weight, category_id, content_eng) FROM stdin;
1	Loose tea Daman	Loose tea Daman		68		15	
2	Espresso	Espresso		46		14	
3	Americano	Americano		46		14	
4	Espresso Macchiato	Espresso Macchiato		46		14	
5	Cappuccino	Cappuccino		56		14	
6	Latte Macchiato	Latte Macchiato		56		14	
7	Молоко (100мл.)	Молоко (100мл.)		10		14	
8	Апельсин, яблоко, грейпфрут, морква	Апельсин, яблоко, грейпфрут, морква		72		13	
9	Селера	Селера		110		13	
10	Ананас	Ананас		164		13	
11	Rocchetta(Italy)	Rocchetta(Italy)		78	0.5	12	
12	VODA UA (Ukraine)	VODA UA (Ukraine)		34	0.4	12	
13	Coca Cola	Coca Cola		32	0.25	12	
14	Royal Club Tonic water	Royal Club Tonic water		50	0.33	12	
15	Royal Club Soda water	Royal Club Soda water		50	0.33	12	
16	Leffe (light, dark)	Leffe (light, dark)		88	0.33	11	
17	Palm (n/a)	Palm (n/a)		86	0.25	11	
18	Sherry Oloroso Alburejo	Sherry Oloroso Alburejo		76		10	
19	Port Sandeman Towny 10 y.o	Port Sandeman Towny 10 y.o		98		10	
20	Dulce de Moscatel Gran Feudo (Bodegas Julian Chivite)	Dulce de Moscatel Gran Feudo (Bodegas Julian Chivite)		76		10	
21	Baileys	Baileys		98		9	
22	Cointreau	Cointreau		104		9	
23	Kahlua	Kahlua		96		9	
24	Sambuca Ramazotti	Sambuca Ramazotti		92		9	
25	Grappa Berta (Sant’Antone, Valdavi)	Grappa Berta (Sant’Antone, Valdavi)		210		8	
26	Calvados Reserver Pays d’Auge (Christian Droun)	Calvados Reserver Pays d’Auge (Christian Droun)		178		8	
27	Ferrand Ambre	Ferrand Ambre		228		7	
28	H by Hine VSOP	H by Hine VSOP		232		7	
29	Cigar Reserve Hine XO	Cigar Reserve Hine XO		350		7	
30	Jack Daniel’s	Jack Daniel’s		98		6	
31	Four Roses Small Batch	Four Roses Small Batch		140		6	
32	Loch Lomond Single Grain	Loch Lomond Single Grain		90		6	
33	Loch Lomond Original	Loch Lomond Original		110		6	
34	Jameson Black Barrel	Jameson Black Barrel		170		6	
35	Arran Lochranza Reserve	Arran Lochranza Reserve		180		6	
36	BenRiach Sherry 12 y.o	BenRiach Sherry 12 y.o		240		6	
37	Benromach Sassicaia Wood Finish	Benromach Sassicaia Wood Finish		290		6	
38	Milagro silver (100% de agave)	Milagro silver (100% de agave)		144		5	
39	Milagro reposado (100% de agave)	Milagro reposado (100% de agave)		122		5	
40	Patron Silver	Patron Silver		150		5	
41	London Hill	London Hill		72		4	
42	Hendrick’s	Hendrick’s		162		4	
43	Monkey 47	Monkey 47		198		4	
44	Santiago de Cuba Carta Blanca	Santiago de Cuba Carta Blanca		50		3	
45	Santiago de Cuba Anejo	Santiago de Cuba Anejo		50		3	
46	Plantation 3 stars	Plantation 3 stars		86		3	
47	Plantation original dark	Plantation original dark		86		3	
48	Staritsky&Levitsky	Staritsky&Levitsky		88		2	
49	Grey Goose	Grey Goose		124		2	
50	Finlandia Cranberry white	Finlandia Cranberry white		58		2	
51	Tanqueray Sterling	Tanqueray Sterling		76		2	
52	Martini (bianko, dry)	Martini (bianko, dry)		44		1	
53	Campari	Campari		80		1	
54	Jagermeister	Jagermeister		76		1	
55	Becherovka	Becherovka		58		1	
\.


--
-- Data for Name: index_page_content; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.index_page_content (id, title, content, content_eng) FROM stdin;
1	Про нас	У центрі Києва, на площі Льва Толстого, розташований легендарний італійський ресторан Under Wonder, заснований Галиною Фрунзе та Миколою Голотіним 2009 року.\r\n\r\nВишуканий інтер’єр закладу – інтелігентно простий та багатогранний. Атмосфера ресторану насичена спокоєм з урбаністичним присмаком свободи. Тут можна дозволити собі розкіш приглушеної бесіди під акомпанемент авторських блюд італійської кухні. Завітайте до нас, щоб зануритися в атмосферу комфорту та смаку.	The Under Wonder restaurant is located in the heart of Kiev,\r\non the Lev Tolstoy Square.\r\n\r\nMain priority here is human communication.\r\nIn these walls you can find peace with an urban flavor,\r\nafford a special pleasure of a quiet conversation, gourmet\r\ncuisine in an artistic-designed space.
2	Меню	Меню Under Wonder сформовано зі страв італійської кухні в авторському виконанні шефа.\r\n\r\nГостям пропонують паштет із печінки цесарки\r\nу вишневій глазурі, салат із пряним лососем\r\nта козиним сиром, теплий салат із телятини\r\nпід медово-гірчичним соусом, філе сібаса з булгуром неро та яєчним соусом, різотто\r\nз гребінцями, білими грибами та пекоріно\r\nз трюфелем, палаючу бістеку фіорентину,\r\nдомашню пасту та тірамісу за старовинним рецептом.\r\nОсобливої уваги заслуговують відомі усьому\r\nмісту фірмові сніданки та ланчі UW.	Menu consist of of Italian and French cuisine in the \r\nauthor's execution from our chef.\r\n\r\nGuests will be offered Sea bass fillet with black burgur\r\nand egg sauce, Guinea fowl liver pate in cherry glaze,\r\nGenoa meat pie with wine sauce, Salad with salmon\r\nand goat cheese, Homemade spinach maltagliati with\r\nrabbit and sun-dried tomatoes, Ligurian style octopus\r\nwith tomatoes and potato gratin, Duck fillet with teriyaki sauce and sweet couscous, a variety of dishes\r\nfrom josper, Tiramisu or Cheesecake with a truffle\r\nin white chocolate and walnut crumbs.
3	Текст на фото после меню	Атмосфера ресторану ідеальна як для романтичної вечері,\r\nтак і для сімейного обіду у вихідні, сніданку чи ділового ланчу\r\nу будні. UW працює і вночі, тож він є ідеальним місцем\r\nі для пре- чи афтерпаті.	The interior of the restaurant is made in an original manner.\r\nIt combines an industrial American steampunk, noble English \r\ngothic, soft Italian romanticism. All elements perfectly harmonize\r\nand give birth to completely unusual atmosphere.
4	Інтер’єр	Оригінальний інтер’єр ресторану відверто космополітичний. Залежно від настрою чи сприйняття, він поєднує в собі індустріальний американський стімпанк, благородну британську готику та м’який італійський романтизм. Усі елементи ідеально гармонують між собою та створюють атмосферу затишку і комфорту.\r\n\r\nГоловний зал вміщує 35 гостей, а в режимі фуршету чи паті – 50. Маючи доволі високу стелю, зал освітлюється за допомогою виняткової люстри та настінних бра після заходу сонця. Вдень його наповнює потік денного світла через відкриті назустріч місту двері та вітражні вікна. Автентичні дерев’яні сходи ведуть ще у два зали: зліва – зал з відкритим баром на 8 гостей , справа - з монументальними арками, потужними перекриттями на стелі та загадковими дзеркалами на стінах, розрахований на 40 гостей (80 у режимі фуршету).	The main hall seats up to 35 visitors, and if there is\r\na banquet for a corporate party, it will fit 50 people.\r\nThe ceiling in this hall is of a considerable height,\r\nthe room is illuminated with the help of a huge\r\nhandmade chandelier and wall sconces.\r\n\r\nGoing down the wooden staircase, visitors enter\r\nthe lower room, where they are offered two rooms:\r\na small one, designed for 8 people, and a hall with \r\nmonumental arches for 40 people (80 people\r\nduring a buffet table)
\.


--
-- Data for Name: menu_categories; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.menu_categories (id, title, title_eng, description, description_eng, parent_id) FROM stdin;
1	Закуски	Закуски			\N
2	Салати	Салати			\N
3	Карпаччо та тартари	Карпаччо та тартари			\N
4	Супи	Супи			\N
6	Риба та морепродукти	Риба та морепродукти			\N
7	М`ясо та птиця	М`ясо та птиця			\N
8	Десерти	Десерти			\N
5	Паста та різотто	Паста та різотто	(* - домашня паста)	(* - домашня паста)	\N
\.


--
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.menu_items (id, title, title_eng, content, price, weight, category_id, content_eng) FROM stdin;
1	Тірамісу	Тірамісу		128	150	8	
2	Крем-брюле	Крем-брюле		82	140	8	
3	Панна котта	Панна котта		96	230	8	
4	Шоколадний моале з лавандовим морозивом	Шоколадний моале з лавандовим морозивом		136	180	8	
5	Чізкейк	Чізкейк		146	130	8	
6	Морозиво від шефа	Морозиво від шефа		44	50	8	
7	Сорбет	Сорбет		42	50	8	
8	Бістека Фіорентина	Бістека Фіорентина		358	400	7	
9	Філе міньйон з трюфельним картопляним гратеном і винним соусом	Філе міньйон з трюфельним картопляним гратеном і винним соусом		412	330	7	
10	Стейк рібай	Стейк рібай		352	380	7	
11	Рублений біфштекс, обсмажений на грилі, зі спаржевою квасолею та беконом	Рублений біфштекс, обсмажений на грилі, зі спаржевою квасолею та беконом		230	330	7	
12	Качина ніжка конфі з яблучно-гірчичним пюре, томленою грушею і соусом з чорної смородини	Качина ніжка конфі з яблучно-гірчичним пюре, томленою грушею і соусом з чорної смородини		300	300	7	
13	Філе курчати з картопляним пюре, шпинатом і вершковим соусом	Філе курчати з картопляним пюре, шпинатом і вершковим соусом		198	350	7	
14	Філе скандинавської форелі зі спаржею та соусом із чорнил каракатиці	Філе скандинавської форелі зі спаржею та соусом із чорнил каракатиці		358	280	6	
15	Дорадо з овочами, "Папільот", або запечена в солі	Дорадо з овочами, "Папільот", або запечена в солі		376	280	6	
16	Філе морського окуня з пюре із цвітної капусти, лимонним кіноа та соусом з мідій	Філе морського окуня з пюре із цвітної капусти, лимонним кіноа та соусом з мідій		290	280	6	
17	Восьминіг з буряково-кавовим пюре, запеченим солодким буряком і бататом	Восьминіг з буряково-кавовим пюре, запеченим солодким буряком і бататом		588	220	6	
18	Мідії з овочами і лемонграсом у вершковому соусі	Мідії з овочами і лемонграсом у вершковому соусі		286	800	6	
19	Спагетті неро з креветками та винно-вершковим соусом *	Спагетті неро з креветками та винно-вершковим соусом *		264	300	5	
20	Спагетті La Carbonara Roma	Спагетті La Carbonara Roma	обсмажена панчетта у вершковому соусі з підкопченим яєчним жовтком	178	380	5	обсмажена панчетта у вершковому соусі з підкопченим яєчним жовтком
21	Тальятелле з М`ясним рагу *	Тальятелле з М`ясним рагу *		172	260	5	
22	Равіолі неро з лососем, сирним соусом і трюфельним кремом *	Равіолі неро з лососем, сирним соусом і трюфельним кремом *		188	300	5	
23	Равіолі з підкопченим м&#39;ясом кролика та вершковим соусом з Порто *	Равіолі з підкопченим м&#39;ясом кролика та вершковим соусом з Порто *		176	200	5	
24	Шпинатові каннеллоні з грибами та рікоттою *	Шпинатові каннеллоні з грибами та рікоттою *		184	250	5	
25	Різотто з гребінцями, білими грибами та трюфельною пастою	Різотто з гребінцями, білими грибами та трюфельною пастою		398	280	5	
26	Різотто з копченим гарбузом і горгонцолою дольче	Різотто з копченим гарбузом і горгонцолою дольче		164	330	5	
27	Мінестроне	Мінестроне	класичний овочевий італійський суп із соусом песто, шпинатом та бебі Моцареллою	118	370	4	класичний овочевий італійський суп із соусом песто, шпинатом та бебі Моцареллою
28	Гарбузово-імбирний крем-суп із креветками	Гарбузово-імбирний крем-суп із креветками		128	290	4	
29	П`ємонтський рибний суп	П`ємонтський рибний суп		198	300	4	
30	Баклажановий крем-суп зі шпинатом, копченою вишнею, сиром Гауда та мигдальним горіхом	Баклажановий крем-суп зі шпинатом, копченою вишнею, сиром Гауда та мигдальним горіхом		108	280	4	
31	Карпаччо з лосося з апельсиново-гірчичним соусом	Карпаччо з лосося з апельсиново-гірчичним соусом		188	140	3	
32	Карпаччо із телятини з пармезаном і трюфельною олією	Карпаччо із телятини з пармезаном і трюфельною олією		120	174	3	
33	Тартар зі скандинавської форелі з ніжним кремом із авокадо	Тартар зі скандинавської форелі з ніжним кремом із авокадо		184	160	3	
34	Тартар із телятини з трюфельним кремом	Тартар із телятини з трюфельним кремом		188	140	3	
35	Салат Under Wonder Green	Салат Under Wonder Green		112	150	2	
36	Салат ромен з копченим філе індички (або зі смаженими креветками) та анчоусовою заправкою	Салат ромен з копченим філе індички (або зі смаженими креветками) та анчоусовою заправкою		168/212	220/190	2	
37	Салат з пряним лососем, авокадо та сиром Шавру	Салат з пряним лососем, авокадо та сиром Шавру		198	200	2	
38	Салат з копченим курчам, гострим манго, авокадо і полуницею	Салат з копченим курчам, гострим манго, авокадо і полуницею		188	180	2	
39	Теплий салат з бебі кальмарами і овочевою сальсою	Теплий салат з бебі кальмарами і овочевою сальсою		298	200	2	
40	Теплий салат із телятини з цукіні, копченою вишнею і блакитним сиром	Теплий салат із телятини з цукіні, копченою вишнею і блакитним сиром		212	180	2	
41	Дует брускет із перцем-конфі, козячим сиром і овочевою сапьсою, та з маринованим лососем і каперсами	Дует брускет із перцем-конфі, козячим сиром і овочевою сапьсою, та з маринованим лососем і каперсами		178	130	1	
42	Плато італійських антипасто	Плато італійських антипасто	салямі, прошутто, коппа, пармезан, пекоріно, бебі моцарелла, маринований перець, оливки, класичний і помідорний песто	356	400	1	салямі, прошутто, коппа, пармезан, пекоріно, бебі моцарелла, маринований перець, оливки, класичний і помідорний песто
43	Севіче із сибаса з кіноа та манго-чилі соусом	Севіче із сибаса з кіноа та манго-чилі соусом		280	170	1	
44	Моцарелла Di Buffala з віяленими томатами та соусом песто	Моцарелла Di Buffala з віяленими томатами та соусом песто		278	200	1	
45	Паштет із печінки цесарки у вишневій глазурі	Паштет із печінки цесарки у вишневій глазурі		136	180	1	
46	Вітелло тоннато	Вітелло тоннато	ніжна телятина під соусом із тунця і каперсів	178	150	1	ніжна телятина під соусом із тунця і каперсів
47	Melanzane alla parmigiana	Melanzane alla parmigiana	наша варіація відомої страви з півдня Італії	134	220	1	наша варіація відомої страви з півдня Італії
48	Грибне рагу з трюфельним соусом і пармезаном	Грибне рагу з трюфельним соусом і пармезаном		152	220	1	
49	Хлібний кошик	Хлібний кошик		28	200	1	
\.


--
-- Data for Name: wine_categories; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.wine_categories (id, title, title_eng, description, description_eng, parent_id) FROM stdin;
1	Шампанське	Шампанське			\N
2	Ігристі вина	Ігристі вина			1
3	Франція	Франція	(0.75 / 0.1L)	(0.75 / 0.1L)	\N
4	Бордо	Бордо			3
5	Бургундія	Бургундія			3
6	Долина Рони	Долина Рони			3
7	Німеччина	Німеччина	(0.75/0.1L)	(0.75/0.1L)	\N
8	Україна	Україна	(0.75L)	(0.75L)	\N
9	Домашнє вино	Домашнє вино	(0.5/0.25L)	(0.5/0.25L)	\N
10	Вина з Еноматіка	Вина з Еноматіка			\N
11	Італія	Італія	(0.75/ 0.1L)	(0.75/ 0.1L)	\N
12	Абруццо	Абруццо			11
13	Альто Адідже	Альто Адідже			11
14	П'ємонт	П'ємонт			11
15	Венето	Венето			11
16	Тоскана	Тоскана			11
17	Сицилія	Сицилія			11
18	Нова Зеландія	Нова Зеландія			\N
19	Австралія	Австралія			\N
20	Чилі	Чилі			\N
21	Аргентина	Аргентина			\N
22	ПАР	ПАР			\N
23	Португалія	Португалія			\N
\.


--
-- Data for Name: wine_items; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.wine_items (id, title, title_eng, content, price, weight, category_id, content_eng) FROM stdin;
1	Prosecco Millesimato (Canti) DOC 0.75L	Prosecco Millesimato (Canti) DOC 0.75L		760		2	
2	Senior Valdoniadene Prosecco Superiore (Bortolomiol) DOC 0.2L	Senior Valdoniadene Prosecco Superiore (Bortolomiol) DOC 0.2L		310		2	
3	Prior Valdobbiadene Prosecco Superiore (Bortolomiol) DOCG 0.75L	Prior Valdobbiadene Prosecco Superiore (Bortolomiol) DOCG 0.75L		970		2	
4	Cuvee Imperiale Brut (Guido Berlucchi) DOCG 0.375L	Cuvee Imperiale Brut (Guido Berlucchi) DOCG 0.375L		800		2	
5	Cuvee Imperiale Max Rose (Guido Berlucchi) DOCG 0.75L	Cuvee Imperiale Max Rose (Guido Berlucchi) DOCG 0.75L		1520		2	
6	Brut Classic (Deutz) AOP 0.75L	Brut Classic (Deutz) AOP 0.75L		2360		2	
7	Alzania Vino Frizzante Bianco (Alzania) 0.15L	Alzania Vino Frizzante Bianco (Alzania) 0.15L		84		2	
8	Chateau Boisson Blanc (Bordeaux) AOP	Chateau Boisson Blanc (Bordeaux) AOP		630/84		4	
9	Chateau Vieux Frene (Bordeaux) AOP	Chateau Vieux Frene (Bordeaux) AOP		600/80		4	
10	Chateau Vieux du Terme (Haut - Medoc) AOP	Chateau Vieux du Terme (Haut - Medoc) AOP		720/96		4	
11	Chateau de Sergue (Laland De Pomerol) AOP	Chateau de Sergue (Laland De Pomerol) AOP		2140		4	
12	Chablis (Domaine Du Colombier) AOP	Chablis (Domaine Du Colombier) AOP		960		5	
13	Chabli Premier Cru Vaucoupin (Domain Du Colombier) AOP	Chabli Premier Cru Vaucoupin (Domain Du Colombier) AOP		1430		5	
14	Bourgogne Chardonnay Vieilles Vigne (Domain Du Rochebin) AOP	Bourgogne Chardonnay Vieilles Vigne (Domain Du Rochebin) AOP		1160		5	
15	Bourgogne Pinot Noir Vicomtee  (Doubet Naudin) AOP	Bourgogne Pinot Noir Vicomtee  (Doubet Naudin) AOP		1020		5	
16	Cotes du Rhone La Grivelier Pere Anselme white (Brotte) AOP	Cotes du Rhone La Grivelier Pere Anselme white (Brotte) AOP		600/80		6	
17	Cotes De Provence Pere Anselme (Brotte) AOP	Cotes De Provence Pere Anselme (Brotte) AOP		720/96		6	
18	Reserve de l'Aube Pere Anselme Syrah-Merlo (Brotte) AOP	Reserve de l'Aube Pere Anselme Syrah-Merlo (Brotte) AOP		540/72		6	
19	Chateau L'Ermitage (Ambiance Rhone Terroirs) AOP	Chateau L'Ermitage (Ambiance Rhone Terroirs) AOP		690		6	
20	Peter Nicolay Riesling Trocken (Dr. Heidennemans-Bergweiler)	Peter Nicolay Riesling Trocken (Dr. Heidennemans-Bergweiler)		600/80		7	
22	Gewurztraminer Villa Wolf (J.L.Wolf) Qualitatswein	Gewurztraminer Villa Wolf (J.L.Wolf) Qualitatswein		540/72		7	
23	Pinot Noir (Villa Wolf) Qualitatswein	Pinot Noir (Villa Wolf) Qualitatswein		570/76		7	
24	Шардоне сухое сортовое - Chardonnay (Колонист)	Шардоне сухое сортовое - Chardonnay (Колонист)		420		8	
25	Каберне сухое сортовое - Cabernet (Колонист)	Каберне сухое сортовое - Cabernet (Колонист)		420		8	
26	Одеське чорне сухе сортове	Одеське чорне сухе сортове		420/56		8	
27	White House Wine	White House Wine		240/120		9	
28	Red House Wine	Red House Wine		240/120		9	
29	Sancerre Le Chene (Lucien Crochet)	Sancerre Le Chene (Lucien Crochet)		1410/94		10	
30	Alastro (Planeta)	Alastro (Planeta)		1050/70		10	
31	Corvar Rosso Veroneze (Zeni)	Corvar Rosso Veroneze (Zeni)		1680/112		10	
32	Sangiovese Gamla (Golan Heights Winery)	Sangiovese Gamla (Golan Heights Winery)		1020/68		10	
33	Pecorino Bianco (Illuminati Dino) DOC	Pecorino Bianco (Illuminati Dino) DOC		780/104		12	
34	Santoro Muntepulciano d'Abruzzo (San Marzano) DOC	Santoro Muntepulciano d'Abruzzo (San Marzano) DOC		600/80		12	
35	Santoro Sangiovese Terre di Chieti (San Marzano) IGT	Santoro Sangiovese Terre di Chieti (San Marzano) IGT		600/80		12	
36	Pfefferer Moscato Classic Line (Colterenzio) DOC	Pfefferer Moscato Classic Line (Colterenzio) DOC		720/96		13	
37	Muller Thurgau Dolomiti Classic Line (Colterenzio)	Muller Thurgau Dolomiti Classic Line (Colterenzio)		720/96		13	
38	Gavi il Doge (Broglia) DOCG	Gavi il Doge (Broglia) DOCG		720/96		14	
39	Gavi Villa Scolca (La Scolca) DOCG	Gavi Villa Scolca (La Scolca) DOCG		1190		14	
40	Dolcetto d'Alba Munfrina (Pelissero) DOC	Dolcetto d'Alba Munfrina (Pelissero) DOC		720/96		14	
41	Barbaresco Roberto Fossati (Guido Mazzarello) DOCG	Barbaresco Roberto Fossati (Guido Mazzarello) DOCG		1360		14	
42	Barolo Serralunga (Schiavenza) DOCG	Barolo Serralunga (Schiavenza) DOCG		2260		14	
43	Pinot GR.delle Venezia Fiorile Cesari IGT	Pinot GR.delle Venezia Fiorile Cesari IGT		540/72		15	
44	Soave Il Seleze (I Stefanini) DOC	Soave Il Seleze (I Stefanini) DOC		570/76		15	
45	Valpolicella, Cantine di Ora (Schenk) DOC	Valpolicella, Cantine di Ora (Schenk) DOC		540/72		15	
46	Amarona della Valpolicella Classico (Cesari) DOCG	Amarona della Valpolicella Classico (Cesari) DOCG		1920		15	
47	Chianto Classico Riserva (Schenk) DOCG	Chianto Classico Riserva (Schenk) DOCG		870		16	
48	Il Leo Chianti Superiore (Ruffino) DOCG	Il Leo Chianti Superiore (Ruffino) DOCG		660/88		16	
49	Poggio alla Guardia (Rocca di Frassinello) DOC	Poggio alla Guardia (Rocca di Frassinello) DOC		870		16	
50	Vagona (Aia Vecchia) IGT	Vagona (Aia Vecchia) IGT		840		16	
51	Brunello di Montalcino (Sassetti Livio) DOCG	Brunello di Montalcino (Sassetti Livio) DOCG		2280		16	
52	Duca di Castelmonte Tareni Inzolia Sicilian (Carlo Pellegrino) IGT	Duca di Castelmonte Tareni Inzolia Sicilian (Carlo Pellegrino) IGT		480/64		17	
53	Moscato di Noto (Planeta) DOC	Moscato di Noto (Planeta) DOC		980		17	
54	Duca di Castelmonte Dinari Nero d'Avola Siciliane (Carlo Pellegrino) IGT	Duca di Castelmonte Dinari Nero d'Avola Siciliane (Carlo Pellegrino) IGT		720/96		17	
55	Plumbago (Planeta) DOC	Plumbago (Planeta) DOC		970		17	
56	Sauvignon Blanc Marlborough Sun (Saint Clair)			690/92		18	
57	Sauvignon Rose Marlborough Sun (Saint Clair)	Sauvignon Rose Marlborough Sun (Saint Clair)		720/96		18	
58	Stump Jump Red Grenache Shiraz Mourvedre (d'Arnberg)			720/96		19	
59	Sauvignon Blanc Reserva (Montes)	Sauvignon Blanc Reserva (Montes)		540/72		20	
60	Caberne Sauvignon Reserva (Montes)	Caberne Sauvignon Reserva (Montes)		540/72		20	
61	Malbec Selected Callia (Salentein)			600/80		21	
62	Chenin Blanc Savanha (Spier Winesa)			540/72		22	
63	Pinotage (The Grinder)	Pinotage (The Grinder)		540/72		22	
64	Colossal Reserva (Casa Santos Lima)			540/72		23	
21	Riesling (Dr. Loosen) Qualitatswein	Riesling (Dr. Loosen) Qualitatswein		540/72		7	
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 30, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: breakfast_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.breakfast_items_id_seq', 13, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 247, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- Name: drink_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.drink_categories_id_seq', 15, true);


--
-- Name: drink_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.drink_items_id_seq', 55, true);


--
-- Name: index_page_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.index_page_content_id_seq', 4, true);


--
-- Name: menu_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.menu_categories_id_seq', 8, true);


--
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 49, true);


--
-- Name: wine_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.wine_categories_id_seq', 23, true);


--
-- Name: wine_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.wine_items_id_seq', 64, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: breakfast_items breakfast_items_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.breakfast_items
    ADD CONSTRAINT breakfast_items_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: drink_categories drink_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.drink_categories
    ADD CONSTRAINT drink_categories_pkey PRIMARY KEY (id);


--
-- Name: drink_items drink_items_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.drink_items
    ADD CONSTRAINT drink_items_pkey PRIMARY KEY (id);


--
-- Name: index_page_content index_page_content_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.index_page_content
    ADD CONSTRAINT index_page_content_pkey PRIMARY KEY (id);


--
-- Name: menu_categories menu_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.menu_categories
    ADD CONSTRAINT menu_categories_pkey PRIMARY KEY (id);


--
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- Name: wine_categories wine_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.wine_categories
    ADD CONSTRAINT wine_categories_pkey PRIMARY KEY (id);


--
-- Name: wine_items wine_items_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.wine_items
    ADD CONSTRAINT wine_items_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: breakfast_items_parent_id_10bf4dce; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX breakfast_items_parent_id_10bf4dce ON public.breakfast_items USING btree (parent_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: drink_categories_parent_id_7d095609; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX drink_categories_parent_id_7d095609 ON public.drink_categories USING btree (parent_id);


--
-- Name: drink_items_category_id_ec7ed854; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX drink_items_category_id_ec7ed854 ON public.drink_items USING btree (category_id);


--
-- Name: menu_categories_parent_id_c548f262; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX menu_categories_parent_id_c548f262 ON public.menu_categories USING btree (parent_id);


--
-- Name: menu_items_category_id_5066f1ed; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX menu_items_category_id_5066f1ed ON public.menu_items USING btree (category_id);


--
-- Name: wine_categories_parent_id_c858f1fa; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX wine_categories_parent_id_c858f1fa ON public.wine_categories USING btree (parent_id);


--
-- Name: wine_items_category_id_b4205a17; Type: INDEX; Schema: public; Owner: underwonder_remastered
--

CREATE INDEX wine_items_category_id_b4205a17 ON public.wine_items USING btree (category_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: breakfast_items breakfast_items_parent_id_10bf4dce_fk_breakfast_items_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.breakfast_items
    ADD CONSTRAINT breakfast_items_parent_id_10bf4dce_fk_breakfast_items_id FOREIGN KEY (parent_id) REFERENCES public.breakfast_items(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: drink_categories drink_categories_parent_id_7d095609_fk_drink_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.drink_categories
    ADD CONSTRAINT drink_categories_parent_id_7d095609_fk_drink_categories_id FOREIGN KEY (parent_id) REFERENCES public.drink_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: drink_items drink_items_category_id_ec7ed854_fk_drink_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.drink_items
    ADD CONSTRAINT drink_items_category_id_ec7ed854_fk_drink_categories_id FOREIGN KEY (category_id) REFERENCES public.drink_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: menu_categories menu_categories_parent_id_c548f262_fk_menu_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.menu_categories
    ADD CONSTRAINT menu_categories_parent_id_c548f262_fk_menu_categories_id FOREIGN KEY (parent_id) REFERENCES public.menu_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: menu_items menu_items_category_id_5066f1ed_fk_menu_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_category_id_5066f1ed_fk_menu_categories_id FOREIGN KEY (category_id) REFERENCES public.menu_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wine_categories wine_categories_parent_id_c858f1fa_fk_wine_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.wine_categories
    ADD CONSTRAINT wine_categories_parent_id_c858f1fa_fk_wine_categories_id FOREIGN KEY (parent_id) REFERENCES public.wine_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wine_items wine_items_category_id_b4205a17_fk_wine_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.wine_items
    ADD CONSTRAINT wine_items_category_id_b4205a17_fk_wine_categories_id FOREIGN KEY (category_id) REFERENCES public.wine_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


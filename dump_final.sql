--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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
    name character varying(150) NOT NULL
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
-- Name: main_menu_menufile; Type: TABLE; Schema: public; Owner: underwonder_remastered
--

CREATE TABLE public.main_menu_menufile (
    id integer NOT NULL,
    file character varying(100) NOT NULL
);


ALTER TABLE public.main_menu_menufile OWNER TO underwonder_remastered;

--
-- Name: main_menu_menufile_id_seq; Type: SEQUENCE; Schema: public; Owner: underwonder_remastered
--

CREATE SEQUENCE public.main_menu_menufile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_menu_menufile_id_seq OWNER TO underwonder_remastered;

--
-- Name: main_menu_menufile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: underwonder_remastered
--

ALTER SEQUENCE public.main_menu_menufile_id_seq OWNED BY public.main_menu_menufile.id;


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
-- Name: index_page_content id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.index_page_content ALTER COLUMN id SET DEFAULT nextval('public.index_page_content_id_seq'::regclass);


--
-- Name: main_menu_menufile id; Type: DEFAULT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.main_menu_menufile ALTER COLUMN id SET DEFAULT nextval('public.main_menu_menufile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
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
25	Can add Раздел на главной странице	7	add_section
26	Can change Раздел на главной странице	7	change_section
27	Can delete Раздел на главной странице	7	delete_section
28	Can view Раздел на главной странице	7	view_section
29	Can add Файл меню	8	add_menufile
30	Can change Файл меню	8	change_menufile
31	Can delete Файл меню	8	delete_menufile
32	Can view Файл меню	8	view_menufile
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$vbusTYumbs5V$+DMb5t6wxYUP8KgEGEo+R5lqyYEZISs4yA2lBANKGeE=	2019-12-05 13:54:45.057349+02	t	admin				t	t	2019-12-05 13:54:36.06856+02
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
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-12-05 13:55:42.705966+02	1	Телефон	1	[{"added": {}}]	7	1
2	2019-12-05 13:56:03.78055+02	2	Інтер’єр	1	[{"added": {}}]	7	1
3	2019-12-05 13:56:24.831952+02	3	Текст на фото после меню	1	[{"added": {}}]	7	1
4	2019-12-05 13:56:43.730802+02	4	Меню	1	[{"added": {}}]	7	1
5	2019-12-05 13:57:04.39205+02	5	Про нас	1	[{"added": {}}]	7	1
6	2019-12-05 13:57:17.831227+02	1	MenuFile object (1)	1	[{"added": {}}]	8	1
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
7	index	section
8	main_menu	menufile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-12-05 13:53:54.409247+02
2	auth	0001_initial	2019-12-05 13:53:54.793544+02
3	admin	0001_initial	2019-12-05 13:53:55.448355+02
4	admin	0002_logentry_remove_auto_add	2019-12-05 13:53:55.57493+02
5	admin	0003_logentry_add_action_flag_choices	2019-12-05 13:53:55.61466+02
6	contenttypes	0002_remove_content_type_name	2019-12-05 13:53:55.662288+02
7	auth	0002_alter_permission_name_max_length	2019-12-05 13:53:55.671234+02
8	auth	0003_alter_user_email_max_length	2019-12-05 13:53:55.682925+02
9	auth	0004_alter_user_username_opts	2019-12-05 13:53:55.698805+02
10	auth	0005_alter_user_last_login_null	2019-12-05 13:53:55.736837+02
11	auth	0006_require_contenttypes_0002	2019-12-05 13:53:55.744875+02
12	auth	0007_alter_validators_add_error_messages	2019-12-05 13:53:55.782541+02
13	auth	0008_alter_user_username_max_length	2019-12-05 13:53:55.857343+02
14	auth	0009_alter_user_last_name_max_length	2019-12-05 13:53:55.907463+02
15	auth	0010_alter_group_name_max_length	2019-12-05 13:53:55.94517+02
16	auth	0011_update_proxy_permissions	2019-12-05 13:53:55.984171+02
17	index	0001_initial	2019-12-05 13:53:56.072091+02
18	main_menu	0001_initial	2019-12-05 13:53:56.12396+02
19	sessions	0001_initial	2019-12-05 13:53:56.233141+02
20	index	0002_auto_20191205_1355	2019-12-05 13:55:13.804891+02
21	index	0003_auto_20191205_1357	2019-12-05 13:57:31.473165+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
duaffmqjrallfshvifc848qup9bmargj	YzkyM2Q0OTFkYTdjZmM1Y2Q2MTI3MzY1YzIyOWY2YTFmYzY1OWQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMmU4YmEyZGJkNGU3OTFjMjEzMWZjYzQyYWU3NGU4ODNjMzAzODZjIn0=	2019-12-19 13:54:45.066235+02
\.


--
-- Data for Name: index_page_content; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.index_page_content (id, title, content, content_eng) FROM stdin;
1	Телефон	098 203 4394	098 203 4394
2	Інтер’єр	Оригінальний інтер’єр ресторану відверто космополітичний. Залежно від настрою чи сприйняття, він поєднує в собі індустріальний американський стімпанк, благородну британську готику та м’який італійський романтизм. Усі елементи ідеально гармонують між собою та створюють атмосферу затишку і комфорту. Головний зал вміщує 35 гостей, а в режимі фуршету чи паті – 50. Маючи доволі високу стелю, зал освітлюється за допомогою виняткової люстри та настінних бра після заходу сонця. Вдень його наповнює потік денного світла через відкриті назустріч місту двері та вітражні вікна. Автентичні дерев’яні сходи ведуть ще у два зали: зліва – зал з відкритим баром на 8 гостей , справа - з монументальними арками, потужними перекриттями на стелі та загадковими дзеркалами на стінах, розрахований на 40 гостей (80 у режимі фуршету).	The main hall seats up to 35 visitors, and if there is a banquet for a corporate party, it will fit 50 people. The ceiling in this hall is of a considerable height, the room is illuminated with the help of a huge handmade chandelier and wall sconces. Going down the wooden staircase, visitors enter the lower room, where they are offered two rooms: a small one, designed for 8 people, and a hall with monumental arches for 40 people (80 people during a buffet table)
3	Текст на фото после меню	Атмосфера ресторану ідеальна як для романтичної вечері, так і для сімейного обіду у вихідні, сніданку чи ділового ланчу у будні. UW працює і вночі, тож він є ідеальним місцем і для пре- чи афтерпаті.	The interior of the restaurant is made in an original manner. It combines an industrial American steampunk, noble English gothic, soft Italian romanticism. All elements perfectly harmonize and give birth to completely unusual atmosphere.
4	Меню	Меню Under Wonder сформовано зі страв італійської кухні в авторському виконанні шефа. Гостям пропонують паштет із печінки цесарки у вишневій глазурі, салат із пряним лососем та козиним сиром, теплий салат із телятини під медово-гірчичним соусом, філе сібаса з булгуром неро та яєчним соусом, різотто з гребінцями, білими грибами та пекоріно з трюфелем, палаючу бістеку фіорентину, домашню пасту та тірамісу за старовинним рецептом. Особливої уваги заслуговують відомі усьому місту фірмові сніданки та ланчі UW.	Menu consist of of Italian and French cuisine in the author's execution from our chef. Guests will be offered Sea bass fillet with black burgur and egg sauce, Guinea fowl liver pate in cherry glaze, Genoa meat pie with wine sauce, Salad with salmon and goat cheese, Homemade spinach maltagliati with rabbit and sun-dried tomatoes, Ligurian style octopus with tomatoes and potato gratin, Duck fillet with teriyaki sauce and sweet couscous, a variety of dishes from josper, Tiramisu or Cheesecake with a truffle in white chocolate and walnut crumbs.
5	Про нас	У центрі Києва, на площі Льва Толстого, розташований легендарний італійський ресторан Under Wonder, заснований Галиною Фрунзе та Миколою Голотіним 2009 року. Вишуканий інтер’єр закладу – інтелігентно простий та багатогранний. Атмосфера ресторану насичена спокоєм з урбаністичним присмаком свободи. Тут можна дозволити собі розкіш приглушеної бесіди під акомпанемент авторських блюд італійської кухні. Завітайте до нас, щоб зануритися в атмосферу комфорту та смаку.	The Under Wonder restaurant is located in the heart of Kiev, on the Lev Tolstoy Square. Main priority here is human communication. In these walls you can find peace with an urban flavor, afford a special pleasure of a quiet conversation, gourmet cuisine in an artistic-designed space.
\.


--
-- Data for Name: main_menu_menufile; Type: TABLE DATA; Schema: public; Owner: underwonder_remastered
--

COPY public.main_menu_menufile (id, file) FROM stdin;
1	Borys_Lemeshko_QhOco8o.pdf
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


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
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: index_page_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.index_page_content_id_seq', 5, true);


--
-- Name: main_menu_menufile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: underwonder_remastered
--

SELECT pg_catalog.setval('public.main_menu_menufile_id_seq', 1, true);


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
-- Name: index_page_content index_page_content_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.index_page_content
    ADD CONSTRAINT index_page_content_pkey PRIMARY KEY (id);


--
-- Name: main_menu_menufile main_menu_menufile_pkey; Type: CONSTRAINT; Schema: public; Owner: underwonder_remastered
--

ALTER TABLE ONLY public.main_menu_menufile
    ADD CONSTRAINT main_menu_menufile_pkey PRIMARY KEY (id);


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
-- PostgreSQL database dump complete
--


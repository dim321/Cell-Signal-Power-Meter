--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4 (Ubuntu 11.4-1.pgdg18.04+1)
-- Dumped by pg_dump version 11.4 (Ubuntu 11.4-1.pgdg18.04+1)

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: dim
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO dim;

--
-- Name: net_points; Type: TABLE; Schema: public; Owner: dim
--

CREATE TABLE public.net_points (
    id bigint NOT NULL,
    latitude double precision,
    longitude double precision,
    dbm integer,
    asu integer,
    mcc integer,
    operator_id bigint NOT NULL,
    mnc integer,
    net_type character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.net_points OWNER TO dim;

--
-- Name: net_points_id_seq; Type: SEQUENCE; Schema: public; Owner: dim
--

CREATE SEQUENCE public.net_points_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.net_points_id_seq OWNER TO dim;

--
-- Name: net_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dim
--

ALTER SEQUENCE public.net_points_id_seq OWNED BY public.net_points.id;


--
-- Name: operators; Type: TABLE; Schema: public; Owner: dim
--

CREATE TABLE public.operators (
    id bigint NOT NULL,
    mnc integer,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.operators OWNER TO dim;

--
-- Name: operators_id_seq; Type: SEQUENCE; Schema: public; Owner: dim
--

CREATE SEQUENCE public.operators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operators_id_seq OWNER TO dim;

--
-- Name: operators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dim
--

ALTER SEQUENCE public.operators_id_seq OWNED BY public.operators.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: dim
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO dim;

--
-- Name: urban_items; Type: TABLE; Schema: public; Owner: dim
--

CREATE TABLE public.urban_items (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.urban_items OWNER TO dim;

--
-- Name: urban_items_id_seq; Type: SEQUENCE; Schema: public; Owner: dim
--

CREATE SEQUENCE public.urban_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.urban_items_id_seq OWNER TO dim;

--
-- Name: urban_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dim
--

ALTER SEQUENCE public.urban_items_id_seq OWNED BY public.urban_items.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: dim
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet
);


ALTER TABLE public.users OWNER TO dim;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: dim
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO dim;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dim
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: net_points id; Type: DEFAULT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.net_points ALTER COLUMN id SET DEFAULT nextval('public.net_points_id_seq'::regclass);


--
-- Name: operators id; Type: DEFAULT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.operators ALTER COLUMN id SET DEFAULT nextval('public.operators_id_seq'::regclass);


--
-- Name: urban_items id; Type: DEFAULT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.urban_items ALTER COLUMN id SET DEFAULT nextval('public.urban_items_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: dim
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-09-25 06:46:41.785352	2019-09-25 06:46:41.785352
\.


--
-- Data for Name: net_points; Type: TABLE DATA; Schema: public; Owner: dim
--

COPY public.net_points (id, latitude, longitude, dbm, asu, mcc, operator_id, mnc, net_type, user_id, created_at, updated_at) FROM stdin;
93	55.6126647999999975	49.2975344999999976	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
1	55.655916	49.2275	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
2	55.676709	49.208145	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
3	55.720796	49.14792	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
4	55.766601	49.107495	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
5	55.787558	49.10029	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
6	55.784287	49.101395	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
7	55.705976	49.162146	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
8	55.761193	49.111775	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
9	55.650995	49.232897	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
10	55.609604	49.298978	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
11	55.653168	49.230043	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
12	55.755078	49.117247	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
13	55.621123	49.280592	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
14	55.762865	49.110295	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
15	55.617403	49.286514	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
16	55.726947	49.142384	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
17	55.670586	49.214089	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
18	55.759678	49.113127	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
19	55.757082	49.115444	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
20	55.72389	49.145141	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
21	55.759147	49.11361	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
22	55.780795	49.102603	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
23	55.729352	49.14027	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
24	55.783243	49.10177	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
25	55.740962	49.129895	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
26	55.776879	49.103944	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
27	55.68771	49.198495	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
28	55.763861	49.109394	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
29	55.736082	49.134229	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
30	55.755893	49.116528	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
31	55.765316	49.108085	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
32	55.766034	49.107688	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
33	55.754076	49.11818	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
34	55.775123	49.104556	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
35	55.767223	49.107248	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
36	55.772763	49.10536	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
37	55.708557	49.158906	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
38	55.63112	49.264627	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
39	55.683277	49.202593	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
40	55.776034	49.104234	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
41	55.76843	49.106851	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
42	55.743444	49.127674	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
43	55.660038	49.223734	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
44	55.699029	49.17339	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
45	55.773505	49.105113	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
46	55.767784	49.107087	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
47	55.764362	49.108954	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
48	55.668184	49.216321	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
49	55.785191	49.101105	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
50	55.770717	49.106079	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
51	55.787938	49.100172	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
52	55.694839	49.182853	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
53	55.786825	49.100537	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
54	55.758211	49.114468	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
55	55.761742	49.111303	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
56	55.703207	49.165708	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
57	55.67398	49.210988	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
58	55.664105	49.220033	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
59	55.646	49.240868	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
60	55.76234	49.110767	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
61	55.78232	49.102081	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
62	55.778665	49.103354	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
63	55.71694	49.151342	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
64	55.785613	49.10096	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
65	55.760179	49.112687	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
66	55.763336	49.109877	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
67	55.612913	49.29371	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
68	55.745769	49.125571	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
69	55.738631	49.131976	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
70	55.752802	49.119199	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
71	55.771369	49.105843	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
72	55.77779	49.103644	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
73	55.749163	49.122545	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
74	55.700698	49.17015	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
75	55.640282	49.249999	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
76	55.748088	49.123511	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
77	55.693158	49.190127	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
78	55.784823	49.101228	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
79	55.69106	49.195266	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
80	55.647883	49.237907	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
81	55.772093	49.105596	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
82	55.786189	49.100762	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
83	55.780053	49.102882	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
84	55.73346	49.136579	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
85	55.76919	49.106583	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
86	55.628255	49.269197	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
87	55.760626	49.112269	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
88	55.711634	49.156106	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
89	55.633967	49.260099	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
90	55.77432	49.104856	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
91	55.764839	49.108503	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
92	55.769987	49.106326	-95	7	250	11	99	LTE	1	2019-09-28 08:09:54.351382	2019-09-28 08:09:54.351382
\.


--
-- Data for Name: operators; Type: TABLE DATA; Schema: public; Owner: dim
--

COPY public.operators (id, mnc, name, created_at, updated_at) FROM stdin;
1	1	МТС	2019-09-27 18:38:44.603621	2019-09-27 18:38:44.603621
2	2	Мегафон	2019-09-27 18:39:03.870811	2019-09-27 18:39:03.870811
3	7	Смартс	2019-09-27 18:46:19.649572	2019-09-27 18:46:19.649572
4	11	Yota	2019-09-27 18:47:49.319773	2019-09-27 18:47:49.319773
5	11	Yota	2019-09-27 18:48:28.691558	2019-09-27 18:48:28.691558
6	18	Основа Телеком	2019-09-27 18:49:01.158696	2019-09-27 18:49:01.158696
7	20	Tele2	2019-09-27 18:49:37.320866	2019-09-27 18:49:37.320866
8	35	МОТИВ	2019-09-27 18:50:07.753191	2019-09-27 18:50:07.753191
9	37	Скайлинк	2019-09-27 18:50:33.266122	2019-09-27 18:50:33.266122
10	39	Ростелеком	2019-09-27 18:50:53.730145	2019-09-27 18:50:53.730145
11	99	Билайн	2019-09-27 18:51:18.368731	2019-09-27 18:51:18.368731
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: dim
--

COPY public.schema_migrations (version) FROM stdin;
20190925064355
20190927154126
20190927154200
20190927170139
20190927170205
20190927172639
20190927182949
\.


--
-- Data for Name: urban_items; Type: TABLE DATA; Schema: public; Owner: dim
--

COPY public.urban_items (id, name, created_at, updated_at) FROM stdin;
1	Жилой дом	2019-09-25 13:12:39.84322	2019-09-25 13:12:39.84322
2	Бизнес-центр	2019-09-25 13:13:11.408126	2019-09-25 13:13:11.408126
3	Школа	2019-09-25 13:13:24.429689	2019-09-25 13:13:24.429689
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dim
--

COPY public.users (id, created_at, updated_at, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip) FROM stdin;
1	2019-09-27 17:19:18.290542	2019-09-27 17:19:18.290542	fucker@internet.email	$2a$11$N91m9ORw9VZItsekdPctRe1v4vOhLVzLe8oY508dnZHvZxI/XkJa6	\N	\N	\N	0	\N	\N	\N	\N
\.


--
-- Name: net_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dim
--

SELECT pg_catalog.setval('public.net_points_id_seq', 1, true);


--
-- Name: operators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dim
--

SELECT pg_catalog.setval('public.operators_id_seq', 11, true);


--
-- Name: urban_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dim
--

SELECT pg_catalog.setval('public.urban_items_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dim
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: net_points net_points_pkey; Type: CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.net_points
    ADD CONSTRAINT net_points_pkey PRIMARY KEY (id);


--
-- Name: operators operators_pkey; Type: CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.operators
    ADD CONSTRAINT operators_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: urban_items urban_items_pkey; Type: CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.urban_items
    ADD CONSTRAINT urban_items_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_net_points_on_operator_id; Type: INDEX; Schema: public; Owner: dim
--

CREATE INDEX index_net_points_on_operator_id ON public.net_points USING btree (operator_id);


--
-- Name: index_net_points_on_user_id; Type: INDEX; Schema: public; Owner: dim
--

CREATE INDEX index_net_points_on_user_id ON public.net_points USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: dim
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: dim
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: net_points fk_rails_547ab4c4af; Type: FK CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.net_points
    ADD CONSTRAINT fk_rails_547ab4c4af FOREIGN KEY (operator_id) REFERENCES public.operators(id);


--
-- Name: net_points fk_rails_9f460cec54; Type: FK CONSTRAINT; Schema: public; Owner: dim
--

ALTER TABLE ONLY public.net_points
    ADD CONSTRAINT fk_rails_9f460cec54 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--


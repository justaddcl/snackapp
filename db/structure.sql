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
-- Name: user_role_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.user_role_type AS ENUM (
    'discipleship_community_pastor',
    'discipleship_community_coordinator',
    'small_group_leader',
    'small_group_member',
    'small_group_coordinator'
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: assignments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assignments (
    id bigint NOT NULL,
    user_id integer,
    event_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assignments_id_seq OWNED BY public.assignments.id;


--
-- Name: discipleship_communities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.discipleship_communities (
    id bigint NOT NULL,
    pastor_id integer,
    night character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: discipleship_communities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.discipleship_communities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: discipleship_communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.discipleship_communities_id_seq OWNED BY public.discipleship_communities.id;


--
-- Name: event_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.event_types (
    id bigint NOT NULL,
    description character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: event_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.event_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.event_types_id_seq OWNED BY public.event_types.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    event_type_id integer,
    description character varying,
    gatherable_id integer,
    gatherable_type character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    date date,
    start_time time without time zone
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: small_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.small_groups (
    id bigint NOT NULL,
    leader_id integer,
    discipleship_community_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: small_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.small_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: small_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.small_groups_id_seq OWNED BY public.small_groups.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_roles (
    id bigint NOT NULL,
    user_id integer,
    small_group_id integer,
    type public.user_role_type,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    password_digest character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    remember_digest character varying,
    admin boolean DEFAULT false
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: assignments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assignments ALTER COLUMN id SET DEFAULT nextval('public.assignments_id_seq'::regclass);


--
-- Name: discipleship_communities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discipleship_communities ALTER COLUMN id SET DEFAULT nextval('public.discipleship_communities_id_seq'::regclass);


--
-- Name: event_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event_types ALTER COLUMN id SET DEFAULT nextval('public.event_types_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: small_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.small_groups ALTER COLUMN id SET DEFAULT nextval('public.small_groups_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (id);


--
-- Name: discipleship_communities discipleship_communities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discipleship_communities
    ADD CONSTRAINT discipleship_communities_pkey PRIMARY KEY (id);


--
-- Name: event_types event_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event_types
    ADD CONSTRAINT event_types_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: small_groups small_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.small_groups
    ADD CONSTRAINT small_groups_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_assignments_on_event_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assignments_on_event_id ON public.assignments USING btree (event_id);


--
-- Name: index_assignments_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assignments_on_user_id ON public.assignments USING btree (user_id);


--
-- Name: index_discipleship_communities_on_pastor_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_discipleship_communities_on_pastor_id ON public.discipleship_communities USING btree (pastor_id);


--
-- Name: index_events_on_description; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_description ON public.events USING btree (description);


--
-- Name: index_events_on_event_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_event_type_id ON public.events USING btree (event_type_id);


--
-- Name: index_small_groups_on_discipleship_community_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_small_groups_on_discipleship_community_id ON public.small_groups USING btree (discipleship_community_id);


--
-- Name: index_small_groups_on_leader_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_small_groups_on_leader_id ON public.small_groups USING btree (leader_id);


--
-- Name: index_user_roles_on_small_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_roles_on_small_group_id ON public.user_roles USING btree (small_group_id);


--
-- Name: index_user_roles_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_roles_on_user_id ON public.user_roles USING btree (user_id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20191125022054');



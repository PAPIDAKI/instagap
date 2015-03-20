--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE activities (
    id integer NOT NULL,
    date date,
    type character varying,
    note text,
    operator character varying,
    persons integer,
    approved_by character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    registration_id integer
);


--
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE activities_id_seq OWNED BY activities.id;


--
-- Name: certifications; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE certifications (
    id integer NOT NULL,
    standard_id integer,
    production_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: certifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE certifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: certifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE certifications_id_seq OWNED BY certifications.id;


--
-- Name: farm_dros; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE farm_dros (
    id integer NOT NULL,
    farmako_id integer,
    systatik_id character varying,
    kod_morfh character varying,
    synthesh numeric,
    katharotht numeric,
    kodikos_kath bytea,
    delrec bytea,
    fprint bytea,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: farm_dros_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE farm_dros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: farm_dros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE farm_dros_id_seq OWNED BY farm_dros.id;


--
-- Name: farmako_crop_skeyasmata; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE farmako_crop_skeyasmata (
    id integer NOT NULL,
    farmako_id integer,
    mcrop_id integer,
    crops character varying,
    edr_cod_kat character varying,
    eidos character varying,
    emporikhon character varying,
    gbonoma character varying,
    aposyrsh timestamp without time zone,
    telos_egri timestamp without time zone,
    un_delete bytea,
    un_date date,
    soil bytea,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: farmako_crop_skeyasmata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE farmako_crop_skeyasmata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: farmako_crop_skeyasmata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE farmako_crop_skeyasmata_id_seq OWNED BY farmako_crop_skeyasmata.id;


--
-- Name: farmakos; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE farmakos (
    hmer_egris date,
    kod_farmak integer NOT NULL,
    gbonoma character varying,
    emporikhon character varying,
    fprint boolean,
    common boolean,
    enimerosi boolean,
    amateur_use boolean,
    tag boolean,
    mixture boolean,
    edr_cod_kat character varying,
    date_notification date,
    date_update date,
    kode character varying,
    num_protok integer,
    num_protok_total character varying,
    tegris character varying,
    type_egris character varying,
    kat_number_egris integer,
    fys_katast integer,
    fys_kat integer,
    "group" integer,
    morfhskeya character varying,
    bohthitike numeric,
    aposyrsh character varying,
    kod character varying,
    food boolean,
    stoxos character varying,
    tropo_efar character varying,
    met_klima character varying,
    paraskeyas integer,
    antiprosop integer,
    contact_market integer,
    contact_point integer,
    code_toxik character varying,
    rcode character varying,
    telos_egri date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: farmakos_kod_farmak_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE farmakos_kod_farmak_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: farmakos_kod_farmak_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE farmakos_kod_farmak_seq OWNED BY farmakos.kod_farmak;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE groups (
    id integer NOT NULL,
    name character varying,
    address character varying,
    phone character varying,
    email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar character varying
);


--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE groups_id_seq OWNED BY groups.id;


--
-- Name: growers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE growers (
    id integer NOT NULL,
    name character varying,
    address character varying,
    phone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: growers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE growers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: growers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE growers_id_seq OWNED BY growers.id;


--
-- Name: mcrops; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mcrops (
    code_fyta integer NOT NULL,
    kathg character varying,
    eidos character varying,
    gonoma character varying,
    general integer,
    code character varying,
    klartext character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: mcrops_code_fyta_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE mcrops_code_fyta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mcrops_code_fyta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE mcrops_code_fyta_seq OWNED BY mcrops.code_fyta;


--
-- Name: memberships; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE memberships (
    id integer NOT NULL,
    group_id integer,
    grower_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE memberships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE memberships_id_seq OWNED BY memberships.id;


--
-- Name: mepembashes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mepembashes (
    id integer NOT NULL,
    farmako_id integer,
    mcrop_id integer,
    diast_pros integer,
    comments character varying,
    delrec character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: mepembashes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE mepembashes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mepembashes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE mepembashes_id_seq OWNED BY mepembashes.id;


--
-- Name: mfcs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mfcs (
    id integer NOT NULL,
    farmako_id integer,
    mcrop_id integer,
    crops character varying,
    edr_cod_kat character varying,
    eidos character varying,
    emporikho character varying,
    gbonoma character varying,
    apsyrsh date,
    telos_egri date,
    un_delete date,
    soil bytea,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: mfcs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE mfcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mfcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE mfcs_id_seq OWNED BY mfcs.id;


--
-- Name: pmus; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE pmus (
    id integer NOT NULL,
    address character varying,
    location character varying,
    grower_id integer,
    facilities character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    registration_id integer
);


--
-- Name: pmus_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pmus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pmus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pmus_id_seq OWNED BY pmus.id;


--
-- Name: produces; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE produces (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: produces_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE produces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: produces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE produces_id_seq OWNED BY produces.id;


--
-- Name: productionactiviations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE productionactiviations (
    id integer NOT NULL,
    activity_id integer,
    production_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: productionactiviations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE productionactiviations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: productionactiviations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE productionactiviations_id_seq OWNED BY productionactiviations.id;


--
-- Name: productions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE productions (
    id integer NOT NULL,
    pmu_id integer,
    produce_id integer,
    variety character varying,
    plantation_year integer,
    number_of_trees integer,
    expected_quantitiy integer,
    ehd date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    mcrop_id integer
);


--
-- Name: productions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE productions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: productions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE productions_id_seq OWNED BY productions.id;


--
-- Name: registrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE registrations (
    id integer NOT NULL,
    name character varying,
    email character varying,
    role character varying,
    group_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: registrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE registrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: registrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE registrations_id_seq OWNED BY registrations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: standards; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE standards (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: standards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE standards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: standards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE standards_id_seq OWNED BY standards.id;


--
-- Name: systatiks; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE systatiks (
    kodikos character varying NOT NULL,
    onomadron character varying,
    arxiko character varying,
    aposyrsh character varying,
    cipac integer,
    dr_cod_kat character varying,
    old_new bytea,
    fao character varying,
    cas_number character varying,
    code_xhmik integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY activities ALTER COLUMN id SET DEFAULT nextval('activities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY certifications ALTER COLUMN id SET DEFAULT nextval('certifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY farm_dros ALTER COLUMN id SET DEFAULT nextval('farm_dros_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY farmako_crop_skeyasmata ALTER COLUMN id SET DEFAULT nextval('farmako_crop_skeyasmata_id_seq'::regclass);


--
-- Name: kod_farmak; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY farmakos ALTER COLUMN kod_farmak SET DEFAULT nextval('farmakos_kod_farmak_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY groups ALTER COLUMN id SET DEFAULT nextval('groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY growers ALTER COLUMN id SET DEFAULT nextval('growers_id_seq'::regclass);


--
-- Name: code_fyta; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY mcrops ALTER COLUMN code_fyta SET DEFAULT nextval('mcrops_code_fyta_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY memberships ALTER COLUMN id SET DEFAULT nextval('memberships_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY mepembashes ALTER COLUMN id SET DEFAULT nextval('mepembashes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY mfcs ALTER COLUMN id SET DEFAULT nextval('mfcs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pmus ALTER COLUMN id SET DEFAULT nextval('pmus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY produces ALTER COLUMN id SET DEFAULT nextval('produces_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY productionactiviations ALTER COLUMN id SET DEFAULT nextval('productionactiviations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY productions ALTER COLUMN id SET DEFAULT nextval('productions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY registrations ALTER COLUMN id SET DEFAULT nextval('registrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY standards ALTER COLUMN id SET DEFAULT nextval('standards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: activities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: certifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY certifications
    ADD CONSTRAINT certifications_pkey PRIMARY KEY (id);


--
-- Name: farm_dros_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY farm_dros
    ADD CONSTRAINT farm_dros_pkey PRIMARY KEY (id);


--
-- Name: farmako_crop_skeyasmata_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY farmako_crop_skeyasmata
    ADD CONSTRAINT farmako_crop_skeyasmata_pkey PRIMARY KEY (id);


--
-- Name: farmakos_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY farmakos
    ADD CONSTRAINT farmakos_pkey PRIMARY KEY (kod_farmak);


--
-- Name: groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: growers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY growers
    ADD CONSTRAINT growers_pkey PRIMARY KEY (id);


--
-- Name: mcrops_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mcrops
    ADD CONSTRAINT mcrops_pkey PRIMARY KEY (code_fyta);


--
-- Name: memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY memberships
    ADD CONSTRAINT memberships_pkey PRIMARY KEY (id);


--
-- Name: mepembashes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mepembashes
    ADD CONSTRAINT mepembashes_pkey PRIMARY KEY (id);


--
-- Name: mfcs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mfcs
    ADD CONSTRAINT mfcs_pkey PRIMARY KEY (id);


--
-- Name: pmus_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pmus
    ADD CONSTRAINT pmus_pkey PRIMARY KEY (id);


--
-- Name: produces_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY produces
    ADD CONSTRAINT produces_pkey PRIMARY KEY (id);


--
-- Name: productionactiviations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY productionactiviations
    ADD CONSTRAINT productionactiviations_pkey PRIMARY KEY (id);


--
-- Name: productions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY productions
    ADD CONSTRAINT productions_pkey PRIMARY KEY (id);


--
-- Name: registrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY registrations
    ADD CONSTRAINT registrations_pkey PRIMARY KEY (id);


--
-- Name: standards_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY standards
    ADD CONSTRAINT standards_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_activities_on_registration_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_activities_on_registration_id ON activities USING btree (registration_id);


--
-- Name: index_certifications_on_production_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_certifications_on_production_id ON certifications USING btree (production_id);


--
-- Name: index_certifications_on_standard_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_certifications_on_standard_id ON certifications USING btree (standard_id);


--
-- Name: index_memberships_on_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_memberships_on_group_id ON memberships USING btree (group_id);


--
-- Name: index_memberships_on_grower_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_memberships_on_grower_id ON memberships USING btree (grower_id);


--
-- Name: index_pmus_on_grower_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_pmus_on_grower_id ON pmus USING btree (grower_id);


--
-- Name: index_pmus_on_registration_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_pmus_on_registration_id ON pmus USING btree (registration_id);


--
-- Name: index_productionactiviations_on_activity_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_productionactiviations_on_activity_id ON productionactiviations USING btree (activity_id);


--
-- Name: index_productionactiviations_on_production_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_productionactiviations_on_production_id ON productionactiviations USING btree (production_id);


--
-- Name: index_productions_on_mcrop_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_productions_on_mcrop_id ON productions USING btree (mcrop_id);


--
-- Name: index_productions_on_pmu_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_productions_on_pmu_id ON productions USING btree (pmu_id);


--
-- Name: index_productions_on_produce_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_productions_on_produce_id ON productions USING btree (produce_id);


--
-- Name: index_registrations_on_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_registrations_on_group_id ON registrations USING btree (group_id);


--
-- Name: index_systatiks_on_kodikos; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_systatiks_on_kodikos ON systatiks USING btree (kodikos);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_0d482b18bb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY memberships
    ADD CONSTRAINT fk_rails_0d482b18bb FOREIGN KEY (group_id) REFERENCES groups(id);


--
-- Name: fk_rails_289128f1c4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pmus
    ADD CONSTRAINT fk_rails_289128f1c4 FOREIGN KEY (grower_id) REFERENCES growers(id);


--
-- Name: fk_rails_3d2a2708e5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY certifications
    ADD CONSTRAINT fk_rails_3d2a2708e5 FOREIGN KEY (production_id) REFERENCES productions(id);


--
-- Name: fk_rails_73482be877; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY productions
    ADD CONSTRAINT fk_rails_73482be877 FOREIGN KEY (pmu_id) REFERENCES pmus(id);


--
-- Name: fk_rails_a04c28dc10; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY registrations
    ADD CONSTRAINT fk_rails_a04c28dc10 FOREIGN KEY (group_id) REFERENCES groups(id);


--
-- Name: fk_rails_a9da9fa290; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY memberships
    ADD CONSTRAINT fk_rails_a9da9fa290 FOREIGN KEY (grower_id) REFERENCES growers(id);


--
-- Name: fk_rails_d4f2cb52e8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY productions
    ADD CONSTRAINT fk_rails_d4f2cb52e8 FOREIGN KEY (produce_id) REFERENCES produces(id);


--
-- Name: fk_rails_d651801748; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY certifications
    ADD CONSTRAINT fk_rails_d651801748 FOREIGN KEY (standard_id) REFERENCES standards(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20150217074805');

INSERT INTO schema_migrations (version) VALUES ('20150217074840');

INSERT INTO schema_migrations (version) VALUES ('20150217075218');

INSERT INTO schema_migrations (version) VALUES ('20150217075637');

INSERT INTO schema_migrations (version) VALUES ('20150217075906');

INSERT INTO schema_migrations (version) VALUES ('20150217075907');

INSERT INTO schema_migrations (version) VALUES ('20150217080619');

INSERT INTO schema_migrations (version) VALUES ('20150217080620');

INSERT INTO schema_migrations (version) VALUES ('20150217142717');

INSERT INTO schema_migrations (version) VALUES ('20150218120043');

INSERT INTO schema_migrations (version) VALUES ('20150219100928');

INSERT INTO schema_migrations (version) VALUES ('20150223112155');

INSERT INTO schema_migrations (version) VALUES ('20150301075128');

INSERT INTO schema_migrations (version) VALUES ('20150301163144');

INSERT INTO schema_migrations (version) VALUES ('20150304115219');

INSERT INTO schema_migrations (version) VALUES ('20150305100530');

INSERT INTO schema_migrations (version) VALUES ('20150305101951');

INSERT INTO schema_migrations (version) VALUES ('20150306093226');

INSERT INTO schema_migrations (version) VALUES ('20150311170105');

INSERT INTO schema_migrations (version) VALUES ('20150311190320');

INSERT INTO schema_migrations (version) VALUES ('20150312134424');

INSERT INTO schema_migrations (version) VALUES ('20150312182403');

INSERT INTO schema_migrations (version) VALUES ('20150313085156');

INSERT INTO schema_migrations (version) VALUES ('20150313091322');

INSERT INTO schema_migrations (version) VALUES ('20150313091833');

INSERT INTO schema_migrations (version) VALUES ('20150313114237');

INSERT INTO schema_migrations (version) VALUES ('20150315091411');

INSERT INTO schema_migrations (version) VALUES ('20150315092502');

INSERT INTO schema_migrations (version) VALUES ('20150315110255');

INSERT INTO schema_migrations (version) VALUES ('20150315121636');

INSERT INTO schema_migrations (version) VALUES ('20150316051707');

INSERT INTO schema_migrations (version) VALUES ('20150316071556');

INSERT INTO schema_migrations (version) VALUES ('20150316084209');

INSERT INTO schema_migrations (version) VALUES ('20150316084712');

INSERT INTO schema_migrations (version) VALUES ('20150316155754');

INSERT INTO schema_migrations (version) VALUES ('20150316160715');

INSERT INTO schema_migrations (version) VALUES ('20150317114434');

INSERT INTO schema_migrations (version) VALUES ('20150317120611');

INSERT INTO schema_migrations (version) VALUES ('20150318053905');

INSERT INTO schema_migrations (version) VALUES ('20150318100822');

INSERT INTO schema_migrations (version) VALUES ('20150318104300');

INSERT INTO schema_migrations (version) VALUES ('20150319125505');


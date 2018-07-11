--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-07-11 12:41:36 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 17112)
-- Name: millena; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA millena;


ALTER SCHEMA millena OWNER TO postgres;

--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA millena; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA millena IS 'Esse é o esquema, bb';


--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = millena, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 17113)
-- Name: barreto; Type: TABLE; Schema: millena; Owner: postgres
--

CREATE TABLE barreto (
);


ALTER TABLE barreto OWNER TO postgres;

--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 182
-- Name: TABLE barreto; Type: COMMENT; Schema: millena; Owner: postgres
--

COMMENT ON TABLE barreto IS 'já esta ficando estranho, bb';


--
-- TOC entry 183 (class 1259 OID 17116)
-- Name: cliente; Type: TABLE; Schema: millena; Owner: postgres
--

CREATE TABLE cliente (
    cd_cliente integer NOT NULL,
    endereco_cd_endereco integer,
    nm_razaosocial character varying(60),
    nm_fantasia character varying(30),
    ds_email character varying(100),
    cod_identificacao integer,
    tipo_cliente character varying(30),
    tp_visivel character varying(10)
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 17140)
-- Name: endereco; Type: TABLE; Schema: millena; Owner: postgres
--

CREATE TABLE endereco (
    cd_endereco integer NOT NULL,
    nm_rua character varying(60),
    nr_casa integer,
    ds_complemento character varying(30),
    nm_bairro character varying(20),
    nm_cidade character varying(30),
    ds_cep character varying(10),
    telefone1 numeric(5,4),
    telefone2 numeric(5,4)
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17137)
-- Name: funcao; Type: TABLE; Schema: millena; Owner: postgres
--

CREATE TABLE funcao (
    cd_funcao integer NOT NULL,
    ds_funcao character varying(25),
    tp_visivel character(25)
);


ALTER TABLE funcao OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 17131)
-- Name: funcionario; Type: TABLE; Schema: millena; Owner: postgres
--

CREATE TABLE funcionario (
    cd_funcionario integer NOT NULL,
    funcao_cd_funcao integer,
    endereco_cd_endereco integer,
    nm_funcionario character varying(60),
    ds_senha character varying(15),
    nick text,
    tp_visivel character(10)
);


ALTER TABLE funcionario OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17143)
-- Name: ordem_servico; Type: TABLE; Schema: millena; Owner: postgres
--

CREATE TABLE ordem_servico (
    cd_ordem_servico integer NOT NULL,
    funcionario_cd_funcionario integer,
    cliente_cd_cliente integer,
    dt_ordem_servico date,
    vl_total numeric(7,5),
    bool_fechado boolean
);


ALTER TABLE ordem_servico OWNER TO postgres;

--
-- TOC entry 2171 (class 0 OID 17113)
-- Dependencies: 182
-- Data for Name: barreto; Type: TABLE DATA; Schema: millena; Owner: postgres
--

COPY barreto  FROM stdin;
\.


--
-- TOC entry 2172 (class 0 OID 17116)
-- Dependencies: 183
-- Data for Name: cliente; Type: TABLE DATA; Schema: millena; Owner: postgres
--

COPY cliente (cd_cliente, endereco_cd_endereco, nm_razaosocial, nm_fantasia, ds_email, cod_identificacao, tipo_cliente, tp_visivel) FROM stdin;
\.


--
-- TOC entry 2175 (class 0 OID 17140)
-- Dependencies: 186
-- Data for Name: endereco; Type: TABLE DATA; Schema: millena; Owner: postgres
--

COPY endereco (cd_endereco, nm_rua, nr_casa, ds_complemento, nm_bairro, nm_cidade, ds_cep, telefone1, telefone2) FROM stdin;
\.


--
-- TOC entry 2174 (class 0 OID 17137)
-- Dependencies: 185
-- Data for Name: funcao; Type: TABLE DATA; Schema: millena; Owner: postgres
--

COPY funcao (cd_funcao, ds_funcao, tp_visivel) FROM stdin;
\.


--
-- TOC entry 2173 (class 0 OID 17131)
-- Dependencies: 184
-- Data for Name: funcionario; Type: TABLE DATA; Schema: millena; Owner: postgres
--

COPY funcionario (cd_funcionario, funcao_cd_funcao, endereco_cd_endereco, nm_funcionario, ds_senha, nick, tp_visivel) FROM stdin;
\.


--
-- TOC entry 2176 (class 0 OID 17143)
-- Dependencies: 187
-- Data for Name: ordem_servico; Type: TABLE DATA; Schema: millena; Owner: postgres
--

COPY ordem_servico (cd_ordem_servico, funcionario_cd_funcionario, cliente_cd_cliente, dt_ordem_servico, vl_total, bool_fechado) FROM stdin;
\.


--
-- TOC entry 2041 (class 2606 OID 25324)
-- Name: pk_cliente; Type: CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (cd_cliente);


--
-- TOC entry 2047 (class 2606 OID 25336)
-- Name: pk_endereco; Type: CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (cd_endereco);


--
-- TOC entry 2045 (class 2606 OID 25343)
-- Name: pk_funcao; Type: CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY funcao
    ADD CONSTRAINT pk_funcao PRIMARY KEY (cd_funcao);


--
-- TOC entry 2043 (class 2606 OID 25350)
-- Name: pk_funcionario; Type: CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT pk_funcionario PRIMARY KEY (cd_funcionario);


--
-- TOC entry 2049 (class 2606 OID 25357)
-- Name: pk_oredem_servico; Type: CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY ordem_servico
    ADD CONSTRAINT pk_oredem_servico PRIMARY KEY (cd_ordem_servico);


--
-- TOC entry 2039 (class 1259 OID 25368)
-- Name: fki_endereco_cd_endereco; Type: INDEX; Schema: millena; Owner: postgres
--

CREATE INDEX fki_endereco_cd_endereco ON cliente USING btree (endereco_cd_endereco);


--
-- TOC entry 2050 (class 2606 OID 25325)
-- Name: cliente_ordem_servico; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_ordem_servico FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente);


--
-- TOC entry 2051 (class 2606 OID 25330)
-- Name: fk_cliente; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cd_cliente) REFERENCES cliente(cd_cliente);


--
-- TOC entry 2055 (class 2606 OID 25337)
-- Name: fk_endereco; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT fk_endereco FOREIGN KEY (cd_endereco) REFERENCES endereco(cd_endereco);


--
-- TOC entry 2052 (class 2606 OID 25363)
-- Name: fk_endereco_cd_endereco; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT fk_endereco_cd_endereco FOREIGN KEY (endereco_cd_endereco) REFERENCES endereco(cd_endereco);


--
-- TOC entry 2054 (class 2606 OID 25344)
-- Name: fk_funcao; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY funcao
    ADD CONSTRAINT fk_funcao FOREIGN KEY (cd_funcao) REFERENCES funcao(cd_funcao);


--
-- TOC entry 2053 (class 2606 OID 25351)
-- Name: fk_funcionario; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT fk_funcionario FOREIGN KEY (cd_funcionario) REFERENCES funcionario(cd_funcionario);


--
-- TOC entry 2056 (class 2606 OID 25358)
-- Name: fk_ordem_servico; Type: FK CONSTRAINT; Schema: millena; Owner: postgres
--

ALTER TABLE ONLY ordem_servico
    ADD CONSTRAINT fk_ordem_servico FOREIGN KEY (cd_ordem_servico) REFERENCES ordem_servico(cd_ordem_servico);


--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-07-11 12:41:36 BRT

--
-- PostgreSQL database dump complete
--


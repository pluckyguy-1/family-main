--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

-- Started on 2025-06-03 15:31:13 MSK

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
-- TOC entry 224 (class 1259 OID 24745)
-- Name: material_types; Type: TABLE; Schema: public; Owner: student2
--

CREATE TABLE public.material_types (
    id integer NOT NULL,
    type_name character varying,
    defect_rate real
);


ALTER TABLE public.material_types OWNER TO student2;

--
-- TOC entry 223 (class 1259 OID 24744)
-- Name: material_types_id_seq; Type: SEQUENCE; Schema: public; Owner: student2
--

ALTER TABLE public.material_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.material_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 24721)
-- Name: materials; Type: TABLE; Schema: public; Owner: student2
--

CREATE TABLE public.materials (
    id integer NOT NULL,
    name character varying,
    material_type_id integer,
    cost real,
    amount integer,
    min_amount integer,
    pack_amount integer,
    measure_id integer
);


ALTER TABLE public.materials OWNER TO student2;

--
-- TOC entry 217 (class 1259 OID 24720)
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: student2
--

ALTER TABLE public.materials ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 24753)
-- Name: measures; Type: TABLE; Schema: public; Owner: student2
--

CREATE TABLE public.measures (
    id integer NOT NULL,
    measure character varying
);


ALTER TABLE public.measures OWNER TO student2;

--
-- TOC entry 225 (class 1259 OID 24752)
-- Name: measures_id_seq; Type: SEQUENCE; Schema: public; Owner: student2
--

ALTER TABLE public.measures ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.measures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 24729)
-- Name: poducts; Type: TABLE; Schema: public; Owner: student2
--

CREATE TABLE public.poducts (
    article integer NOT NULL,
    product_name character varying,
    product_type_id integer,
    min_cost real,
    width real
);


ALTER TABLE public.poducts OWNER TO student2;

--
-- TOC entry 219 (class 1259 OID 24728)
-- Name: poducts_article_seq; Type: SEQUENCE; Schema: public; Owner: student2
--

ALTER TABLE public.poducts ALTER COLUMN article ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.poducts_article_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 24715)
-- Name: product_materials; Type: TABLE; Schema: public; Owner: student2
--

CREATE TABLE public.product_materials (
    id integer NOT NULL,
    product_article integer,
    material_id integer,
    material_amount real
);


ALTER TABLE public.product_materials OWNER TO student2;

--
-- TOC entry 215 (class 1259 OID 24714)
-- Name: product_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: student2
--

ALTER TABLE public.product_materials ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 24737)
-- Name: product_types; Type: TABLE; Schema: public; Owner: student2
--

CREATE TABLE public.product_types (
    id integer NOT NULL,
    type_name character varying,
    coeff real
);


ALTER TABLE public.product_types OWNER TO student2;

--
-- TOC entry 221 (class 1259 OID 24736)
-- Name: product_types_id_seq; Type: SEQUENCE; Schema: public; Owner: student2
--

ALTER TABLE public.product_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3444 (class 0 OID 24745)
-- Dependencies: 224
-- Data for Name: material_types; Type: TABLE DATA; Schema: public; Owner: student2
--

INSERT INTO public.material_types OVERRIDING SYSTEM VALUE VALUES (1, 'Бумага', 0);
INSERT INTO public.material_types OVERRIDING SYSTEM VALUE VALUES (2, 'Краска', 0);
INSERT INTO public.material_types OVERRIDING SYSTEM VALUE VALUES (3, 'Клей', 0);
INSERT INTO public.material_types OVERRIDING SYSTEM VALUE VALUES (4, 'Дисперсия', 0);


--
-- TOC entry 3438 (class 0 OID 24721)
-- Dependencies: 218
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: student2
--

INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (1, 'Бумага-основа с покрытием для флизелиновых обоев', 1, 1700, 2500, 1000, 100, 1);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (2, 'Бумага-основа для флизелиновых обоев', 1, 1500, 3000, 1000, 100, 1);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (3, 'Бумага обойная для вспененных виниловых обоев', 1, 1200, 1500, 1000, 100, 1);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (4, 'Концентрат водоразбавляемой печатной краски', 2, 1500, 550, 500, 200, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (5, 'Перламутровый пигмент', 2, 3100, 200, 100, 10, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (6, 'Сухой клей на основе ПВС', 3, 360, 700, 500, 50, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (7, 'Флизелин', 1, 1600, 2000, 1000, 140, 1);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (8, 'Стирол-акриловая дисперсия для производства обоев', 4, 14.9, 2000, 880, 220, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (9, 'Стирол-акриловая дисперсия для гидрофобных покрытий', 4, 14.9, 1200, 880, 220, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (10, 'Акрилат-винилацетатная дисперсия для производства бумаги', 4, 15.5, 1000, 660, 220, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (11, 'Цветная пластизоль', 2, 650, 200, 100, 5, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (12, 'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 3, 170, 800, 660, 220, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (13, 'Водорастворимая краска водная', 2, 500, 400, 300, 25, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (14, 'Диспергатор минеральных пигментов и наполнителей', 4, 16, 400, 360, 120, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (15, 'Ассоциативный акриловый загуститель', 4, 16.5, 400, 360, 120, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (16, 'Водорастворимая краска спецводная ', 2, 700, 350, 300, 25, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (17, 'Металлический пигмент', 2, 4100, 250, 100, 15, 2);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (18, 'Акриловая дисперсия', 4, 14.9, 1000, 880, 220, 3);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (19, 'Бумага-основа для обоев марки АФ', 1, 1200, 2000, 1000, 100, 1);
INSERT INTO public.materials OVERRIDING SYSTEM VALUE VALUES (20, 'Бумага с подложкой устойчивая к атмосферным воздействиям', 1, 3500, 2000, 800, 50, 1);


--
-- TOC entry 3446 (class 0 OID 24753)
-- Dependencies: 226
-- Data for Name: measures; Type: TABLE DATA; Schema: public; Owner: student2
--

INSERT INTO public.measures OVERRIDING SYSTEM VALUE VALUES (1, 'рул');
INSERT INTO public.measures OVERRIDING SYSTEM VALUE VALUES (2, 'кг');
INSERT INTO public.measures OVERRIDING SYSTEM VALUE VALUES (3, 'л');
INSERT INTO public.measures OVERRIDING SYSTEM VALUE VALUES (4, 'кг');


--
-- TOC entry 3440 (class 0 OID 24729)
-- Dependencies: 220
-- Data for Name: poducts; Type: TABLE DATA; Schema: public; Owner: student2
--

INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (1549922, 'Обои из природного материала Традиционный принт светло-коричневые', 1, 16950, 0.91);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (2018556, 'Фотообои флизелиновые Горы 500x270 см', 2, 15880, 0.5);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (3028272, 'Обои под покраску флизелиновые Рельеф', 3, 11080, 0.75);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (4029272, 'Стеклообои Рогожка белые', 4, 5898, 1);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (1028248, 'Обои флизелиновые Эвелин светло-серые', 1, 15200, 1.06);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (2118827, 'Фотообои флизелиновые 3D Лес и горы 300x280 см', 2, 12500.96, 0.3);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (3130981, 'Обои под покраску флизелиновые цвет белый', 3, 4320.56, 1.06);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (4029784, 'Стеклохолст', 4, 2998.99, 1);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (1658953, 'Флизелиновые обои Принт Вензель серые', 1, 16200.96, 0.68);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (2026662, 'Фотообои флизелиновые Узор 300x270 см', 2, 8780.69, 0.3);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (3159043, 'Обои под покраску флизелиновые Кирпичная стена', 3, 15750, 1.06);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (4588376, 'Стеклообои Средняя елка белые', 4, 5500, 1);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (1758375, 'Обои бумажные Полосы цвет бежевый', 1, 13500.96, 0.68);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (2759324, 'Фотообои Тропики 290x260 см', 2, 6980, 0.29);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (3118827, 'Обои под покраску Рисунок Штукатурка белые', 3, 5890, 1.06);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (4559898, 'Стеклообои Геометрические фигуры белые ', 4, 5369, 1);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (1259474, 'Обои флизелиновые Лилия бежевые', 1, 9750.79, 1.06);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (2115947, 'Фотообои флизелиновые 3D Пейзаж 300x280 см', 2, 16850, 0.3);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (3033136, 'Обои под покраску флизелиновые однотонные цвет белый ', 3, 3390, 1.06);
INSERT INTO public.poducts OVERRIDING SYSTEM VALUE VALUES (4028048, 'Стеклохолст малярный Паутинка', 4, 1750, 1);


--
-- TOC entry 3436 (class 0 OID 24715)
-- Dependencies: 216
-- Data for Name: product_materials; Type: TABLE DATA; Schema: public; Owner: student2
--

INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (1, 1028248, 10, 1.95);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (2, 4588376, 10, 0.21);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (3, 2759324, 18, 1.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (4, 2115947, 18, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (5, 2026662, 18, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (6, 1549922, 15, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (7, 4559898, 15, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (8, 3159043, 3, 2.55);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (9, 4559898, 3, 3.6);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (10, 4588376, 3, 2.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (11, 1549922, 20, 2.9);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (12, 3159043, 20, 2.55);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (13, 2118827, 20, 1.8);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (14, 2115947, 20, 2.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (15, 2018556, 20, 3.4);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (16, 1758375, 19, 3.6);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (17, 3118827, 19, 3.7);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (18, 2759324, 19, 1.6);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (19, 2026662, 19, 3.56);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (20, 1028248, 2, 4.6);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (21, 3028272, 1, 2.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (22, 1658953, 1, 3.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (23, 1028248, 16, 3.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (24, 1658953, 16, 5.25);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (25, 2115947, 16, 5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (26, 2026662, 16, 3.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (27, 1758375, 13, 4.75);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (28, 1549922, 13, 3);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (29, 3118827, 14, 1.3);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (30, 3033136, 14, 1.3);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (31, 3130981, 14, 1.8);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (32, 4029272, 14, 0.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (33, 4029784, 14, 0.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (34, 1658953, 14, 0.25);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (35, 1549922, 12, 0.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (36, 3033136, 12, 0.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (37, 1028248, 12, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (38, 4559898, 12, 0.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (39, 4028048, 12, 0.25);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (40, 2759324, 12, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (41, 2118827, 12, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (42, 2115947, 12, 0.7);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (43, 2018556, 12, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (44, 2026662, 12, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (45, 1259474, 4, 2.55);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (46, 2759324, 4, 2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (47, 2118827, 4, 2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (48, 2018556, 4, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (49, 1028248, 17, 0.45);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (50, 4029272, 17, 0.3);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (51, 1658953, 17, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (52, 1758375, 5, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (53, 1549922, 5, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (54, 4588376, 5, 0.35);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (55, 2115947, 5, 1.25);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (56, 3118827, 9, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (57, 3159043, 9, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (58, 1758375, 8, 0.15);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (59, 3033136, 8, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (60, 3028272, 8, 1.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (61, 3130981, 8, 1.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (62, 1259474, 8, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (63, 2118827, 8, 1.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (64, 2018556, 8, 0.33);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (65, 1758375, 6, 0.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (66, 3159043, 6, 2.9);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (67, 3130981, 6, 1.4);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (68, 1259474, 6, 1.7);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (69, 4029784, 6, 0.3);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (70, 1658953, 6, 1);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (71, 3033136, 7, 1.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (72, 3028272, 7, 2.5);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (73, 3130981, 7, 1.75);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (74, 1259474, 7, 1.85);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (75, 4029272, 7, 2.2);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (76, 4029784, 7, 1.3);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (77, 4028048, 7, 0.8);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (78, 3028272, 11, 1.65);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (79, 2759324, 11, 1.25);
INSERT INTO public.product_materials OVERRIDING SYSTEM VALUE VALUES (80, 2118827, 11, 1);


--
-- TOC entry 3442 (class 0 OID 24737)
-- Dependencies: 222
-- Data for Name: product_types; Type: TABLE DATA; Schema: public; Owner: student2
--

INSERT INTO public.product_types OVERRIDING SYSTEM VALUE VALUES (1, 'Декоративные обои', 5.5);
INSERT INTO public.product_types OVERRIDING SYSTEM VALUE VALUES (2, 'Фотообои', 7.54);
INSERT INTO public.product_types OVERRIDING SYSTEM VALUE VALUES (3, 'Обои под покраску', 3.25);
INSERT INTO public.product_types OVERRIDING SYSTEM VALUE VALUES (4, 'Стеклообои', 2.5);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 223
-- Name: material_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student2
--

SELECT pg_catalog.setval('public.material_types_id_seq', 1, false);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 217
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student2
--

SELECT pg_catalog.setval('public.materials_id_seq', 1, false);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 225
-- Name: measures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student2
--

SELECT pg_catalog.setval('public.measures_id_seq', 1, false);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 219
-- Name: poducts_article_seq; Type: SEQUENCE SET; Schema: public; Owner: student2
--

SELECT pg_catalog.setval('public.poducts_article_seq', 1, false);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 215
-- Name: product_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student2
--

SELECT pg_catalog.setval('public.product_materials_id_seq', 1, false);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 221
-- Name: product_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student2
--

SELECT pg_catalog.setval('public.product_types_id_seq', 1, false);


--
-- TOC entry 3279 (class 2606 OID 24751)
-- Name: material_types material_types_pkey; Type: CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.material_types
    ADD CONSTRAINT material_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 24727)
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 24759)
-- Name: measures measures_pkey; Type: CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.measures
    ADD CONSTRAINT measures_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 24735)
-- Name: poducts poducts_pkey; Type: CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.poducts
    ADD CONSTRAINT poducts_pkey PRIMARY KEY (article);


--
-- TOC entry 3271 (class 2606 OID 24719)
-- Name: product_materials product_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.product_materials
    ADD CONSTRAINT product_materials_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 24743)
-- Name: product_types product_types_pkey; Type: CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 24770)
-- Name: materials materials_material_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_material_type_id_fkey FOREIGN KEY (material_type_id) REFERENCES public.material_types(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3287 (class 2606 OID 24795)
-- Name: materials materials_material_type_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_material_type_id_fkey1 FOREIGN KEY (material_type_id) REFERENCES public.material_types(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3288 (class 2606 OID 24775)
-- Name: materials materials_measure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.measures(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3289 (class 2606 OID 24800)
-- Name: materials materials_measure_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_measure_id_fkey1 FOREIGN KEY (measure_id) REFERENCES public.measures(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3290 (class 2606 OID 24780)
-- Name: poducts poducts_product_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.poducts
    ADD CONSTRAINT poducts_product_type_id_fkey FOREIGN KEY (product_type_id) REFERENCES public.product_types(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3291 (class 2606 OID 24805)
-- Name: poducts poducts_product_type_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.poducts
    ADD CONSTRAINT poducts_product_type_id_fkey1 FOREIGN KEY (product_type_id) REFERENCES public.product_types(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3282 (class 2606 OID 24765)
-- Name: product_materials product_materials_material_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.product_materials
    ADD CONSTRAINT product_materials_material_id_fkey FOREIGN KEY (material_id) REFERENCES public.materials(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3283 (class 2606 OID 24790)
-- Name: product_materials product_materials_material_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.product_materials
    ADD CONSTRAINT product_materials_material_id_fkey1 FOREIGN KEY (material_id) REFERENCES public.materials(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3284 (class 2606 OID 24760)
-- Name: product_materials product_materials_product_article_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.product_materials
    ADD CONSTRAINT product_materials_product_article_fkey FOREIGN KEY (product_article) REFERENCES public.poducts(article) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3285 (class 2606 OID 24785)
-- Name: product_materials product_materials_product_article_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: student2
--

ALTER TABLE ONLY public.product_materials
    ADD CONSTRAINT product_materials_product_article_fkey1 FOREIGN KEY (product_article) REFERENCES public.poducts(article) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


-- Completed on 2025-06-03 15:31:13 MSK

--
-- PostgreSQL database dump complete
--


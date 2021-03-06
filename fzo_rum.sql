PGDMP     )                    z            fzo    14.3    14.3 ^    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    16655    fzo    DATABASE     `   CREATE DATABASE fzo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE fzo;
                postgres    false            ?            1259    16657    abiturients    TABLE     ?  CREATE TABLE public.abiturients (
    id_abiturient integer NOT NULL,
    speciality_a text,
    surname_a text,
    name_a text,
    midname_a text,
    data_birth_a text,
    zvanie text,
    complect text,
    place_service text,
    group_number_a text,
    phone_number text,
    individual text,
    note_a text,
    document text,
    number_registration text,
    seria text,
    number text,
    who_take text,
    year_take text,
    specialist text
);
    DROP TABLE public.abiturients;
       public         heap    postgres    false            ?            1259    16656    abiturients_id_abiturient_seq    SEQUENCE     ?   CREATE SEQUENCE public.abiturients_id_abiturient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.abiturients_id_abiturient_seq;
       public          postgres    false    210            \           0    0    abiturients_id_abiturient_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.abiturients_id_abiturient_seq OWNED BY public.abiturients.id_abiturient;
          public          postgres    false    209            ?            1259    16748    arhiv    TABLE     "  CREATE TABLE public.arhiv (
    id_arhiv integer NOT NULL,
    speciality_arhiv text,
    surname_arhiv text,
    name_arhiv text,
    midname_arhiv text,
    data_birth_arhiv text,
    zvanie_arhiv text,
    complect_arhiv text,
    place_service_arhiv text,
    group_number_arhiv text,
    phone_number text,
    individual_arhiv text,
    note_arhiv text,
    document_arhiv text,
    number_registration_arhiv text,
    seria_arhiv text,
    number_arhiv text,
    who_take_arhiv text,
    year_take_arhiv text,
    specialist_arhiv text
);
    DROP TABLE public.arhiv;
       public         heap    postgres    false            ?            1259    16747    arhiv_id_arhiv_seq    SEQUENCE     ?   CREATE SEQUENCE public.arhiv_id_arhiv_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.arhiv_id_arhiv_seq;
       public          postgres    false    228            ]           0    0    arhiv_id_arhiv_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.arhiv_id_arhiv_seq OWNED BY public.arhiv.id_arhiv;
          public          postgres    false    227            ?            1259    16717    disciplines    TABLE     x   CREATE TABLE public.disciplines (
    id_discipline integer NOT NULL,
    name text,
    id_kafedra integer NOT NULL
);
    DROP TABLE public.disciplines;
       public         heap    postgres    false            ?            1259    16715    disciplines_id_discipline_seq    SEQUENCE     ?   CREATE SEQUENCE public.disciplines_id_discipline_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.disciplines_id_discipline_seq;
       public          postgres    false    223            ^           0    0    disciplines_id_discipline_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.disciplines_id_discipline_seq OWNED BY public.disciplines.id_discipline;
          public          postgres    false    221            ?            1259    16716    disciplines_id_kafedra_seq    SEQUENCE     ?   CREATE SEQUENCE public.disciplines_id_kafedra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.disciplines_id_kafedra_seq;
       public          postgres    false    223            _           0    0    disciplines_id_kafedra_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.disciplines_id_kafedra_seq OWNED BY public.disciplines.id_kafedra;
          public          postgres    false    222            ?            1259    16667    exams    TABLE     ?   CREATE TABLE public.exams (
    id_exam integer NOT NULL,
    russian text,
    social text,
    history text,
    md text,
    individual_d text,
    summa text,
    id_abiturient_exam integer NOT NULL
);
    DROP TABLE public.exams;
       public         heap    postgres    false            ?            1259    16666    exams_id_abiturient_exam_seq    SEQUENCE     ?   CREATE SEQUENCE public.exams_id_abiturient_exam_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.exams_id_abiturient_exam_seq;
       public          postgres    false    213            `           0    0    exams_id_abiturient_exam_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.exams_id_abiturient_exam_seq OWNED BY public.exams.id_abiturient_exam;
          public          postgres    false    212            ?            1259    16665    exams_id_exam_seq    SEQUENCE     ?   CREATE SEQUENCE public.exams_id_exam_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.exams_id_exam_seq;
       public          postgres    false    213            a           0    0    exams_id_exam_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.exams_id_exam_seq OWNED BY public.exams.id_exam;
          public          postgres    false    211            ?            1259    16707    kafedres    TABLE     Q   CREATE TABLE public.kafedres (
    id_kafedra integer NOT NULL,
    name text
);
    DROP TABLE public.kafedres;
       public         heap    postgres    false            ?            1259    16706    kafedres_id_kafedra_seq    SEQUENCE     ?   CREATE SEQUENCE public.kafedres_id_kafedra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.kafedres_id_kafedra_seq;
       public          postgres    false    220            b           0    0    kafedres_id_kafedra_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.kafedres_id_kafedra_seq OWNED BY public.kafedres.id_kafedra;
          public          postgres    false    219            ?            1259    16766    kvota    TABLE     v   CREATE TABLE public.kvota (
    id_kvota integer NOT NULL,
    speciality text,
    kvota_o text,
    kvota_s text
);
    DROP TABLE public.kvota;
       public         heap    postgres    false            ?            1259    16765    kvota_id_kvota_seq    SEQUENCE     ?   CREATE SEQUENCE public.kvota_id_kvota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.kvota_id_kvota_seq;
       public          postgres    false    232            c           0    0    kvota_id_kvota_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kvota_id_kvota_seq OWNED BY public.kvota.id_kvota;
          public          postgres    false    231            ?            1259    16682    kyrses    TABLE     ?   CREATE TABLE public.kyrses (
    id_kyrs integer NOT NULL,
    year_nabor text,
    speciality text,
    srok_obuchenia text
);
    DROP TABLE public.kyrses;
       public         heap    postgres    false            ?            1259    16681    kyrses_id_kyrs_seq    SEQUENCE     ?   CREATE SEQUENCE public.kyrses_id_kyrs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.kyrses_id_kyrs_seq;
       public          postgres    false    215            d           0    0    kyrses_id_kyrs_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kyrses_id_kyrs_seq OWNED BY public.kyrses.id_kyrs;
          public          postgres    false    214            ?            1259    16757    plan_coplect    TABLE     ?   CREATE TABLE public.plan_coplect (
    id_plan integer NOT NULL,
    complect text,
    pd text,
    ad text,
    ord text,
    ur text,
    ponb text,
    ppdp text
);
     DROP TABLE public.plan_coplect;
       public         heap    postgres    false            ?            1259    16756    plan_coplect_id_plan_seq    SEQUENCE     ?   CREATE SEQUENCE public.plan_coplect_id_plan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.plan_coplect_id_plan_seq;
       public          postgres    false    230            e           0    0    plan_coplect_id_plan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.plan_coplect_id_plan_seq OWNED BY public.plan_coplect.id_plan;
          public          postgres    false    229            ?            1259    16692 
   slyshatels    TABLE     x  CREATE TABLE public.slyshatels (
    id_slyshatel integer NOT NULL,
    speciality_s text,
    number_specialty text,
    surname_s text,
    name_s text,
    midname_s text,
    date_birth_s text,
    surname_s_dp text,
    name_s_dp text,
    midname_s_dp text,
    surname_s_rp text,
    name_s_rp text,
    midname_s_rp text,
    old_surname text,
    phone_number text,
    year_nabor text,
    year_postuplenia text,
    number_specialization text,
    specialization_s text,
    kod_specialization text,
    kyrs text,
    kod_kyrsa text,
    number_group_s text,
    number_group_gia text,
    number_group_preznie text,
    lichnie_number text,
    zachet_book_number text,
    note_s text,
    document_s text,
    number_registration_s text,
    seria_s text,
    number_s text,
    who_take_s text,
    year_take_s text,
    specialist_s text,
    id_kyrs integer NOT NULL
);
    DROP TABLE public.slyshatels;
       public         heap    postgres    false            ?            1259    16691    slyshatels_id_kyrs_seq    SEQUENCE     ?   CREATE SEQUENCE public.slyshatels_id_kyrs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.slyshatels_id_kyrs_seq;
       public          postgres    false    218            f           0    0    slyshatels_id_kyrs_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.slyshatels_id_kyrs_seq OWNED BY public.slyshatels.id_kyrs;
          public          postgres    false    217            ?            1259    16690    slyshatels_id_slyshatel_seq    SEQUENCE     ?   CREATE SEQUENCE public.slyshatels_id_slyshatel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.slyshatels_id_slyshatel_seq;
       public          postgres    false    218            g           0    0    slyshatels_id_slyshatel_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.slyshatels_id_slyshatel_seq OWNED BY public.slyshatels.id_slyshatel;
          public          postgres    false    216            ?            1259    16733    teachers    TABLE     q   CREATE TABLE public.teachers (
    id_teacher integer NOT NULL,
    fio text,
    id_kafedra integer NOT NULL
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            ?            1259    16732    teachers_id_kafedra_seq    SEQUENCE     ?   CREATE SEQUENCE public.teachers_id_kafedra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_id_kafedra_seq;
       public          postgres    false    226            h           0    0    teachers_id_kafedra_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_id_kafedra_seq OWNED BY public.teachers.id_kafedra;
          public          postgres    false    225            ?            1259    16731    teachers_id_teacher_seq    SEQUENCE     ?   CREATE SEQUENCE public.teachers_id_teacher_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_id_teacher_seq;
       public          postgres    false    226            i           0    0    teachers_id_teacher_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_id_teacher_seq OWNED BY public.teachers.id_teacher;
          public          postgres    false    224            ?           2604    16660    abiturients id_abiturient    DEFAULT     ?   ALTER TABLE ONLY public.abiturients ALTER COLUMN id_abiturient SET DEFAULT nextval('public.abiturients_id_abiturient_seq'::regclass);
 H   ALTER TABLE public.abiturients ALTER COLUMN id_abiturient DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    16751    arhiv id_arhiv    DEFAULT     p   ALTER TABLE ONLY public.arhiv ALTER COLUMN id_arhiv SET DEFAULT nextval('public.arhiv_id_arhiv_seq'::regclass);
 =   ALTER TABLE public.arhiv ALTER COLUMN id_arhiv DROP DEFAULT;
       public          postgres    false    227    228    228            ?           2604    16720    disciplines id_discipline    DEFAULT     ?   ALTER TABLE ONLY public.disciplines ALTER COLUMN id_discipline SET DEFAULT nextval('public.disciplines_id_discipline_seq'::regclass);
 H   ALTER TABLE public.disciplines ALTER COLUMN id_discipline DROP DEFAULT;
       public          postgres    false    221    223    223            ?           2604    16721    disciplines id_kafedra    DEFAULT     ?   ALTER TABLE ONLY public.disciplines ALTER COLUMN id_kafedra SET DEFAULT nextval('public.disciplines_id_kafedra_seq'::regclass);
 E   ALTER TABLE public.disciplines ALTER COLUMN id_kafedra DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    16670    exams id_exam    DEFAULT     n   ALTER TABLE ONLY public.exams ALTER COLUMN id_exam SET DEFAULT nextval('public.exams_id_exam_seq'::regclass);
 <   ALTER TABLE public.exams ALTER COLUMN id_exam DROP DEFAULT;
       public          postgres    false    213    211    213            ?           2604    16671    exams id_abiturient_exam    DEFAULT     ?   ALTER TABLE ONLY public.exams ALTER COLUMN id_abiturient_exam SET DEFAULT nextval('public.exams_id_abiturient_exam_seq'::regclass);
 G   ALTER TABLE public.exams ALTER COLUMN id_abiturient_exam DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    16710    kafedres id_kafedra    DEFAULT     z   ALTER TABLE ONLY public.kafedres ALTER COLUMN id_kafedra SET DEFAULT nextval('public.kafedres_id_kafedra_seq'::regclass);
 B   ALTER TABLE public.kafedres ALTER COLUMN id_kafedra DROP DEFAULT;
       public          postgres    false    219    220    220            ?           2604    16769    kvota id_kvota    DEFAULT     p   ALTER TABLE ONLY public.kvota ALTER COLUMN id_kvota SET DEFAULT nextval('public.kvota_id_kvota_seq'::regclass);
 =   ALTER TABLE public.kvota ALTER COLUMN id_kvota DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    16685    kyrses id_kyrs    DEFAULT     p   ALTER TABLE ONLY public.kyrses ALTER COLUMN id_kyrs SET DEFAULT nextval('public.kyrses_id_kyrs_seq'::regclass);
 =   ALTER TABLE public.kyrses ALTER COLUMN id_kyrs DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    16760    plan_coplect id_plan    DEFAULT     |   ALTER TABLE ONLY public.plan_coplect ALTER COLUMN id_plan SET DEFAULT nextval('public.plan_coplect_id_plan_seq'::regclass);
 C   ALTER TABLE public.plan_coplect ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    16695    slyshatels id_slyshatel    DEFAULT     ?   ALTER TABLE ONLY public.slyshatels ALTER COLUMN id_slyshatel SET DEFAULT nextval('public.slyshatels_id_slyshatel_seq'::regclass);
 F   ALTER TABLE public.slyshatels ALTER COLUMN id_slyshatel DROP DEFAULT;
       public          postgres    false    218    216    218            ?           2604    16696    slyshatels id_kyrs    DEFAULT     x   ALTER TABLE ONLY public.slyshatels ALTER COLUMN id_kyrs SET DEFAULT nextval('public.slyshatels_id_kyrs_seq'::regclass);
 A   ALTER TABLE public.slyshatels ALTER COLUMN id_kyrs DROP DEFAULT;
       public          postgres    false    218    217    218            ?           2604    16736    teachers id_teacher    DEFAULT     z   ALTER TABLE ONLY public.teachers ALTER COLUMN id_teacher SET DEFAULT nextval('public.teachers_id_teacher_seq'::regclass);
 B   ALTER TABLE public.teachers ALTER COLUMN id_teacher DROP DEFAULT;
       public          postgres    false    226    224    226            ?           2604    16737    teachers id_kafedra    DEFAULT     z   ALTER TABLE ONLY public.teachers ALTER COLUMN id_kafedra SET DEFAULT nextval('public.teachers_id_kafedra_seq'::regclass);
 B   ALTER TABLE public.teachers ALTER COLUMN id_kafedra DROP DEFAULT;
       public          postgres    false    226    225    226            ?          0    16657    abiturients 
   TABLE DATA             COPY public.abiturients (id_abiturient, speciality_a, surname_a, name_a, midname_a, data_birth_a, zvanie, complect, place_service, group_number_a, phone_number, individual, note_a, document, number_registration, seria, number, who_take, year_take, specialist) FROM stdin;
    public          postgres    false    210   s       Q          0    16748    arhiv 
   TABLE DATA           c  COPY public.arhiv (id_arhiv, speciality_arhiv, surname_arhiv, name_arhiv, midname_arhiv, data_birth_arhiv, zvanie_arhiv, complect_arhiv, place_service_arhiv, group_number_arhiv, phone_number, individual_arhiv, note_arhiv, document_arhiv, number_registration_arhiv, seria_arhiv, number_arhiv, who_take_arhiv, year_take_arhiv, specialist_arhiv) FROM stdin;
    public          postgres    false    228   Iv       L          0    16717    disciplines 
   TABLE DATA           F   COPY public.disciplines (id_discipline, name, id_kafedra) FROM stdin;
    public          postgres    false    223   fv       B          0    16667    exams 
   TABLE DATA           o   COPY public.exams (id_exam, russian, social, history, md, individual_d, summa, id_abiturient_exam) FROM stdin;
    public          postgres    false    213   ?v       I          0    16707    kafedres 
   TABLE DATA           4   COPY public.kafedres (id_kafedra, name) FROM stdin;
    public          postgres    false    220   w       U          0    16766    kvota 
   TABLE DATA           G   COPY public.kvota (id_kvota, speciality, kvota_o, kvota_s) FROM stdin;
    public          postgres    false    232   )w       D          0    16682    kyrses 
   TABLE DATA           Q   COPY public.kyrses (id_kyrs, year_nabor, speciality, srok_obuchenia) FROM stdin;
    public          postgres    false    215   Fw       S          0    16757    plan_coplect 
   TABLE DATA           V   COPY public.plan_coplect (id_plan, complect, pd, ad, ord, ur, ponb, ppdp) FROM stdin;
    public          postgres    false    230   ?w       G          0    16692 
   slyshatels 
   TABLE DATA             COPY public.slyshatels (id_slyshatel, speciality_s, number_specialty, surname_s, name_s, midname_s, date_birth_s, surname_s_dp, name_s_dp, midname_s_dp, surname_s_rp, name_s_rp, midname_s_rp, old_surname, phone_number, year_nabor, year_postuplenia, number_specialization, specialization_s, kod_specialization, kyrs, kod_kyrsa, number_group_s, number_group_gia, number_group_preznie, lichnie_number, zachet_book_number, note_s, document_s, number_registration_s, seria_s, number_s, who_take_s, year_take_s, specialist_s, id_kyrs) FROM stdin;
    public          postgres    false    218   ?w       O          0    16733    teachers 
   TABLE DATA           ?   COPY public.teachers (id_teacher, fio, id_kafedra) FROM stdin;
    public          postgres    false    226   ?w       j           0    0    abiturients_id_abiturient_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.abiturients_id_abiturient_seq', 20, true);
          public          postgres    false    209            k           0    0    arhiv_id_arhiv_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.arhiv_id_arhiv_seq', 1, false);
          public          postgres    false    227            l           0    0    disciplines_id_discipline_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.disciplines_id_discipline_seq', 1, false);
          public          postgres    false    221            m           0    0    disciplines_id_kafedra_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.disciplines_id_kafedra_seq', 1, false);
          public          postgres    false    222            n           0    0    exams_id_abiturient_exam_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.exams_id_abiturient_exam_seq', 20, true);
          public          postgres    false    212            o           0    0    exams_id_exam_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.exams_id_exam_seq', 20, true);
          public          postgres    false    211            p           0    0    kafedres_id_kafedra_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kafedres_id_kafedra_seq', 1, false);
          public          postgres    false    219            q           0    0    kvota_id_kvota_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.kvota_id_kvota_seq', 1, false);
          public          postgres    false    231            r           0    0    kyrses_id_kyrs_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kyrses_id_kyrs_seq', 1, true);
          public          postgres    false    214            s           0    0    plan_coplect_id_plan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.plan_coplect_id_plan_seq', 1, false);
          public          postgres    false    229            t           0    0    slyshatels_id_kyrs_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.slyshatels_id_kyrs_seq', 1, false);
          public          postgres    false    217            u           0    0    slyshatels_id_slyshatel_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.slyshatels_id_slyshatel_seq', 1, false);
          public          postgres    false    216            v           0    0    teachers_id_kafedra_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.teachers_id_kafedra_seq', 1, false);
          public          postgres    false    225            w           0    0    teachers_id_teacher_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.teachers_id_teacher_seq', 1, false);
          public          postgres    false    224            ?           2606    16664    abiturients abiturients_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.abiturients
    ADD CONSTRAINT abiturients_pkey PRIMARY KEY (id_abiturient);
 F   ALTER TABLE ONLY public.abiturients DROP CONSTRAINT abiturients_pkey;
       public            postgres    false    210            ?           2606    16755    arhiv arhiv_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.arhiv
    ADD CONSTRAINT arhiv_pkey PRIMARY KEY (id_arhiv);
 :   ALTER TABLE ONLY public.arhiv DROP CONSTRAINT arhiv_pkey;
       public            postgres    false    228            ?           2606    16725    disciplines disciplines_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (id_discipline);
 F   ALTER TABLE ONLY public.disciplines DROP CONSTRAINT disciplines_pkey;
       public            postgres    false    223            ?           2606    16675    exams exams_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_pkey PRIMARY KEY (id_exam);
 :   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_pkey;
       public            postgres    false    213            ?           2606    16714    kafedres kafedres_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.kafedres
    ADD CONSTRAINT kafedres_pkey PRIMARY KEY (id_kafedra);
 @   ALTER TABLE ONLY public.kafedres DROP CONSTRAINT kafedres_pkey;
       public            postgres    false    220            ?           2606    16773    kvota kvota_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kvota
    ADD CONSTRAINT kvota_pkey PRIMARY KEY (id_kvota);
 :   ALTER TABLE ONLY public.kvota DROP CONSTRAINT kvota_pkey;
       public            postgres    false    232            ?           2606    16689    kyrses kyrses_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.kyrses
    ADD CONSTRAINT kyrses_pkey PRIMARY KEY (id_kyrs);
 <   ALTER TABLE ONLY public.kyrses DROP CONSTRAINT kyrses_pkey;
       public            postgres    false    215            ?           2606    16764    plan_coplect plan_coplect_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.plan_coplect
    ADD CONSTRAINT plan_coplect_pkey PRIMARY KEY (id_plan);
 H   ALTER TABLE ONLY public.plan_coplect DROP CONSTRAINT plan_coplect_pkey;
       public            postgres    false    230            ?           2606    16700    slyshatels slyshatels_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.slyshatels
    ADD CONSTRAINT slyshatels_pkey PRIMARY KEY (id_slyshatel);
 D   ALTER TABLE ONLY public.slyshatels DROP CONSTRAINT slyshatels_pkey;
       public            postgres    false    218            ?           2606    16741    teachers teachers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id_teacher);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
       public            postgres    false    226            ?           2606    16726 '   disciplines disciplines_id_kafedra_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_id_kafedra_fkey FOREIGN KEY (id_kafedra) REFERENCES public.kafedres(id_kafedra);
 Q   ALTER TABLE ONLY public.disciplines DROP CONSTRAINT disciplines_id_kafedra_fkey;
       public          postgres    false    223    3236    220            ?           2606    16676 #   exams exams_id_abiturient_exam_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_id_abiturient_exam_fkey FOREIGN KEY (id_abiturient_exam) REFERENCES public.abiturients(id_abiturient);
 M   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_id_abiturient_exam_fkey;
       public          postgres    false    213    3228    210            ?           2606    16701 "   slyshatels slyshatels_id_kyrs_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.slyshatels
    ADD CONSTRAINT slyshatels_id_kyrs_fkey FOREIGN KEY (id_kyrs) REFERENCES public.kyrses(id_kyrs);
 L   ALTER TABLE ONLY public.slyshatels DROP CONSTRAINT slyshatels_id_kyrs_fkey;
       public          postgres    false    215    3232    218            ?           2606    16742 !   teachers teachers_id_kafedra_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_id_kafedra_fkey FOREIGN KEY (id_kafedra) REFERENCES public.kafedres(id_kafedra);
 K   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_id_kafedra_fkey;
       public          postgres    false    3236    220    226            ?   $  x????r?0???S貝N=>? }?>L??梙!isы4i??B??p0??z???v ???Gi?+i?ϲ%O?=M(2_)???)1M?2??:????;s
k??????bӢ(?蘶?´?*?0?~=?慙Z?:W????5ꡢ,?-4?&4D?+?A4??w???[?i?A?izt؈ZD?RT???>????a??
ߩi????a?3????bX#?hz?u -?$N??}?]?6D'S?F?&??h?t@#???:??????Q?T?U?7????MhᴕUk???u?&]+?.ع??/a??\q!?E??gv?+f?U?hzb?^?1b??????g=??7j(Az????8E?s֣G?/?f?b"?-X??	??8??HP̺?4q??1NX?Fh\(H??l8?L???K??n???cpD?Y>?W?[x?O?????42?GA?o?I?-C??P????i`?????,fh? ????o??`?:????nIד??Vs]?؃K>1_??5???3I?X??Xz?!IE?J?????[?Vx???????zIuJ?i?Ԗ???????w(??yG??,?Le????VI??;;????x??\??M???8???C?w?ے?RX?WP??{cd?:R????n{kf?:R??%??ZV????'?+Y?DUD?RV???e?????:M???癀?F? ???*?w)??ܪ?Yv?ؗ?,?S ???8??c?M?OX$ʄ??!o?6v?`?\?d?C?SY?Ȼć	?r?????g?r??????R*Z???v?v\|v*???y޷D      Q      x?????? ? ?      L      x?????? ? ?      B   y   x?m??1?3.f?I???_?N?ў,?}'??oU?y[?????ߙnn??????n???zPBm???Ŵ5F??.?R9?P?R??}??+,:?L?	?,???G? \x8? ???C#      I      x?????? ? ?      U      x?????? ? ?      D   i   x?M?A
? D?z
O f?ÔP+?#D7?Rº???	?,?y???5?
?x?iEA?E7??ȫ?hc9
ML?̖?Wr?͈߄??n??NV????]?H?      S      x?????? ? ?      G      x?????? ? ?      O      x?????? ? ?     
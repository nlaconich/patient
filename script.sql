PGDMP     '                     z         
   db_patient    14.4    14.4 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394 
   db_patient    DATABASE     g   CREATE DATABASE db_patient WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE db_patient;
                postgres    false            ?            1259    16434    contact    TABLE     ?   CREATE TABLE public.contact (
    id_contact integer NOT NULL,
    type character varying,
    value character varying,
    id_personal_data integer
);
    DROP TABLE public.contact;
       public         heap    postgres    false            ?            1259    16433    contact_id_contact_seq    SEQUENCE        CREATE SEQUENCE public.contact_id_contact_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_id_contact_seq;
       public          postgres    false    216                       0    0    contact_id_contact_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_id_contact_seq OWNED BY public.contact.id_contact;
          public          postgres    false    215            ?            1259    16422    patient    TABLE     ?   CREATE TABLE public.patient (
    id_patient integer NOT NULL,
    entry_date date,
    status character varying(1),
    id_personal_data integer
);
    DROP TABLE public.patient;
       public         heap    postgres    false            ?            1259    16421    patient_id_patient_seq    SEQUENCE        CREATE SEQUENCE public.patient_id_patient_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.patient_id_patient_seq;
       public          postgres    false    214                       0    0    patient_id_patient_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.patient_id_patient_seq OWNED BY public.patient.id_patient;
          public          postgres    false    213            ?            1259    16399    personal_data    TABLE     ?   CREATE TABLE public.personal_data (
    id_personal_data integer NOT NULL,
    name character varying,
    lastname character varying,
    document_number character varying,
    birth_date date,
    weight integer
);
 !   DROP TABLE public.personal_data;
       public         heap    postgres    false            ?            1259    16398 "   personal_data_id_personal_data_seq    SEQUENCE     ?   CREATE SEQUENCE public.personal_data_id_personal_data_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.personal_data_id_personal_data_seq;
       public          postgres    false    210                       0    0 "   personal_data_id_personal_data_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.personal_data_id_personal_data_seq OWNED BY public.personal_data.id_personal_data;
          public          postgres    false    209            ?            1259    16408    user    TABLE     ?   CREATE TABLE public."user" (
    id_user integer NOT NULL,
    username character varying,
    password character varying,
    status character varying,
    id_personal_data integer
);
    DROP TABLE public."user";
       public         heap    postgres    false            ?            1259    16407    user_id_user_seq    SEQUENCE     y   CREATE SEQUENCE public.user_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_id_user_seq;
       public          postgres    false    212                       0    0    user_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_id_user_seq OWNED BY public."user".id_user;
          public          postgres    false    211            n           2604    16437    contact id_contact    DEFAULT     x   ALTER TABLE ONLY public.contact ALTER COLUMN id_contact SET DEFAULT nextval('public.contact_id_contact_seq'::regclass);
 A   ALTER TABLE public.contact ALTER COLUMN id_contact DROP DEFAULT;
       public          postgres    false    216    215    216            m           2604    16425    patient id_patient    DEFAULT     x   ALTER TABLE ONLY public.patient ALTER COLUMN id_patient SET DEFAULT nextval('public.patient_id_patient_seq'::regclass);
 A   ALTER TABLE public.patient ALTER COLUMN id_patient DROP DEFAULT;
       public          postgres    false    214    213    214            k           2604    16402    personal_data id_personal_data    DEFAULT     ?   ALTER TABLE ONLY public.personal_data ALTER COLUMN id_personal_data SET DEFAULT nextval('public.personal_data_id_personal_data_seq'::regclass);
 M   ALTER TABLE public.personal_data ALTER COLUMN id_personal_data DROP DEFAULT;
       public          postgres    false    209    210    210            l           2604    16411    user id_user    DEFAULT     n   ALTER TABLE ONLY public."user" ALTER COLUMN id_user SET DEFAULT nextval('public.user_id_user_seq'::regclass);
 =   ALTER TABLE public."user" ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    212    211    212                      0    16434    contact 
   TABLE DATA           L   COPY public.contact (id_contact, type, value, id_personal_data) FROM stdin;
    public          postgres    false    216   y(       
          0    16422    patient 
   TABLE DATA           S   COPY public.patient (id_patient, entry_date, status, id_personal_data) FROM stdin;
    public          postgres    false    214   ?(                 0    16399    personal_data 
   TABLE DATA           n   COPY public.personal_data (id_personal_data, name, lastname, document_number, birth_date, weight) FROM stdin;
    public          postgres    false    210   ?(                 0    16408    user 
   TABLE DATA           W   COPY public."user" (id_user, username, password, status, id_personal_data) FROM stdin;
    public          postgres    false    212   ?(                  0    0    contact_id_contact_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contact_id_contact_seq', 1, false);
          public          postgres    false    215                       0    0    patient_id_patient_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.patient_id_patient_seq', 1, false);
          public          postgres    false    213                       0    0 "   personal_data_id_personal_data_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.personal_data_id_personal_data_seq', 1, false);
          public          postgres    false    209                       0    0    user_id_user_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_id_user_seq', 1, false);
          public          postgres    false    211            v           2606    16441    contact contact_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id_contact);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public            postgres    false    216            t           2606    16427    patient patient_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id_patient);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            postgres    false    214            p           2606    16406     personal_data personal_data_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_pkey PRIMARY KEY (id_personal_data);
 J   ALTER TABLE ONLY public.personal_data DROP CONSTRAINT personal_data_pkey;
       public            postgres    false    210            r           2606    16415    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    212            y           2606    16442 0   contact id_personal_data(personal_data->contact)    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT "id_personal_data(personal_data->contact)" FOREIGN KEY (id_personal_data) REFERENCES public.personal_data(id_personal_data);
 \   ALTER TABLE ONLY public.contact DROP CONSTRAINT "id_personal_data(personal_data->contact)";
       public          postgres    false    3184    210    216            x           2606    16428 0   patient id_personal_data(personal_data->patient)    FK CONSTRAINT     ?   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "id_personal_data(personal_data->patient)" FOREIGN KEY (id_personal_data) REFERENCES public.personal_data(id_personal_data);
 \   ALTER TABLE ONLY public.patient DROP CONSTRAINT "id_personal_data(personal_data->patient)";
       public          postgres    false    214    3184    210            w           2606    16416 *   user id_personal_data(personal_data->user)    FK CONSTRAINT     ?   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "id_personal_data(personal_data->user)" FOREIGN KEY (id_personal_data) REFERENCES public.personal_data(id_personal_data);
 X   ALTER TABLE ONLY public."user" DROP CONSTRAINT "id_personal_data(personal_data->user)";
       public          postgres    false    210    212    3184                  x?????? ? ?      
      x?????? ? ?            x?????? ? ?            x?????? ? ?     
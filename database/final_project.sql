PGDMP     9                	    {            final_project    15.4    15.4     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16509    final_project    DATABASE     �   CREATE DATABASE final_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE final_project;
                postgres    false            �            1259    16689    reflections    TABLE       CREATE TABLE public.reflections (
    id integer NOT NULL,
    success character varying(255),
    low_point character varying(255),
    take_away text,
    userid integer,
    createdat timestamp with time zone DEFAULT now(),
    updatedat timestamp with time zone DEFAULT now()
);
    DROP TABLE public.reflections;
       public         heap    postgres    false            �            1259    16688    reflections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reflections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reflections_id_seq;
       public          postgres    false    217                       0    0    reflections_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.reflections_id_seq OWNED BY public.reflections.id;
          public          postgres    false    216            �            1259    16550    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16549    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            k           2604    16692    reflections id    DEFAULT     p   ALTER TABLE ONLY public.reflections ALTER COLUMN id SET DEFAULT nextval('public.reflections_id_seq'::regclass);
 =   ALTER TABLE public.reflections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            j           2604    16553    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16689    reflections 
   TABLE DATA           f   COPY public.reflections (id, success, low_point, take_away, userid, createdat, updatedat) FROM stdin;
    public          postgres    false    217   j                 0    16550    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    215   �                  0    0    reflections_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reflections_id_seq', 1, false);
          public          postgres    false    216                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 46, true);
          public          postgres    false    214            s           2606    16698    reflections reflections_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reflections
    ADD CONSTRAINT reflections_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.reflections DROP CONSTRAINT reflections_pkey;
       public            postgres    false    217            o           2606    16559    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            q           2606    16557    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            t           2606    16699 #   reflections reflections_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reflections
    ADD CONSTRAINT reflections_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.reflections DROP CONSTRAINT reflections_userid_fkey;
       public          postgres    false    3185    217    215                  x������ � �         �   x�e�;�0  Й�����ghĂ!���`E§	���;:��lǐ���(��� ��j0L,Lkg�4d4&k��^)����n�et�y�'3�6Z?���ZV$����K���̕n��=�-#��E���@E�(���y���U��8���! �a>7,     
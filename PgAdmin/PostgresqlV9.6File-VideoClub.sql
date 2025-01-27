PGDMP     	    	                {         	   VideoClub    9.6.24    9.6.24 $    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            x           1262    16393 	   VideoClub    DATABASE     �   CREATE DATABASE "VideoClub" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Venezuela.1252' LC_CTYPE = 'Spanish_Venezuela.1252';
    DROP DATABASE "VideoClub";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            y           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            z           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16608    lista_de_espera    TABLE     �   CREATE TABLE public.lista_de_espera (
    id_lista_de_espera integer NOT NULL,
    id_socio integer,
    nombre character varying(255) NOT NULL,
    titulo_pelicula character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL
);
 #   DROP TABLE public.lista_de_espera;
       public         postgres    false    3            �            1259    16606 &   lista_de_espera_id_lista_de_espera_seq    SEQUENCE     �   CREATE SEQUENCE public.lista_de_espera_id_lista_de_espera_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.lista_de_espera_id_lista_de_espera_seq;
       public       postgres    false    191    3            {           0    0 &   lista_de_espera_id_lista_de_espera_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.lista_de_espera_id_lista_de_espera_seq OWNED BY public.lista_de_espera.id_lista_de_espera;
            public       postgres    false    190            �            1259    16502 	   peliculas    TABLE     �   CREATE TABLE public.peliculas (
    id_cinta integer NOT NULL,
    titulo_pelicula character varying(255) NOT NULL,
    genero character varying(255),
    director character varying(255),
    actores character varying(255)
);
    DROP TABLE public.peliculas;
       public         postgres    false    3            �            1259    16590    peliculas_devueltas    TABLE     �   CREATE TABLE public.peliculas_devueltas (
    id_peliculas_devueltas integer NOT NULL,
    id_socio integer,
    id_cinta integer,
    fecha date NOT NULL
);
 '   DROP TABLE public.peliculas_devueltas;
       public         postgres    false    3            �            1259    16588 .   peliculas_devueltas_id_peliculas_devueltas_seq    SEQUENCE     �   CREATE SEQUENCE public.peliculas_devueltas_id_peliculas_devueltas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.peliculas_devueltas_id_peliculas_devueltas_seq;
       public       postgres    false    3    189            |           0    0 .   peliculas_devueltas_id_peliculas_devueltas_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.peliculas_devueltas_id_peliculas_devueltas_seq OWNED BY public.peliculas_devueltas.id_peliculas_devueltas;
            public       postgres    false    188            �            1259    16573    peliculas_prestadas    TABLE     �   CREATE TABLE public.peliculas_prestadas (
    id_peliculas_prestadas integer NOT NULL,
    id_cinta integer,
    id_socio integer,
    fecha date NOT NULL
);
 '   DROP TABLE public.peliculas_prestadas;
       public         postgres    false    3            �            1259    16510    socios    TABLE     T  CREATE TABLE public.socios (
    id_socio integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    directores_favoritos character varying(255),
    actores_favoritos character varying(255),
    generos_favoritos character varying(255)
);
    DROP TABLE public.socios;
       public         postgres    false    3            �           2604    16611 "   lista_de_espera id_lista_de_espera    DEFAULT     �   ALTER TABLE ONLY public.lista_de_espera ALTER COLUMN id_lista_de_espera SET DEFAULT nextval('public.lista_de_espera_id_lista_de_espera_seq'::regclass);
 Q   ALTER TABLE public.lista_de_espera ALTER COLUMN id_lista_de_espera DROP DEFAULT;
       public       postgres    false    190    191    191            �           2604    16593 *   peliculas_devueltas id_peliculas_devueltas    DEFAULT     �   ALTER TABLE ONLY public.peliculas_devueltas ALTER COLUMN id_peliculas_devueltas SET DEFAULT nextval('public.peliculas_devueltas_id_peliculas_devueltas_seq'::regclass);
 Y   ALTER TABLE public.peliculas_devueltas ALTER COLUMN id_peliculas_devueltas DROP DEFAULT;
       public       postgres    false    188    189    189            r          0    16608    lista_de_espera 
   TABLE DATA               j   COPY public.lista_de_espera (id_lista_de_espera, id_socio, nombre, titulo_pelicula, telefono) FROM stdin;
    public       postgres    false    191   -       }           0    0 &   lista_de_espera_id_lista_de_espera_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.lista_de_espera_id_lista_de_espera_seq', 1, false);
            public       postgres    false    190            l          0    16502 	   peliculas 
   TABLE DATA               Y   COPY public.peliculas (id_cinta, titulo_pelicula, genero, director, actores) FROM stdin;
    public       postgres    false    185   -       p          0    16590    peliculas_devueltas 
   TABLE DATA               `   COPY public.peliculas_devueltas (id_peliculas_devueltas, id_socio, id_cinta, fecha) FROM stdin;
    public       postgres    false    189   <-       ~           0    0 .   peliculas_devueltas_id_peliculas_devueltas_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.peliculas_devueltas_id_peliculas_devueltas_seq', 1, false);
            public       postgres    false    188            n          0    16573    peliculas_prestadas 
   TABLE DATA               `   COPY public.peliculas_prestadas (id_peliculas_prestadas, id_cinta, id_socio, fecha) FROM stdin;
    public       postgres    false    187   Y-       m          0    16510    socios 
   TABLE DATA               �   COPY public.socios (id_socio, nombre, direccion, telefono, directores_favoritos, actores_favoritos, generos_favoritos) FROM stdin;
    public       postgres    false    186   v-       �           2606    16616 $   lista_de_espera lista_de_espera_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.lista_de_espera
    ADD CONSTRAINT lista_de_espera_pkey PRIMARY KEY (id_lista_de_espera);
 N   ALTER TABLE ONLY public.lista_de_espera DROP CONSTRAINT lista_de_espera_pkey;
       public         postgres    false    191    191            �           2606    16595 ,   peliculas_devueltas peliculas_devueltas_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.peliculas_devueltas
    ADD CONSTRAINT peliculas_devueltas_pkey PRIMARY KEY (id_peliculas_devueltas);
 V   ALTER TABLE ONLY public.peliculas_devueltas DROP CONSTRAINT peliculas_devueltas_pkey;
       public         postgres    false    189    189            �           2606    16509    peliculas peliculas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id_cinta);
 B   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT peliculas_pkey;
       public         postgres    false    185    185            �           2606    16577 ,   peliculas_prestadas peliculas_prestadas_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.peliculas_prestadas
    ADD CONSTRAINT peliculas_prestadas_pkey PRIMARY KEY (id_peliculas_prestadas);
 V   ALTER TABLE ONLY public.peliculas_prestadas DROP CONSTRAINT peliculas_prestadas_pkey;
       public         postgres    false    187    187            �           2606    16517    socios socios_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.socios
    ADD CONSTRAINT socios_pkey PRIMARY KEY (id_socio);
 <   ALTER TABLE ONLY public.socios DROP CONSTRAINT socios_pkey;
       public         postgres    false    186    186            �           2606    16617 -   lista_de_espera lista_de_espera_id_socio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lista_de_espera
    ADD CONSTRAINT lista_de_espera_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socios(id_socio);
 W   ALTER TABLE ONLY public.lista_de_espera DROP CONSTRAINT lista_de_espera_id_socio_fkey;
       public       postgres    false    191    2027    186            �           2606    16601 5   peliculas_devueltas peliculas_devueltas_id_cinta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_devueltas
    ADD CONSTRAINT peliculas_devueltas_id_cinta_fkey FOREIGN KEY (id_cinta) REFERENCES public.peliculas(id_cinta);
 _   ALTER TABLE ONLY public.peliculas_devueltas DROP CONSTRAINT peliculas_devueltas_id_cinta_fkey;
       public       postgres    false    2025    185    189            �           2606    16596 5   peliculas_devueltas peliculas_devueltas_id_socio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_devueltas
    ADD CONSTRAINT peliculas_devueltas_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socios(id_socio);
 _   ALTER TABLE ONLY public.peliculas_devueltas DROP CONSTRAINT peliculas_devueltas_id_socio_fkey;
       public       postgres    false    2027    189    186            �           2606    16578 5   peliculas_prestadas peliculas_prestadas_id_cinta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_prestadas
    ADD CONSTRAINT peliculas_prestadas_id_cinta_fkey FOREIGN KEY (id_cinta) REFERENCES public.peliculas(id_cinta);
 _   ALTER TABLE ONLY public.peliculas_prestadas DROP CONSTRAINT peliculas_prestadas_id_cinta_fkey;
       public       postgres    false    185    187    2025            �           2606    16583 5   peliculas_prestadas peliculas_prestadas_id_socio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_prestadas
    ADD CONSTRAINT peliculas_prestadas_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socios(id_socio);
 _   ALTER TABLE ONLY public.peliculas_prestadas DROP CONSTRAINT peliculas_prestadas_id_socio_fkey;
       public       postgres    false    187    2027    186            r      x������ � �      l      x������ � �      p      x������ � �      n      x������ � �      m      x������ � �     
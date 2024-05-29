PGDMP     .        
            |            controlePessoal    13.13    13.13     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16587    controlePessoal    DATABASE     q   CREATE DATABASE "controlePessoal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE "controlePessoal";
                postgres    false            �            1259    16588    acesso    TABLE     �   CREATE TABLE public.acesso (
    id integer NOT NULL,
    usuario character varying(10),
    login character varying(10),
    senha character varying(4)
);
    DROP TABLE public.acesso;
       public         heap    postgres    false            �            1259    16591    acesso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.acesso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.acesso_id_seq;
       public          postgres    false    200            �           0    0    acesso_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.acesso_id_seq OWNED BY public.acesso.id;
          public          postgres    false    201            �            1259    16593    boletos    TABLE       CREATE TABLE public.boletos (
    id integer NOT NULL,
    descricao character varying(80),
    valor double precision,
    datavencimento character varying(10),
    datapagamento character varying(10),
    statuspagamento character varying(40),
    observacao character varying(200)
);
    DROP TABLE public.boletos;
       public         heap    postgres    false            �            1259    16596    boletos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.boletos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.boletos_id_seq;
       public          postgres    false    202            �           0    0    boletos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.boletos_id_seq OWNED BY public.boletos.id;
          public          postgres    false    203            �            1259    16598 
   livrocaixa    TABLE     "  CREATE TABLE public.livrocaixa (
    id integer NOT NULL,
    datahora timestamp without time zone DEFAULT date_trunc('minute'::text, CURRENT_TIMESTAMP),
    descricao character varying(80),
    entrada double precision,
    saida double precision,
    observacao character varying(200)
);
    DROP TABLE public.livrocaixa;
       public         heap    postgres    false            �            1259    16602    livrocaixa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.livrocaixa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.livrocaixa_id_seq;
       public          postgres    false    204            �           0    0    livrocaixa_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.livrocaixa_id_seq OWNED BY public.livrocaixa.id;
          public          postgres    false    205            .           2604    16604 	   acesso id    DEFAULT     f   ALTER TABLE ONLY public.acesso ALTER COLUMN id SET DEFAULT nextval('public.acesso_id_seq'::regclass);
 8   ALTER TABLE public.acesso ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            /           2604    16605 
   boletos id    DEFAULT     h   ALTER TABLE ONLY public.boletos ALTER COLUMN id SET DEFAULT nextval('public.boletos_id_seq'::regclass);
 9   ALTER TABLE public.boletos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            1           2604    16606    livrocaixa id    DEFAULT     n   ALTER TABLE ONLY public.livrocaixa ALTER COLUMN id SET DEFAULT nextval('public.livrocaixa_id_seq'::regclass);
 <   ALTER TABLE public.livrocaixa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �          0    16588    acesso 
   TABLE DATA           ;   COPY public.acesso (id, usuario, login, senha) FROM stdin;
    public          postgres    false    200   �       �          0    16593    boletos 
   TABLE DATA           s   COPY public.boletos (id, descricao, valor, datavencimento, datapagamento, statuspagamento, observacao) FROM stdin;
    public          postgres    false    202   �       �          0    16598 
   livrocaixa 
   TABLE DATA           Y   COPY public.livrocaixa (id, datahora, descricao, entrada, saida, observacao) FROM stdin;
    public          postgres    false    204   1       �           0    0    acesso_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.acesso_id_seq', 1, true);
          public          postgres    false    201            �           0    0    boletos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.boletos_id_seq', 46, true);
          public          postgres    false    203            �           0    0    livrocaixa_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.livrocaixa_id_seq', 20, true);
          public          postgres    false    205            3           2606    16608    acesso acesso_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.acesso
    ADD CONSTRAINT acesso_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.acesso DROP CONSTRAINT acesso_pkey;
       public            postgres    false    200            5           2606    16610    boletos boletos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.boletos
    ADD CONSTRAINT boletos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.boletos DROP CONSTRAINT boletos_pkey;
       public            postgres    false    202            7           2606    16612    livrocaixa livrocaixa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.livrocaixa
    ADD CONSTRAINT livrocaixa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.livrocaixa DROP CONSTRAINT livrocaixa_pkey;
       public            postgres    false    204            �   #   x�3��IM��)���LL����44�4����� r      �   I  x�u�MN�0��3��H�q�4]"�T�RWl��U,�?*�A,8H/MK��T�b$��o���j]�������G�DJ*BD�&�� ���tb�s�o��t�R��H��*k���[40s�����ˁ�AID-h�Uf
�~��,��q1�^�jq�.;a7��X��&�����������\
 i���=ѩ��/�Jd\��Q�m�e𘞥I�8ޅgp��&����8�%W��$�c��{x#x^��ະ[�yeA%(izL��w�(�\"�H7��ٛF}����РN`�>{����ɞ0m��6s�[x����_������      �   �  x�m�Mn�0���)f_�����.P�ERE��L,��#S-%�N�E�������%�7��<"�BꝐ;Q�(j��>�0z��az�������7��r/K\n�_�`�3�۶�H�վ
z�֫�_|���� �w���ɷ,��w$�@0Q�2��Q0a�D��Ɵ���Ac�Dn���<߄�%w�m �R���㳁O�Dn ^\C(k,���MK֙����E��Z��ܴ�\����P���C�Ao�����X�e��8��z�G�����#�]���ӿGj:�rS��ܓ��C�1�cC1����1$�t*Pl1
>i�"ƹ�(5��ήϚҨ(��2�d�]�2�=wQ�s՘��,��u��k�|�c�Χ�������c���K���r���>
zo�a�9�d���     
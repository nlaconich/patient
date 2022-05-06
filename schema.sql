-- Table: public.personal_data

-- DROP TABLE IF EXISTS public.personal_data;

CREATE TABLE IF NOT EXISTS public.personal_data
(
    id_personal_data integer NOT NULL DEFAULT nextval('personal_data_id_personal_data_seq'::regclass),
    name character varying COLLATE pg_catalog."default",
    lastname character varying COLLATE pg_catalog."default",
    document_number character varying COLLATE pg_catalog."default",
    birth_date date,
    weight integer,
    CONSTRAINT personal_data_pkey PRIMARY KEY (id_personal_data)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.personal_data
    OWNER to developer;
	
-- Table: public.user

-- DROP TABLE IF EXISTS public."user";

CREATE TABLE IF NOT EXISTS public."user"
(
    id_user integer NOT NULL DEFAULT nextval('user_id_user_seq'::regclass),
    username character varying COLLATE pg_catalog."default",
    password character varying COLLATE pg_catalog."default",
    status character varying COLLATE pg_catalog."default",
    id_personal_data integer,
    CONSTRAINT user_pkey PRIMARY KEY (id_user),
    CONSTRAINT "id_personal_data(personal_data->user)" FOREIGN KEY (id_personal_data)
        REFERENCES public.personal_data (id_personal_data) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."user"
    OWNER to developer;
	
CREATE TABLE IF NOT EXISTS public.patient
(
    id_patient integer NOT NULL DEFAULT nextval('patient_id_patient_seq'::regclass),
    entry_date date,
    status character varying(1) COLLATE pg_catalog."default",
    id_personal_data integer,
    CONSTRAINT patient_pkey PRIMARY KEY (id_patient),
    CONSTRAINT "id_personal_data(personal_data->patient)" FOREIGN KEY (id_personal_data)
        REFERENCES public.personal_data (id_personal_data) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.patient
    OWNER to developer;
	
	CREATE TABLE IF NOT EXISTS public.contact
(
    id_contact integer NOT NULL DEFAULT nextval('contact_id_contact_seq'::regclass),
    type character varying COLLATE pg_catalog."default",
    value character varying COLLATE pg_catalog."default",
    id_personal_data integer,
    CONSTRAINT contact_pkey PRIMARY KEY (id_contact),
    CONSTRAINT "id_personal_data(personal_data->contact)" FOREIGN KEY (id_personal_data)
        REFERENCES public.personal_data (id_personal_data) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contact
    OWNER to developer;
	

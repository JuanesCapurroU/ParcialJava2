PGDMP  ,    1                }            postgres    15.8    17.2 �   K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            N           1262    5    postgres    DATABASE     t   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE postgres;
                     postgres    false            O           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3918            P           0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                        postgres    false    3918            Q           0    0    postgres    DATABASE PROPERTIES     >   ALTER DATABASE postgres SET "app.settings.jwt_exp" TO '3600';
                          postgres    false                        2615    16488    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                     supabase_admin    false            R           0    0    SCHEMA auth    ACL        GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT ALL ON SCHEMA auth TO postgres;
                        supabase_admin    false    15                        2615    16388 
   extensions    SCHEMA        CREATE SCHEMA extensions;
    DROP SCHEMA extensions;
                     postgres    false            S           0    0    SCHEMA extensions    ACL     �   GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;
                        postgres    false    13                        2615    16618    graphql    SCHEMA        CREATE SCHEMA graphql;
    DROP SCHEMA graphql;
                     supabase_admin    false                        2615    16607    graphql_public    SCHEMA        CREATE SCHEMA graphql_public;
    DROP SCHEMA graphql_public;
                     supabase_admin    false                        2615    16386 	   pgbouncer    SCHEMA        CREATE SCHEMA pgbouncer;
    DROP SCHEMA pgbouncer;
                  	   pgbouncer    false            T           0    0    SCHEMA public    ACL     �   GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;
                        pg_database_owner    false    12                        2615    16599    realtime    SCHEMA        CREATE SCHEMA realtime;
    DROP SCHEMA realtime;
                     supabase_admin    false            U           0    0    SCHEMA realtime    ACL     �   GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;
                        supabase_admin    false    19                        2615    16536    storage    SCHEMA        CREATE SCHEMA storage;
    DROP SCHEMA storage;
                     supabase_admin    false            V           0    0    SCHEMA storage    ACL       GRANT ALL ON SCHEMA storage TO postgres;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin;
GRANT ALL ON SCHEMA storage TO dashboard_user;
                        supabase_admin    false    14                        2615    16645    vault    SCHEMA        CREATE SCHEMA vault;
    DROP SCHEMA vault;
                     supabase_admin    false            W           0    0    SCHEMA vault    ACL     ;   GRANT USAGE ON SCHEMA vault TO postgres WITH GRANT OPTION;
                        supabase_admin    false    16                        3079    16673 
   pg_graphql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;
    DROP EXTENSION pg_graphql;
                        false    18            X           0    0    EXTENSION pg_graphql    COMMENT     B   COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';
                             false    7                        3079    16389    pg_stat_statements 	   EXTENSION     J   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;
 #   DROP EXTENSION pg_stat_statements;
                        false    13            Y           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                             false    2                        3079    16434    pgcrypto 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;
    DROP EXTENSION pgcrypto;
                        false    13            Z           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                             false    4                        3079    16471    pgjwt 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA extensions;
    DROP EXTENSION pgjwt;
                        false    13    4            [           0    0    EXTENSION pgjwt    COMMENT     C   COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for Postgresql';
                             false    5                        3079    16646    supabase_vault 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;
    DROP EXTENSION supabase_vault;
                        false    16            \           0    0    EXTENSION supabase_vault    COMMENT     C   COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';
                             false    6                        3079    16423 	   uuid-ossp 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
    DROP EXTENSION "uuid-ossp";
                        false    13            ]           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                             false    3                       1247    16762 	   aal_level    TYPE     K   CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);
    DROP TYPE auth.aal_level;
       auth               supabase_auth_admin    false    15            .           1247    16903    code_challenge_method    TYPE     L   CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);
 &   DROP TYPE auth.code_challenge_method;
       auth               supabase_auth_admin    false    15                       1247    16756    factor_status    TYPE     M   CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);
    DROP TYPE auth.factor_status;
       auth               supabase_auth_admin    false    15                       1247    16750    factor_type    TYPE     R   CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);
    DROP TYPE auth.factor_type;
       auth               supabase_auth_admin    false    15            4           1247    16945    one_time_token_type    TYPE     �   CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);
 $   DROP TYPE auth.one_time_token_type;
       auth               supabase_auth_admin    false    15            L           1247    17112    action    TYPE     o   CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);
    DROP TYPE realtime.action;
       realtime               supabase_admin    false    19            C           1247    17073    equality_op    TYPE     v   CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);
     DROP TYPE realtime.equality_op;
       realtime               supabase_admin    false    19            F           1247    17087    user_defined_filter    TYPE     j   CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);
 (   DROP TYPE realtime.user_defined_filter;
       realtime               supabase_admin    false    19    1091            R           1247    17158 
   wal_column    TYPE     �   CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);
    DROP TYPE realtime.wal_column;
       realtime               supabase_admin    false    19            O           1247    17125    wal_rls    TYPE     s   CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);
    DROP TYPE realtime.wal_rls;
       realtime               supabase_admin    false    19            %           1255    16534    email()    FUNCTION       CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;
    DROP FUNCTION auth.email();
       auth               supabase_auth_admin    false    15            ^           0    0    FUNCTION email()    COMMENT     X   COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';
          auth               supabase_auth_admin    false    293            _           0    0    FUNCTION email()    ACL     6   GRANT ALL ON FUNCTION auth.email() TO dashboard_user;
          auth               supabase_auth_admin    false    293            l           1255    16732    jwt()    FUNCTION     �   CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;
    DROP FUNCTION auth.jwt();
       auth               supabase_auth_admin    false    15            `           0    0    FUNCTION jwt()    ACL     b   GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;
          auth               supabase_auth_admin    false    364            $           1255    16533    role()    FUNCTION        CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;
    DROP FUNCTION auth.role();
       auth               supabase_auth_admin    false    15            a           0    0    FUNCTION role()    COMMENT     V   COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';
          auth               supabase_auth_admin    false    292            b           0    0    FUNCTION role()    ACL     5   GRANT ALL ON FUNCTION auth.role() TO dashboard_user;
          auth               supabase_auth_admin    false    292            #           1255    16532    uid()    FUNCTION     �   CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;
    DROP FUNCTION auth.uid();
       auth               supabase_auth_admin    false    15            c           0    0    FUNCTION uid()    COMMENT     T   COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';
          auth               supabase_auth_admin    false    291            d           0    0    FUNCTION uid()    ACL     4   GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;
          auth               supabase_auth_admin    false    291            e           0    0 D   FUNCTION algorithm_sign(signables text, secret text, algorithm text)    ACL     Y  REVOKE ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    331            f           0    0    FUNCTION armor(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;
       
   extensions               postgres    false    326            g           0    0 %   FUNCTION armor(bytea, text[], text[])    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;
       
   extensions               postgres    false    327            h           0    0    FUNCTION crypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    341            i           0    0    FUNCTION dearmor(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;
       
   extensions               postgres    false    328            j           0    0 $   FUNCTION decrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    345            k           0    0 .   FUNCTION decrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    347            l           0    0    FUNCTION digest(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    338            m           0    0    FUNCTION digest(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;
       
   extensions               postgres    false    337            n           0    0 $   FUNCTION encrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    344            o           0    0 .   FUNCTION encrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    346            p           0    0 "   FUNCTION gen_random_bytes(integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;
       
   extensions               postgres    false    315            q           0    0    FUNCTION gen_random_uuid()    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;
       
   extensions               postgres    false    316            r           0    0    FUNCTION gen_salt(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;
       
   extensions               postgres    false    342            s           0    0     FUNCTION gen_salt(text, integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;
       
   extensions               postgres    false    343            \           1255    16591    grant_pg_cron_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;
 1   DROP FUNCTION extensions.grant_pg_cron_access();
    
   extensions               postgres    false    13            t           0    0    FUNCTION grant_pg_cron_access()    COMMENT     U   COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';
       
   extensions               postgres    false    348            u           0    0    FUNCTION grant_pg_cron_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;
       
   extensions               postgres    false    348            d           1255    16612    grant_pg_graphql_access()    FUNCTION     i	  CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;
 4   DROP FUNCTION extensions.grant_pg_graphql_access();
    
   extensions               supabase_admin    false    13            v           0    0 "   FUNCTION grant_pg_graphql_access()    COMMENT     [   COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';
       
   extensions               supabase_admin    false    356            w           0    0 "   FUNCTION grant_pg_graphql_access()    ACL     Z   GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    356            b           1255    16593    grant_pg_net_access()    FUNCTION     6  CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    IF EXISTS (
      SELECT FROM pg_extension
      WHERE extname = 'pg_net'
      -- all versions in use on existing projects as of 2025-02-20
      -- version 0.12.0 onwards don't need these applied
      AND extversion IN ('0.2', '0.6', '0.7', '0.7.1', '0.8', '0.10.0', '0.11.0')
    ) THEN
      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

      REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
      REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

      GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
      GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    END IF;
  END IF;
END;
$$;
 0   DROP FUNCTION extensions.grant_pg_net_access();
    
   extensions               postgres    false    13            x           0    0    FUNCTION grant_pg_net_access()    COMMENT     S   COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';
       
   extensions               postgres    false    354            y           0    0    FUNCTION grant_pg_net_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;
       
   extensions               postgres    false    354            z           0    0 !   FUNCTION hmac(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    340            {           0    0    FUNCTION hmac(text, text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    339            |           0    0 U  FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO dashboard_user;
       
   extensions               postgres    false    349            }           0    0 ^   FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;
       
   extensions               postgres    false    314            ~           0    0 G   FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint)    ACL     b  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO dashboard_user;
       
   extensions               postgres    false    310                       0    0 >   FUNCTION pgp_armor_headers(text, OUT key text, OUT value text)    ACL     G  REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;
       
   extensions               postgres    false    329            �           0    0    FUNCTION pgp_key_id(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;
       
   extensions               postgres    false    325            �           0    0 &   FUNCTION pgp_pub_decrypt(bytea, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    299            �           0    0 ,   FUNCTION pgp_pub_decrypt(bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    321            �           0    0 2   FUNCTION pgp_pub_decrypt(bytea, bytea, text, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    323            �           0    0 ,   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    320            �           0    0 2   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    322            �           0    0 8   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text)    ACL     5  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    324            �           0    0 %   FUNCTION pgp_pub_encrypt(text, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;
       
   extensions               postgres    false    288            �           0    0 +   FUNCTION pgp_pub_encrypt(text, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    290            �           0    0 ,   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    289            �           0    0 2   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    319            �           0    0 %   FUNCTION pgp_sym_decrypt(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    302            �           0    0 +   FUNCTION pgp_sym_decrypt(bytea, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    304            �           0    0 +   FUNCTION pgp_sym_decrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    303            �           0    0 1   FUNCTION pgp_sym_decrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    305            �           0    0 $   FUNCTION pgp_sym_encrypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    317            �           0    0 *   FUNCTION pgp_sym_encrypt(text, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    300            �           0    0 +   FUNCTION pgp_sym_encrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    318            �           0    0 1   FUNCTION pgp_sym_encrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    301            a           1255    16603    pgrst_ddl_watch()    FUNCTION     >  CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 ,   DROP FUNCTION extensions.pgrst_ddl_watch();
    
   extensions               supabase_admin    false    13            �           0    0    FUNCTION pgrst_ddl_watch()    ACL     R   GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    353            7           1255    16604    pgrst_drop_watch()    FUNCTION       CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 -   DROP FUNCTION extensions.pgrst_drop_watch();
    
   extensions               supabase_admin    false    13            �           0    0    FUNCTION pgrst_drop_watch()    ACL     S   GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    311            c           1255    16614    set_graphql_placeholder()    FUNCTION     r  CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;
 4   DROP FUNCTION extensions.set_graphql_placeholder();
    
   extensions               supabase_admin    false    13            �           0    0 "   FUNCTION set_graphql_placeholder()    COMMENT     |   COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';
       
   extensions               supabase_admin    false    355            �           0    0 "   FUNCTION set_graphql_placeholder()    ACL     Z   GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    355            �           0    0 8   FUNCTION sign(payload json, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    350            �           0    0 "   FUNCTION try_cast_double(inp text)    ACL     �   REVOKE ALL ON FUNCTION extensions.try_cast_double(inp text) FROM postgres;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO dashboard_user;
       
   extensions               postgres    false    351            �           0    0    FUNCTION url_decode(data text)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_decode(data text) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO dashboard_user;
       
   extensions               postgres    false    309            �           0    0    FUNCTION url_encode(data bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_encode(data bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO dashboard_user;
       
   extensions               postgres    false    330            �           0    0    FUNCTION uuid_generate_v1()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;
       
   extensions               postgres    false    306            �           0    0    FUNCTION uuid_generate_v1mc()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1mc() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;
       
   extensions               postgres    false    307            �           0    0 4   FUNCTION uuid_generate_v3(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    308            �           0    0    FUNCTION uuid_generate_v4()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v4() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;
       
   extensions               postgres    false    335            �           0    0 4   FUNCTION uuid_generate_v5(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    336            �           0    0    FUNCTION uuid_nil()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_nil() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;
       
   extensions               postgres    false    294            �           0    0    FUNCTION uuid_ns_dns()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_dns() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;
       
   extensions               postgres    false    295            �           0    0    FUNCTION uuid_ns_oid()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_oid() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;
       
   extensions               postgres    false    297            �           0    0    FUNCTION uuid_ns_url()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_url() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;
       
   extensions               postgres    false    296            �           0    0    FUNCTION uuid_ns_x500()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_x500() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;
       
   extensions               postgres    false    298            �           0    0 8   FUNCTION verify(token text, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    352            �           0    0 U   FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb)    ACL       GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;
          graphql_public               supabase_admin    false    358                       1255    16387    get_auth(text)    FUNCTION     J  CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    RAISE WARNING 'PgBouncer auth request: %', p_usename;

    RETURN QUERY
    SELECT usename::TEXT, passwd::TEXT FROM pg_catalog.pg_shadow
    WHERE usename = p_usename;
END;
$$;
 2   DROP FUNCTION pgbouncer.get_auth(p_usename text);
    	   pgbouncer               supabase_admin    false    11            �           0    0 !   FUNCTION get_auth(p_usename text)    ACL     �   REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO postgres;
       	   pgbouncer               supabase_admin    false    276            |           1255    17151    apply_rls(jsonb, integer)    FUNCTION     �(  CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_;

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or (
                          action = 'DELETE'
                          and realtime.is_visible_through_filters(old_columns, subs.filters)
                        )
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;
 G   DROP FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer);
       realtime               supabase_admin    false    1103    19            �           0    0 7   FUNCTION apply_rls(wal jsonb, max_record_bytes integer)    ACL     <  GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    380            �           1255    17229 E   broadcast_changes(text, text, text, text, text, record, record, text)    FUNCTION       CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;
 �   DROP FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text);
       realtime               supabase_admin    false    19            �           0    0 �   FUNCTION broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text)    ACL     v  GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO postgres;
GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO dashboard_user;
          realtime               supabase_admin    false    386            {           1255    17163 C   build_prepared_statement_sql(text, regclass, realtime.wal_column[])    FUNCTION     �  CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;
 �   DROP FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
       realtime               supabase_admin    false    1106    19            �           0    0 s   FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[])    ACL     �  GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    379            x           1255    17109    cast(text, regtype)    FUNCTION       CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;
 8   DROP FUNCTION realtime."cast"(val text, type_ regtype);
       realtime               supabase_admin    false    19            �           0    0 (   FUNCTION "cast"(val text, type_ regtype)    ACL     �  GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;
          realtime               supabase_admin    false    376            y           1255    17104 <   check_equality_op(realtime.equality_op, regtype, text, text)    FUNCTION     U  CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;
 j   DROP FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
       realtime               supabase_admin    false    1091    19            �           0    0 Z   FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text)    ACL       GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    377            }           1255    17159 Q   is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[])    FUNCTION     �  CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;
 z   DROP FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
       realtime               supabase_admin    false    1106    1094    19            �           0    0 j   FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[])    ACL     n  GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    381            ~           1255    17170 *   list_changes(name, name, integer, integer)    FUNCTION     �  CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;
 v   DROP FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
       realtime               supabase_admin    false    1103    19            �           0    0 f   FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer)    ACL     V  GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    382            w           1255    17103    quote_wal2json(regclass)    FUNCTION     �  CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;
 8   DROP FUNCTION realtime.quote_wal2json(entity regclass);
       realtime               supabase_admin    false    19            �           0    0 (   FUNCTION quote_wal2json(entity regclass)    ACL     �  GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;
          realtime               supabase_admin    false    375            �           1255    17228     send(jsonb, text, text, boolean)    FUNCTION       CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  BEGIN
    -- Set the topic configuration
    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    -- Attempt to insert the message
    INSERT INTO realtime.messages (payload, event, topic, private, extension)
    VALUES (payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      -- Capture and notify the error
      PERFORM pg_notify(
          'realtime:system',
          jsonb_build_object(
              'error', SQLERRM,
              'function', 'realtime.send',
              'event', event,
              'topic', topic,
              'private', private
          )::text
      );
  END;
END;
$$;
 U   DROP FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean);
       realtime               supabase_admin    false    19            �           0    0 E   FUNCTION send(payload jsonb, event text, topic text, private boolean)    ACL     �   GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO dashboard_user;
          realtime               supabase_admin    false    385                       1255    17101    subscription_check_filters()    FUNCTION     <
  CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;
 5   DROP FUNCTION realtime.subscription_check_filters();
       realtime               supabase_admin    false    19            �           0    0 %   FUNCTION subscription_check_filters()    ACL     �  GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;
          realtime               supabase_admin    false    383            z           1255    17140    to_regrole(text)    FUNCTION     �   CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;
 3   DROP FUNCTION realtime.to_regrole(role_name text);
       realtime               supabase_admin    false    19            �           0    0 #   FUNCTION to_regrole(role_name text)    ACL     �  GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    378            �           1255    17222    topic()    FUNCTION     �   CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;
     DROP FUNCTION realtime.topic();
       realtime               supabase_realtime_admin    false    19            �           0    0    FUNCTION topic()    ACL     n   GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;
          realtime               supabase_realtime_admin    false    384            r           1255    17010 *   can_insert_object(text, text, uuid, jsonb)    FUNCTION     �  CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;
 _   DROP FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
       storage               supabase_storage_admin    false    14            o           1255    16984    extension(text)    FUNCTION     Z  CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
_filename text;
BEGIN
	select string_to_array(name, '/') into _parts;
	select _parts[array_length(_parts,1)] into _filename;
	-- @todo return the last part instead of 2
	return reverse(split_part(reverse(_filename), '.', 1));
END
$$;
 ,   DROP FUNCTION storage.extension(name text);
       storage               supabase_storage_admin    false    14            n           1255    16983    filename(text)    FUNCTION     �   CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;
 +   DROP FUNCTION storage.filename(name text);
       storage               supabase_storage_admin    false    14            m           1255    16982    foldername(text)    FUNCTION     �   CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[1:array_length(_parts,1)-1];
END
$$;
 -   DROP FUNCTION storage.foldername(name text);
       storage               supabase_storage_admin    false    14            p           1255    16996    get_size_by_bucket()    FUNCTION        CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::int) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;
 ,   DROP FUNCTION storage.get_size_by_bucket();
       storage               supabase_storage_admin    false    14            t           1255    17049 L   list_multipart_uploads_with_delimiter(text, text, text, integer, text, text)    FUNCTION     9  CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;
 �   DROP FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
       storage               supabase_storage_admin    false    14            s           1255    17012 B   list_objects_with_delimiter(text, text, text, integer, text, text)    FUNCTION     �  CREATE FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(name COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                        substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1)))
                    ELSE
                        name
                END AS name, id, metadata, updated_at
            FROM
                storage.objects
            WHERE
                bucket_id = $5 AND
                name ILIKE $1 || ''%'' AND
                CASE
                    WHEN $6 != '''' THEN
                    name COLLATE "C" > $6
                ELSE true END
                AND CASE
                    WHEN $4 != '''' THEN
                        CASE
                            WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                                substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                name COLLATE "C" > $4
                            END
                    ELSE
                        true
                END
            ORDER BY
                name COLLATE "C" ASC) as e order by name COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_token, bucket_id, start_after;
END;
$_$;
 �   DROP FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text);
       storage               supabase_storage_admin    false    14            v           1255    17065    operation()    FUNCTION     �   CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;
 #   DROP FUNCTION storage.operation();
       storage               supabase_storage_admin    false    14            u           1255    16999 ?   search(text, text, integer, integer, integer, text, text, text)    FUNCTION       CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  v_order_by text;
  v_sort_order text;
begin
  case
    when sortcolumn = 'name' then
      v_order_by = 'name';
    when sortcolumn = 'updated_at' then
      v_order_by = 'updated_at';
    when sortcolumn = 'created_at' then
      v_order_by = 'created_at';
    when sortcolumn = 'last_accessed_at' then
      v_order_by = 'last_accessed_at';
    else
      v_order_by = 'name';
  end case;

  case
    when sortorder = 'asc' then
      v_sort_order = 'asc';
    when sortorder = 'desc' then
      v_sort_order = 'desc';
    else
      v_sort_order = 'asc';
  end case;

  v_order_by = v_order_by || ' ' || v_sort_order;

  return query execute
    'with folders as (
       select path_tokens[$1] as folder
       from storage.objects
         where objects.name ilike $2 || $3 || ''%''
           and bucket_id = $4
           and array_length(objects.path_tokens, 1) <> $1
       group by folder
       order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;
 �   DROP FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
       storage               supabase_storage_admin    false    14            q           1255    17000    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;
 2   DROP FUNCTION storage.update_updated_at_column();
       storage               supabase_storage_admin    false    14            �           0    0 m   FUNCTION _crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION vault._crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea) TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    334            �           0    0 ]   FUNCTION create_secret(new_secret text, new_name text, new_description text, new_key_id uuid)    ACL     �   GRANT ALL ON FUNCTION vault.create_secret(new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    312            �           0    0 m   FUNCTION update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid)    ACL     �   GRANT ALL ON FUNCTION vault.update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    313            �            1259    16519    audit_log_entries    TABLE     �   CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE auth.audit_log_entries;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE audit_log_entries    COMMENT     R   COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';
          auth               supabase_auth_admin    false    238            �           0    0    TABLE audit_log_entries    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    238            �            1259    16907 
   flow_state    TABLE     �  CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text NOT NULL,
    code_challenge_method auth.code_challenge_method NOT NULL,
    code_challenge text NOT NULL,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone
);
    DROP TABLE auth.flow_state;
       auth         heap r       supabase_auth_admin    false    1070    15            �           0    0    TABLE flow_state    COMMENT     G   COMMENT ON TABLE auth.flow_state IS 'stores metadata for pkce logins';
          auth               supabase_auth_admin    false    255            �           0    0    TABLE flow_state    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO dashboard_user;
          auth               supabase_auth_admin    false    255            �            1259    16704 
   identities    TABLE     �  CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
    DROP TABLE auth.identities;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE identities    COMMENT     U   COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';
          auth               supabase_auth_admin    false    246            �           0    0    COLUMN identities.email    COMMENT     �   COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';
          auth               supabase_auth_admin    false    246            �           0    0    TABLE identities    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO dashboard_user;
          auth               supabase_auth_admin    false    246            �            1259    16512 	   instances    TABLE     �   CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE auth.instances;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE instances    COMMENT     Q   COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';
          auth               supabase_auth_admin    false    237            �           0    0    TABLE instances    ACL     	  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    237            �            1259    16794    mfa_amr_claims    TABLE     �   CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);
     DROP TABLE auth.mfa_amr_claims;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE mfa_amr_claims    COMMENT     ~   COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';
          auth               supabase_auth_admin    false    250            �           0    0    TABLE mfa_amr_claims    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO dashboard_user;
          auth               supabase_auth_admin    false    250            �            1259    16782    mfa_challenges    TABLE       CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);
     DROP TABLE auth.mfa_challenges;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE mfa_challenges    COMMENT     _   COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';
          auth               supabase_auth_admin    false    249            �           0    0    TABLE mfa_challenges    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO dashboard_user;
          auth               supabase_auth_admin    false    249            �            1259    16769    mfa_factors    TABLE     �  CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid
);
    DROP TABLE auth.mfa_factors;
       auth         heap r       supabase_auth_admin    false    15    1043    1040            �           0    0    TABLE mfa_factors    COMMENT     L   COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';
          auth               supabase_auth_admin    false    248            �           0    0    TABLE mfa_factors    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO dashboard_user;
          auth               supabase_auth_admin    false    248                        1259    16957    one_time_tokens    TABLE     �  CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);
 !   DROP TABLE auth.one_time_tokens;
       auth         heap r       supabase_auth_admin    false    15    1076            �           0    0    TABLE one_time_tokens    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO dashboard_user;
          auth               supabase_auth_admin    false    256            �            1259    16501    refresh_tokens    TABLE     8  CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);
     DROP TABLE auth.refresh_tokens;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE refresh_tokens    COMMENT     n   COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';
          auth               supabase_auth_admin    false    236            �           0    0    TABLE refresh_tokens    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    236            �            1259    16500    refresh_tokens_id_seq    SEQUENCE     |   CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auth.refresh_tokens_id_seq;
       auth               supabase_auth_admin    false    236    15            �           0    0    refresh_tokens_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;
          auth               supabase_auth_admin    false    235            �           0    0    SEQUENCE refresh_tokens_id_seq    ACL     �   GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;
          auth               supabase_auth_admin    false    235            �            1259    16836    saml_providers    TABLE     H  CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);
     DROP TABLE auth.saml_providers;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE saml_providers    COMMENT     ]   COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';
          auth               supabase_auth_admin    false    253            �           0    0    TABLE saml_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO dashboard_user;
          auth               supabase_auth_admin    false    253            �            1259    16854    saml_relay_states    TABLE     `  CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);
 #   DROP TABLE auth.saml_relay_states;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE saml_relay_states    COMMENT     �   COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';
          auth               supabase_auth_admin    false    254            �           0    0    TABLE saml_relay_states    ACL     !  GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO dashboard_user;
          auth               supabase_auth_admin    false    254            �            1259    16527    schema_migrations    TABLE     U   CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);
 #   DROP TABLE auth.schema_migrations;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE schema_migrations    COMMENT     X   COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';
          auth               supabase_auth_admin    false    239            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO postgres;
GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    239            �            1259    16734    sessions    TABLE     T  CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text
);
    DROP TABLE auth.sessions;
       auth         heap r       supabase_auth_admin    false    15    1046            �           0    0    TABLE sessions    COMMENT     U   COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';
          auth               supabase_auth_admin    false    247            �           0    0    COLUMN sessions.not_after    COMMENT     �   COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';
          auth               supabase_auth_admin    false    247            �           0    0    TABLE sessions    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO dashboard_user;
          auth               supabase_auth_admin    false    247            �            1259    16821    sso_domains    TABLE       CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);
    DROP TABLE auth.sso_domains;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE sso_domains    COMMENT     t   COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';
          auth               supabase_auth_admin    false    252            �           0    0    TABLE sso_domains    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO dashboard_user;
          auth               supabase_auth_admin    false    252            �            1259    16812    sso_providers    TABLE       CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);
    DROP TABLE auth.sso_providers;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE sso_providers    COMMENT     x   COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';
          auth               supabase_auth_admin    false    251            �           0    0     COLUMN sso_providers.resource_id    COMMENT     �   COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';
          auth               supabase_auth_admin    false    251            �           0    0    TABLE sso_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO dashboard_user;
          auth               supabase_auth_admin    false    251            �            1259    16489    users    TABLE     4  CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);
    DROP TABLE auth.users;
       auth         heap r       supabase_auth_admin    false    15            �           0    0    TABLE users    COMMENT     W   COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';
          auth               supabase_auth_admin    false    234            �           0    0    COLUMN users.is_sso_user    COMMENT     �   COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';
          auth               supabase_auth_admin    false    234            �           0    0    TABLE users    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    234            �           0    0    TABLE pg_stat_statements    ACL     q  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO dashboard_user;
       
   extensions               postgres    false    233            �           0    0    TABLE pg_stat_statements_info    ACL     �  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO dashboard_user;
       
   extensions               postgres    false    232                       1259    17250 
   entrenador    TABLE     �   CREATE TABLE public.entrenador (
    id_entrenador integer NOT NULL,
    id_equipo integer,
    especialidad character varying(255),
    nombre character varying(255)
);
    DROP TABLE public.entrenador;
       public         heap r       postgres    false            �           0    0    TABLE entrenador    ACL     7  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.entrenador TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.entrenador TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.entrenador TO service_role;
          public               postgres    false    267            
           1259    17249    entrenador_id_entrenador_seq    SEQUENCE     �   ALTER TABLE public.entrenador ALTER COLUMN id_entrenador ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.entrenador_id_entrenador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    267            �           0    0 %   SEQUENCE entrenador_id_entrenador_seq    ACL     �   GRANT ALL ON SEQUENCE public.entrenador_id_entrenador_seq TO anon;
GRANT ALL ON SEQUENCE public.entrenador_id_entrenador_seq TO authenticated;
GRANT ALL ON SEQUENCE public.entrenador_id_entrenador_seq TO service_role;
          public               postgres    false    266                       1259    17258    equipo    TABLE     �   CREATE TABLE public.equipo (
    fundacion date,
    id_equipo integer NOT NULL,
    ciudad character varying(255),
    nombre character varying(255)
);
    DROP TABLE public.equipo;
       public         heap r       postgres    false            �           0    0    TABLE equipo    ACL     +  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.equipo TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.equipo TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.equipo TO service_role;
          public               postgres    false    269                       1259    17257    equipo_id_equipo_seq    SEQUENCE     �   ALTER TABLE public.equipo ALTER COLUMN id_equipo ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.equipo_id_equipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    269            �           0    0    SEQUENCE equipo_id_equipo_seq    ACL     �   GRANT ALL ON SEQUENCE public.equipo_id_equipo_seq TO anon;
GRANT ALL ON SEQUENCE public.equipo_id_equipo_seq TO authenticated;
GRANT ALL ON SEQUENCE public.equipo_id_equipo_seq TO service_role;
          public               postgres    false    268                       1259    17266    estadistica_jugador    TABLE     3  CREATE TABLE public.estadistica_jugador (
    asistencias integer NOT NULL,
    goles integer NOT NULL,
    id_estadistica integer NOT NULL,
    id_jugador integer,
    id_partido integer,
    minutos_jugados integer NOT NULL,
    tarjetas_amarillas integer NOT NULL,
    tarjetas_rojas integer NOT NULL
);
 '   DROP TABLE public.estadistica_jugador;
       public         heap r       postgres    false            �           0    0    TABLE estadistica_jugador    ACL     R  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.estadistica_jugador TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.estadistica_jugador TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.estadistica_jugador TO service_role;
          public               postgres    false    271                       1259    17265 &   estadistica_jugador_id_estadistica_seq    SEQUENCE     �   ALTER TABLE public.estadistica_jugador ALTER COLUMN id_estadistica ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.estadistica_jugador_id_estadistica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    271            �           0    0 /   SEQUENCE estadistica_jugador_id_estadistica_seq    ACL     �   GRANT ALL ON SEQUENCE public.estadistica_jugador_id_estadistica_seq TO anon;
GRANT ALL ON SEQUENCE public.estadistica_jugador_id_estadistica_seq TO authenticated;
GRANT ALL ON SEQUENCE public.estadistica_jugador_id_estadistica_seq TO service_role;
          public               postgres    false    270                       1259    17272    jugador    TABLE     �   CREATE TABLE public.jugador (
    dorsal integer NOT NULL,
    fecha_nac date,
    id_equipo integer,
    id_jugador integer NOT NULL,
    nacionalidad character varying(255),
    nombre character varying(255),
    posicion character varying(255)
);
    DROP TABLE public.jugador;
       public         heap r       postgres    false            �           0    0    TABLE jugador    ACL     .  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.jugador TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.jugador TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.jugador TO service_role;
          public               postgres    false    273                       1259    17271    jugador_id_jugador_seq    SEQUENCE     �   ALTER TABLE public.jugador ALTER COLUMN id_jugador ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.jugador_id_jugador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    273            �           0    0    SEQUENCE jugador_id_jugador_seq    ACL     �   GRANT ALL ON SEQUENCE public.jugador_id_jugador_seq TO anon;
GRANT ALL ON SEQUENCE public.jugador_id_jugador_seq TO authenticated;
GRANT ALL ON SEQUENCE public.jugador_id_jugador_seq TO service_role;
          public               postgres    false    272                       1259    17280    partido    TABLE     �   CREATE TABLE public.partido (
    equipo_local integer,
    equipo_visita integer,
    fecha date,
    goles_local integer NOT NULL,
    goles_visita integer NOT NULL,
    id_partido integer NOT NULL,
    estadio character varying(255)
);
    DROP TABLE public.partido;
       public         heap r       postgres    false            �           0    0    TABLE partido    ACL     .  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.partido TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.partido TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.partido TO service_role;
          public               postgres    false    275                       1259    17279    partido_id_partido_seq    SEQUENCE     �   ALTER TABLE public.partido ALTER COLUMN id_partido ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.partido_id_partido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    275            �           0    0    SEQUENCE partido_id_partido_seq    ACL     �   GRANT ALL ON SEQUENCE public.partido_id_partido_seq TO anon;
GRANT ALL ON SEQUENCE public.partido_id_partido_seq TO authenticated;
GRANT ALL ON SEQUENCE public.partido_id_partido_seq TO service_role;
          public               postgres    false    274            	           1259    17232    messages    TABLE     w  CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
)
PARTITION BY RANGE (inserted_at);
    DROP TABLE realtime.messages;
       realtime         p       supabase_realtime_admin    false    19            �           0    0    TABLE messages    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;
          realtime               supabase_realtime_admin    false    265                       1259    17067    schema_migrations    TABLE     y   CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
 '   DROP TABLE realtime.schema_migrations;
       realtime         heap r       supabase_admin    false    19            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO supabase_realtime_admin;
          realtime               supabase_admin    false    259                       1259    17089    subscription    TABLE     �  CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);
 "   DROP TABLE realtime.subscription;
       realtime         heap r       supabase_admin    false    1094    378    19    1094            �           0    0    TABLE subscription    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO supabase_realtime_admin;
          realtime               supabase_admin    false    262                       1259    17088    subscription_id_seq    SEQUENCE     �   ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            realtime               supabase_admin    false    19    262            �           0    0    SEQUENCE subscription_id_seq    ACL     �  GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;
          realtime               supabase_admin    false    261            �            1259    16540    buckets    TABLE     k  CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text
);
    DROP TABLE storage.buckets;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    COLUMN buckets.owner    COMMENT     X   COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    240            �           0    0    TABLE buckets    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO postgres;
          storage               supabase_storage_admin    false    240            �            1259    16582 
   migrations    TABLE     �   CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE storage.migrations;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    TABLE migrations    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO postgres;
          storage               supabase_storage_admin    false    242            �            1259    16555    objects    TABLE     �  CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);
    DROP TABLE storage.objects;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    COLUMN objects.owner    COMMENT     X   COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    241            �           0    0    TABLE objects    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO postgres;
          storage               supabase_storage_admin    false    241                       1259    17014    s3_multipart_uploads    TABLE     j  CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb
);
 )   DROP TABLE storage.s3_multipart_uploads;
       storage         heap r       supabase_storage_admin    false    14            �           0    0    TABLE s3_multipart_uploads    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;
          storage               supabase_storage_admin    false    257                       1259    17028    s3_multipart_uploads_parts    TABLE     �  CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE storage.s3_multipart_uploads_parts;
       storage         heap r       supabase_storage_admin    false    14            �           0    0     TABLE s3_multipart_uploads_parts    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;
          storage               supabase_storage_admin    false    258            �           0    0    TABLE secrets    ACL     J   GRANT SELECT,DELETE ON TABLE vault.secrets TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    243            �           0    0    TABLE decrypted_secrets    ACL     T   GRANT SELECT,DELETE ON TABLE vault.decrypted_secrets TO postgres WITH GRANT OPTION;
          vault               supabase_admin    false    244            �           2604    16504    refresh_tokens id    DEFAULT     r   ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);
 >   ALTER TABLE auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
       auth               supabase_auth_admin    false    235    236    236            *          0    16519    audit_log_entries 
   TABLE DATA           [   COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
    auth               supabase_auth_admin    false    238   EE      8          0    16907 
   flow_state 
   TABLE DATA           �   COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
    auth               supabase_auth_admin    false    255   bE      /          0    16704 
   identities 
   TABLE DATA           ~   COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
    auth               supabase_auth_admin    false    246   E      )          0    16512 	   instances 
   TABLE DATA           T   COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    237   �E      3          0    16794    mfa_amr_claims 
   TABLE DATA           e   COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
    auth               supabase_auth_admin    false    250   �E      2          0    16782    mfa_challenges 
   TABLE DATA           |   COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
    auth               supabase_auth_admin    false    249   �E      1          0    16769    mfa_factors 
   TABLE DATA           �   COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid) FROM stdin;
    auth               supabase_auth_admin    false    248   �E      9          0    16957    one_time_tokens 
   TABLE DATA           p   COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    256   F      (          0    16501    refresh_tokens 
   TABLE DATA           |   COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
    auth               supabase_auth_admin    false    236   -F      6          0    16836    saml_providers 
   TABLE DATA           �   COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
    auth               supabase_auth_admin    false    253   JF      7          0    16854    saml_relay_states 
   TABLE DATA           �   COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
    auth               supabase_auth_admin    false    254   gF      +          0    16527    schema_migrations 
   TABLE DATA           2   COPY auth.schema_migrations (version) FROM stdin;
    auth               supabase_auth_admin    false    239   �F      0          0    16734    sessions 
   TABLE DATA           �   COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
    auth               supabase_auth_admin    false    247   �G      5          0    16821    sso_domains 
   TABLE DATA           X   COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    252   �G      4          0    16812    sso_providers 
   TABLE DATA           N   COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    251   H      &          0    16489    users 
   TABLE DATA           O  COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
    auth               supabase_auth_admin    false    234   7H      @          0    17250 
   entrenador 
   TABLE DATA           T   COPY public.entrenador (id_entrenador, id_equipo, especialidad, nombre) FROM stdin;
    public               postgres    false    267   TH      B          0    17258    equipo 
   TABLE DATA           F   COPY public.equipo (fundacion, id_equipo, ciudad, nombre) FROM stdin;
    public               postgres    false    269   K      D          0    17266    estadistica_jugador 
   TABLE DATA           �   COPY public.estadistica_jugador (asistencias, goles, id_estadistica, id_jugador, id_partido, minutos_jugados, tarjetas_amarillas, tarjetas_rojas) FROM stdin;
    public               postgres    false    271   FO      F          0    17272    jugador 
   TABLE DATA           k   COPY public.jugador (dorsal, fecha_nac, id_equipo, id_jugador, nacionalidad, nombre, posicion) FROM stdin;
    public               postgres    false    273   cO      H          0    17280    partido 
   TABLE DATA           u   COPY public.partido (equipo_local, equipo_visita, fecha, goles_local, goles_visita, id_partido, estadio) FROM stdin;
    public               postgres    false    275   �U      <          0    17067    schema_migrations 
   TABLE DATA           C   COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
    realtime               supabase_admin    false    259   jZ      >          0    17089    subscription 
   TABLE DATA           b   COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
    realtime               supabase_admin    false    262   �\      ,          0    16540    buckets 
   TABLE DATA           �   COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
    storage               supabase_storage_admin    false    240   �\      .          0    16582 
   migrations 
   TABLE DATA           B   COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
    storage               supabase_storage_admin    false    242   �\      -          0    16555    objects 
   TABLE DATA           �   COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    241   �a      :          0    17014    s3_multipart_uploads 
   TABLE DATA           �   COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    257   �a      ;          0    17028    s3_multipart_uploads_parts 
   TABLE DATA           �   COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
    storage               supabase_storage_admin    false    258   �a      �          0    16650    secrets 
   TABLE DATA           f   COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
    vault               supabase_admin    false    243   �a      �           0    0    refresh_tokens_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 1, false);
          auth               supabase_auth_admin    false    235            �           0    0    entrenador_id_entrenador_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.entrenador_id_entrenador_seq', 1, false);
          public               postgres    false    266            �           0    0    equipo_id_equipo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.equipo_id_equipo_seq', 5, true);
          public               postgres    false    268            �           0    0 &   estadistica_jugador_id_estadistica_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.estadistica_jugador_id_estadistica_seq', 1, false);
          public               postgres    false    270            �           0    0    jugador_id_jugador_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.jugador_id_jugador_seq', 1, false);
          public               postgres    false    272            �           0    0    partido_id_partido_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.partido_id_partido_seq', 1, false);
          public               postgres    false    274            �           0    0    subscription_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);
          realtime               supabase_admin    false    261            2           2606    16807    mfa_amr_claims amr_id_pk 
   CONSTRAINT     T   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT amr_id_pk;
       auth                 supabase_auth_admin    false    250                       2606    16525 (   audit_log_entries audit_log_entries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.audit_log_entries DROP CONSTRAINT audit_log_entries_pkey;
       auth                 supabase_auth_admin    false    238            H           2606    16913    flow_state flow_state_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.flow_state DROP CONSTRAINT flow_state_pkey;
       auth                 supabase_auth_admin    false    255                       2606    16931    identities identities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_pkey;
       auth                 supabase_auth_admin    false    246                       2606    16941 1   identities identities_provider_id_provider_unique 
   CONSTRAINT     {   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);
 Y   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
       auth                 supabase_auth_admin    false    246    246                       2606    16518    instances instances_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.instances DROP CONSTRAINT instances_pkey;
       auth                 supabase_auth_admin    false    237            4           2606    16800 C   mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);
 k   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey;
       auth                 supabase_auth_admin    false    250    250            0           2606    16788 "   mfa_challenges mfa_challenges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_pkey;
       auth                 supabase_auth_admin    false    249            (           2606    16981 .   mfa_factors mfa_factors_last_challenged_at_key 
   CONSTRAINT     u   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);
 V   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_last_challenged_at_key;
       auth                 supabase_auth_admin    false    248            *           2606    16775    mfa_factors mfa_factors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_pkey;
       auth                 supabase_auth_admin    false    248            L           2606    16966 $   one_time_tokens one_time_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_pkey;
       auth                 supabase_auth_admin    false    256                        2606    16508 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth                 supabase_auth_admin    false    236                       2606    16717 *   refresh_tokens refresh_tokens_token_unique 
   CONSTRAINT     d   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);
 R   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_token_unique;
       auth                 supabase_auth_admin    false    236            =           2606    16847 +   saml_providers saml_providers_entity_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);
 S   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_entity_id_key;
       auth                 supabase_auth_admin    false    253            ?           2606    16845 "   saml_providers saml_providers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_pkey;
       auth                 supabase_auth_admin    false    253            D           2606    16861 (   saml_relay_states saml_relay_states_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_pkey;
       auth                 supabase_auth_admin    false    254                       2606    16531 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY auth.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       auth                 supabase_auth_admin    false    239            #           2606    16738    sessions sessions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_pkey;
       auth                 supabase_auth_admin    false    247            :           2606    16828    sso_domains sso_domains_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_pkey;
       auth                 supabase_auth_admin    false    252            6           2606    16819     sso_providers sso_providers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY auth.sso_providers DROP CONSTRAINT sso_providers_pkey;
       auth                 supabase_auth_admin    false    251            �           2606    16901    users users_phone_key 
   CONSTRAINT     O   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 =   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_phone_key;
       auth                 supabase_auth_admin    false    234            �           2606    16495    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth                 supabase_auth_admin    false    234            ^           2606    17256    entrenador entrenador_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.entrenador
    ADD CONSTRAINT entrenador_pkey PRIMARY KEY (id_entrenador);
 D   ALTER TABLE ONLY public.entrenador DROP CONSTRAINT entrenador_pkey;
       public                 postgres    false    267            `           2606    17264    equipo equipo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id_equipo);
 <   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
       public                 postgres    false    269            b           2606    17270 ,   estadistica_jugador estadistica_jugador_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.estadistica_jugador
    ADD CONSTRAINT estadistica_jugador_pkey PRIMARY KEY (id_estadistica);
 V   ALTER TABLE ONLY public.estadistica_jugador DROP CONSTRAINT estadistica_jugador_pkey;
       public                 postgres    false    271            d           2606    17278    jugador jugador_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_pkey PRIMARY KEY (id_jugador);
 >   ALTER TABLE ONLY public.jugador DROP CONSTRAINT jugador_pkey;
       public                 postgres    false    273            f           2606    17284    partido partido_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_pkey PRIMARY KEY (id_partido);
 >   ALTER TABLE ONLY public.partido DROP CONSTRAINT partido_pkey;
       public                 postgres    false    275            \           2606    17246    messages messages_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);
 B   ALTER TABLE ONLY realtime.messages DROP CONSTRAINT messages_pkey;
       realtime                 supabase_realtime_admin    false    265    265            Y           2606    17097    subscription pk_subscription 
   CONSTRAINT     \   ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);
 H   ALTER TABLE ONLY realtime.subscription DROP CONSTRAINT pk_subscription;
       realtime                 supabase_admin    false    262            V           2606    17071 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY realtime.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       realtime                 supabase_admin    false    259                       2606    16548    buckets buckets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.buckets DROP CONSTRAINT buckets_pkey;
       storage                 supabase_storage_admin    false    240                       2606    16589    migrations migrations_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);
 I   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_name_key;
       storage                 supabase_storage_admin    false    242                       2606    16587    migrations migrations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_pkey;
       storage                 supabase_storage_admin    false    242                       2606    16565    objects objects_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.objects DROP CONSTRAINT objects_pkey;
       storage                 supabase_storage_admin    false    241            T           2606    17037 :   s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_pkey;
       storage                 supabase_storage_admin    false    258            R           2606    17022 .   s3_multipart_uploads s3_multipart_uploads_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_pkey;
       storage                 supabase_storage_admin    false    257            	           1259    16526    audit_logs_instance_id_idx    INDEX     ]   CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);
 ,   DROP INDEX auth.audit_logs_instance_id_idx;
       auth                 supabase_auth_admin    false    238            �           1259    16727    confirmation_token_idx    INDEX     �   CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);
 (   DROP INDEX auth.confirmation_token_idx;
       auth                 supabase_auth_admin    false    234    234            �           1259    16729    email_change_token_current_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);
 0   DROP INDEX auth.email_change_token_current_idx;
       auth                 supabase_auth_admin    false    234    234            �           1259    16730    email_change_token_new_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.email_change_token_new_idx;
       auth                 supabase_auth_admin    false    234    234            &           1259    16809    factor_id_created_at_idx    INDEX     ]   CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);
 *   DROP INDEX auth.factor_id_created_at_idx;
       auth                 supabase_auth_admin    false    248    248            F           1259    16917    flow_state_created_at_idx    INDEX     Y   CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);
 +   DROP INDEX auth.flow_state_created_at_idx;
       auth                 supabase_auth_admin    false    255                       1259    16897    identities_email_idx    INDEX     [   CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);
 &   DROP INDEX auth.identities_email_idx;
       auth                 supabase_auth_admin    false    246            �           0    0    INDEX identities_email_idx    COMMENT     c   COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';
          auth               supabase_auth_admin    false    3611                        1259    16724    identities_user_id_idx    INDEX     N   CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);
 (   DROP INDEX auth.identities_user_id_idx;
       auth                 supabase_auth_admin    false    246            I           1259    16914    idx_auth_code    INDEX     G   CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);
    DROP INDEX auth.idx_auth_code;
       auth                 supabase_auth_admin    false    255            J           1259    16915    idx_user_id_auth_method    INDEX     f   CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);
 )   DROP INDEX auth.idx_user_id_auth_method;
       auth                 supabase_auth_admin    false    255    255            .           1259    16920    mfa_challenge_created_at_idx    INDEX     `   CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);
 .   DROP INDEX auth.mfa_challenge_created_at_idx;
       auth                 supabase_auth_admin    false    249            +           1259    16781 %   mfa_factors_user_friendly_name_unique    INDEX     �   CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);
 7   DROP INDEX auth.mfa_factors_user_friendly_name_unique;
       auth                 supabase_auth_admin    false    248    248    248            ,           1259    16926    mfa_factors_user_id_idx    INDEX     P   CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);
 )   DROP INDEX auth.mfa_factors_user_id_idx;
       auth                 supabase_auth_admin    false    248            M           1259    16973 #   one_time_tokens_relates_to_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);
 5   DROP INDEX auth.one_time_tokens_relates_to_hash_idx;
       auth                 supabase_auth_admin    false    256            N           1259    16972 #   one_time_tokens_token_hash_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);
 5   DROP INDEX auth.one_time_tokens_token_hash_hash_idx;
       auth                 supabase_auth_admin    false    256            O           1259    16974 &   one_time_tokens_user_id_token_type_key    INDEX     v   CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);
 8   DROP INDEX auth.one_time_tokens_user_id_token_type_key;
       auth                 supabase_auth_admin    false    256    256            �           1259    16731    reauthentication_token_idx    INDEX     �   CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.reauthentication_token_idx;
       auth                 supabase_auth_admin    false    234    234            �           1259    16728    recovery_token_idx    INDEX     �   CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);
 $   DROP INDEX auth.recovery_token_idx;
       auth                 supabase_auth_admin    false    234    234            �           1259    16509    refresh_tokens_instance_id_idx    INDEX     ^   CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);
 0   DROP INDEX auth.refresh_tokens_instance_id_idx;
       auth                 supabase_auth_admin    false    236            �           1259    16510 &   refresh_tokens_instance_id_user_id_idx    INDEX     o   CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);
 8   DROP INDEX auth.refresh_tokens_instance_id_user_id_idx;
       auth                 supabase_auth_admin    false    236    236            �           1259    16723    refresh_tokens_parent_idx    INDEX     T   CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);
 +   DROP INDEX auth.refresh_tokens_parent_idx;
       auth                 supabase_auth_admin    false    236                       1259    16811 %   refresh_tokens_session_id_revoked_idx    INDEX     m   CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);
 7   DROP INDEX auth.refresh_tokens_session_id_revoked_idx;
       auth                 supabase_auth_admin    false    236    236                       1259    16916    refresh_tokens_updated_at_idx    INDEX     a   CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);
 /   DROP INDEX auth.refresh_tokens_updated_at_idx;
       auth                 supabase_auth_admin    false    236            @           1259    16853 "   saml_providers_sso_provider_id_idx    INDEX     f   CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);
 4   DROP INDEX auth.saml_providers_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    253            A           1259    16918     saml_relay_states_created_at_idx    INDEX     g   CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);
 2   DROP INDEX auth.saml_relay_states_created_at_idx;
       auth                 supabase_auth_admin    false    254            B           1259    16868    saml_relay_states_for_email_idx    INDEX     `   CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);
 1   DROP INDEX auth.saml_relay_states_for_email_idx;
       auth                 supabase_auth_admin    false    254            E           1259    16867 %   saml_relay_states_sso_provider_id_idx    INDEX     l   CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);
 7   DROP INDEX auth.saml_relay_states_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    254            !           1259    16919    sessions_not_after_idx    INDEX     S   CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);
 (   DROP INDEX auth.sessions_not_after_idx;
       auth                 supabase_auth_admin    false    247            $           1259    16810    sessions_user_id_idx    INDEX     J   CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);
 &   DROP INDEX auth.sessions_user_id_idx;
       auth                 supabase_auth_admin    false    247            8           1259    16835    sso_domains_domain_idx    INDEX     \   CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));
 (   DROP INDEX auth.sso_domains_domain_idx;
       auth                 supabase_auth_admin    false    252    252            ;           1259    16834    sso_domains_sso_provider_id_idx    INDEX     `   CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);
 1   DROP INDEX auth.sso_domains_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    252            7           1259    16820    sso_providers_resource_id_idx    INDEX     j   CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));
 /   DROP INDEX auth.sso_providers_resource_id_idx;
       auth                 supabase_auth_admin    false    251    251            -           1259    16979    unique_phone_factor_per_user    INDEX     c   CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);
 .   DROP INDEX auth.unique_phone_factor_per_user;
       auth                 supabase_auth_admin    false    248    248            %           1259    16808    user_id_created_at_idx    INDEX     X   CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);
 (   DROP INDEX auth.user_id_created_at_idx;
       auth                 supabase_auth_admin    false    247    247            �           1259    16888    users_email_partial_key    INDEX     k   CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);
 )   DROP INDEX auth.users_email_partial_key;
       auth                 supabase_auth_admin    false    234    234            �           0    0    INDEX users_email_partial_key    COMMENT     }   COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';
          auth               supabase_auth_admin    false    3572            �           1259    16725    users_instance_id_email_idx    INDEX     h   CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));
 -   DROP INDEX auth.users_instance_id_email_idx;
       auth                 supabase_auth_admin    false    234    234            �           1259    16499    users_instance_id_idx    INDEX     L   CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);
 '   DROP INDEX auth.users_instance_id_idx;
       auth                 supabase_auth_admin    false    234            �           1259    16943    users_is_anonymous_idx    INDEX     N   CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);
 (   DROP INDEX auth.users_is_anonymous_idx;
       auth                 supabase_auth_admin    false    234            W           1259    17247    ix_realtime_subscription_entity    INDEX     \   CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING btree (entity);
 5   DROP INDEX realtime.ix_realtime_subscription_entity;
       realtime                 supabase_admin    false    262            Z           1259    17150 /   subscription_subscription_id_entity_filters_key    INDEX     �   CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_key ON realtime.subscription USING btree (subscription_id, entity, filters);
 E   DROP INDEX realtime.subscription_subscription_id_entity_filters_key;
       realtime                 supabase_admin    false    262    262    262                       1259    16554    bname    INDEX     A   CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);
    DROP INDEX storage.bname;
       storage                 supabase_storage_admin    false    240                       1259    16576    bucketid_objname    INDEX     W   CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);
 %   DROP INDEX storage.bucketid_objname;
       storage                 supabase_storage_admin    false    241    241            P           1259    17048    idx_multipart_uploads_list    INDEX     r   CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);
 /   DROP INDEX storage.idx_multipart_uploads_list;
       storage                 supabase_storage_admin    false    257    257    257                       1259    17013    idx_objects_bucket_id_name    INDEX     f   CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");
 /   DROP INDEX storage.idx_objects_bucket_id_name;
       storage                 supabase_storage_admin    false    241    241                       1259    16577    name_prefix_search    INDEX     X   CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);
 '   DROP INDEX storage.name_prefix_search;
       storage                 supabase_storage_admin    false    241            }           2620    17102    subscription tr_check_filters    TRIGGER     �   CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();
 8   DROP TRIGGER tr_check_filters ON realtime.subscription;
       realtime               supabase_admin    false    262    383            |           2620    17001 !   objects update_objects_updated_at    TRIGGER     �   CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();
 ;   DROP TRIGGER update_objects_updated_at ON storage.objects;
       storage               supabase_storage_admin    false    369    241            i           2606    16711 "   identities identities_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_user_id_fkey;
       auth               supabase_auth_admin    false    234    246    3579            m           2606    16801 -   mfa_amr_claims mfa_amr_claims_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_fkey;
       auth               supabase_auth_admin    false    3619    247    250            l           2606    16789 1   mfa_challenges mfa_challenges_auth_factor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_auth_factor_id_fkey;
       auth               supabase_auth_admin    false    3626    248    249            k           2606    16776 $   mfa_factors mfa_factors_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_user_id_fkey;
       auth               supabase_auth_admin    false    248    3579    234            r           2606    16967 ,   one_time_tokens one_time_tokens_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_user_id_fkey;
       auth               supabase_auth_admin    false    3579    234    256            g           2606    16744 -   refresh_tokens refresh_tokens_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_session_id_fkey;
       auth               supabase_auth_admin    false    247    236    3619            o           2606    16848 2   saml_providers saml_providers_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    3638    251    253            p           2606    16921 6   saml_relay_states saml_relay_states_flow_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_flow_state_id_fkey;
       auth               supabase_auth_admin    false    254    255    3656            q           2606    16862 8   saml_relay_states saml_relay_states_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    254    251    3638            j           2606    16739    sessions sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_user_id_fkey;
       auth               supabase_auth_admin    false    234    247    3579            n           2606    16829 ,   sso_domains sso_domains_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    3638    251    252            z           2606    17305 #   partido fk1q3nbh68hi4xmjtvh8kp65mw1    FK CONSTRAINT     �   ALTER TABLE ONLY public.partido
    ADD CONSTRAINT fk1q3nbh68hi4xmjtvh8kp65mw1 FOREIGN KEY (equipo_local) REFERENCES public.equipo(id_equipo);
 M   ALTER TABLE ONLY public.partido DROP CONSTRAINT fk1q3nbh68hi4xmjtvh8kp65mw1;
       public               postgres    false    3680    269    275            v           2606    17285 &   entrenador fkg82oo5rvhpeu6edjri36kjgkl    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrenador
    ADD CONSTRAINT fkg82oo5rvhpeu6edjri36kjgkl FOREIGN KEY (id_equipo) REFERENCES public.equipo(id_equipo);
 P   ALTER TABLE ONLY public.entrenador DROP CONSTRAINT fkg82oo5rvhpeu6edjri36kjgkl;
       public               postgres    false    269    267    3680            y           2606    17300 #   jugador fki60lqb7emposedyui33q42u1i    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT fki60lqb7emposedyui33q42u1i FOREIGN KEY (id_equipo) REFERENCES public.equipo(id_equipo);
 M   ALTER TABLE ONLY public.jugador DROP CONSTRAINT fki60lqb7emposedyui33q42u1i;
       public               postgres    false    3680    269    273            w           2606    17295 /   estadistica_jugador fkl5i6klr3g2mmtr1517xxw0xqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadistica_jugador
    ADD CONSTRAINT fkl5i6klr3g2mmtr1517xxw0xqn FOREIGN KEY (id_partido) REFERENCES public.partido(id_partido);
 Y   ALTER TABLE ONLY public.estadistica_jugador DROP CONSTRAINT fkl5i6klr3g2mmtr1517xxw0xqn;
       public               postgres    false    271    3686    275            {           2606    17310 #   partido fkp3l4xr7d0ieyxxk9gp6iyo4sj    FK CONSTRAINT     �   ALTER TABLE ONLY public.partido
    ADD CONSTRAINT fkp3l4xr7d0ieyxxk9gp6iyo4sj FOREIGN KEY (equipo_visita) REFERENCES public.equipo(id_equipo);
 M   ALTER TABLE ONLY public.partido DROP CONSTRAINT fkp3l4xr7d0ieyxxk9gp6iyo4sj;
       public               postgres    false    3680    269    275            x           2606    17290 /   estadistica_jugador fkrpdc86x2wjf8jk1mq4978h1ib    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadistica_jugador
    ADD CONSTRAINT fkrpdc86x2wjf8jk1mq4978h1ib FOREIGN KEY (id_jugador) REFERENCES public.jugador(id_jugador);
 Y   ALTER TABLE ONLY public.estadistica_jugador DROP CONSTRAINT fkrpdc86x2wjf8jk1mq4978h1ib;
       public               postgres    false    271    273    3684            h           2606    16566    objects objects_bucketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 J   ALTER TABLE ONLY storage.objects DROP CONSTRAINT "objects_bucketId_fkey";
       storage               supabase_storage_admin    false    3598    240    241            s           2606    17023 8   s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 c   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_bucket_id_fkey;
       storage               supabase_storage_admin    false    240    3598    257            t           2606    17043 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey;
       storage               supabase_storage_admin    false    240    258    3598            u           2606    17038 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey;
       storage               supabase_storage_admin    false    3666    258    257                       0    16519    audit_log_entries    ROW SECURITY     =   ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    238                        0    16907 
   flow_state    ROW SECURITY     6   ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    255                       0    16704 
   identities    ROW SECURITY     6   ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    246                       0    16512 	   instances    ROW SECURITY     5   ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    237                       0    16794    mfa_amr_claims    ROW SECURITY     :   ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    250                       0    16782    mfa_challenges    ROW SECURITY     :   ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    249                       0    16769    mfa_factors    ROW SECURITY     7   ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    248            !           0    16957    one_time_tokens    ROW SECURITY     ;   ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    256                       0    16501    refresh_tokens    ROW SECURITY     :   ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    236                       0    16836    saml_providers    ROW SECURITY     :   ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    253                       0    16854    saml_relay_states    ROW SECURITY     =   ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    254                       0    16527    schema_migrations    ROW SECURITY     =   ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    239                       0    16734    sessions    ROW SECURITY     4   ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    247                       0    16821    sso_domains    ROW SECURITY     7   ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    252                       0    16812    sso_providers    ROW SECURITY     9   ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    251                       0    16489    users    ROW SECURITY     1   ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    234            $           0    17232    messages    ROW SECURITY     8   ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;          realtime               supabase_realtime_admin    false    265                       0    16540    buckets    ROW SECURITY     6   ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    240                       0    16582 
   migrations    ROW SECURITY     9   ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    242                       0    16555    objects    ROW SECURITY     6   ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    241            "           0    17014    s3_multipart_uploads    ROW SECURITY     C   ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    257            #           0    17028    s3_multipart_uploads_parts    ROW SECURITY     I   ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    258            %           6104    16420    supabase_realtime    PUBLICATION     Z   CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');
 $   DROP PUBLICATION supabase_realtime;
                     postgres    false            	           826    16597     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;
          auth               supabase_auth_admin    false    15            	           826    16598     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;
          auth               supabase_auth_admin    false    15            	           826    16596    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     :  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          auth               supabase_auth_admin    false    15            %	           826    16671     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    13            $	           826    16670     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    13            #	           826    16669    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    13            (	           826    16631     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;
          graphql               supabase_admin    false    18            '	           826    16630     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;
          graphql               supabase_admin    false    18            &	           826    16629    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     e  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql               supabase_admin    false    18             	           826    16611     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;
          graphql_public               supabase_admin    false    17            "	           826    16610     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;
          graphql_public               supabase_admin    false    17            !	           826    16609    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql_public               supabase_admin    false    17            	           826    16484     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               postgres    false            	           826    16485     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               supabase_admin    false            	           826    16483     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               postgres    false            	           826    16487     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               supabase_admin    false            	           826    16482    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     I  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               postgres    false            	           826    16486    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     a  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               supabase_admin    false            	           826    16601     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;
          realtime               supabase_admin    false    19            	           826    16602     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;
          realtime               supabase_admin    false    19            	           826    16600    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     8  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          realtime               supabase_admin    false    19            	           826    16539     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;
          storage               postgres    false    14            	           826    16538     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;
          storage               postgres    false    14            	           826    16537    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     M  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          storage               postgres    false    14            �           3466    16615    issue_graphql_placeholder    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();
 .   DROP EVENT TRIGGER issue_graphql_placeholder;
                     supabase_admin    false    355            �           3466    16684    issue_pg_cron_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();
 )   DROP EVENT TRIGGER issue_pg_cron_access;
                     supabase_admin    false    348            �           3466    16613    issue_pg_graphql_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();
 ,   DROP EVENT TRIGGER issue_pg_graphql_access;
                     supabase_admin    false    356            �           3466    16594    issue_pg_net_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();
 (   DROP EVENT TRIGGER issue_pg_net_access;
                     postgres    false    354            �           3466    16616    pgrst_ddl_watch    EVENT TRIGGER     j   CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();
 $   DROP EVENT TRIGGER pgrst_ddl_watch;
                     supabase_admin    false    353            �           3466    16617    pgrst_drop_watch    EVENT TRIGGER     e   CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();
 %   DROP EVENT TRIGGER pgrst_drop_watch;
                     supabase_admin    false    311            *      x������ � �      8      x������ � �      /      x������ � �      )      x������ � �      3      x������ � �      2      x������ � �      1      x������ � �      9      x������ � �      (      x������ � �      6      x������ � �      7      x������ � �      +   L  x�U�ɕ1�{�G�%��?�)Z��}��,�F�����7=��`N�����ML"Zb��)�e�_S<��䋮[N��i�v�Nv8�M�Dn����~�X�[ܡ�F�Ɠ�H���S� �v^Zp�_�W��͆��/*�Z�;rUk��d�9^�æ��#��`���i;/��p�����[�S��5�C�qf�D��͹���Վ�TsF},:�./������7�p�9�U�"QSP�C홆M�D�&hZ��w7�������Î��w^�AŏZu���"�sS��ܻZ��TS|Q��{_;�EЪ<8{>�4�Cծ����������      0      x������ � �      5      x������ � �      4      x������ � �      &      x������ � �      @   �  x��V;nXG�9��	��%��2E���`+��@2$]˧���g5.�b���K����B�=��?>�?�_�﯏��_^�`,��~}������?��|{�����!��@i�/Ql2��0J;'08�T���oO?��=����@��C	�h�9'_`&�Jf/
o�](��������J�)�&x���6��i�T���$�+�$]y��<c"Ѕ��M�U$\$�ka���9*X��)�bmʆk��k*ް�lz��XA��XI{*QPs�D.�T�0�D�^J�B�MT �G�? ;�-b�S��^8'��QL��J�4�RZ�n
�ZڞT��r����BӞ�Q���+I�%�.��vCr��[�աAk��4��.���=>ξP^2�<c/�F�{a�=��lA���n��ٳ���mǰ�v�s%�s�󿁝�&��]T����]�[���ȰE6]e&�1�)iӍ)��|��	n��"3��M�a��Ik�$�$j��&�P��I�({m��_�q)��$&W����nԭ<�������{+�xqt<������օ�{^|�$5��R,T/�h>��<�J(�@G���pNw*�M��U3n[9GqϦs0��'5Ѽ�E�&Ȩ��8r!��K"(�ݍtR��]��F�qG�4�����vCm8����l]y��E��u_� �f�,z      B   0  x�M�;��6��wހ2H�jOv��3n\9)�� u�פ(�#�9�v�4�������o4���ϯ�ϩ�����0?���P���)c=��^9l��_�c?���_���gXj�u]LC�a}�5�}�֦{������i�����տy�x���:�塯E#���L��Z���p��KG��䃀G�#�&f�? ���p�A $R!F�\�F�s�T�D�$H�����%�JS��"�	�O�Z��(���ְ��`�2L�L]J}��2L�Lm~�H��J��ր)ÔW�ȃ��1�S�u���Uga�2L�bS�n.�a�0e=��}Z�2L�L��G΀)Ô+H�*9���S.S������q�Jl�X0]0]e*�g����Ӝ;Yrƛ�o�W�FǕ\0]0]��3g�t�t�i�)E���VE�5`�`�:N���U,�.�.�wZ%+=`�`�:��*G^����.S�X�{�0�0�'��~̱a�a�+Nky516L7L��V1������}gT�%q�t�tˉ�J��a�a��ι����0�0��:-L7Lw��m�c�t�tw�v���
Le�G�%�"0�J���8�!0�
�bS���S�w�}���T:�� �N߮��%��S��(v:�/0�J����@C`*0�_�	L���~�e
S��v=�M�P�*L��V�ӡ0U�*��Й�0U�jw���%g�Ta��裳҇�Ta�ݣ�n.뺾�����|�Aa�0U;5(��}�Ta�~?W���0U�j�}��������2����L�M�D���`j|��y���`j����`j0�}�定l05��1�d05�Z�S9�7{�P�#�N��5�L����M�Skӧ�;L�>O��	�S�Tu�a�0u>9Ǖ�S����/�S��w�w�����a�r򥫶��a��w��0u���2���i��M���*��S��sQw0��<b�"(`0���}�6`0�ߖ�_�Ӏi��o�zv�4`�Ά:���i�4���%`0E��0�����m0�F���������qf��������꟟��|>�	�<�      D      x������ � �      F     x�mXM��'_3��^���R���Q3�"�I����)z����<iV������y-��L����TB
�������O�������)�������o_��$����G|N+>K��o�����r����iLFti+��Cӯ�#�G,�p(#p��җ������#A@uD�
�+8%�t�Ok9�
�h\OU��Өe�ڼ��ٶ�#k��Z�XC�@3>�x
?�}���׿����������>�a�ǋ��rI���C��q���ҵ�1P�X�[�������[�e^�VR$�\���59�0.)M�L���U�ƥ��5>RhI)7�(_����I�� W�lr�a�Y*/,Kf�k��V�
�B*����յ�#H�C�E�ςzK��.DV�\��m���k3� �<X��m����;��$������Z��H��"/;���m�}ɗ,��!d�ET�L�Y�qQ/��9�K�j ��7�em^���I/%�	y��Y!kϗJ8�W�N��f�w9���	�7��o��H6M�Ekm�P�T�v*j�����׬��(�� �6�1�oJ"YO�r�T,ݘ�n�5^	��j<��Y�f��Df�Ym�vح����	U�Pn��&쑃�qU|ˡ�K���ږ����=��~#��X���n������4k�>�wr8}����Y��[�cW�Yf��\CY>�u�蕲�U�R��+K�w9}\��nE�J%�,wI�ڱ��f1���x�I9�^cg�08)�C��ggp)�QV�_
he��Y;*��{�B��e2`+.a��dP�V�-������Tk�˒�O�Dzցe���|�*/�J�֥vgK�G�ږk�ɭ���E�����ƚ���ƨ�=�.�;�9CW�:k��xg��n���YU�����׬^��{�	�j��4�샃�)�����v�W�T��cU�uYw��y�?R���n�7�Tń�����ё��[�"����)�{l�V��'hb���;��yu�l���Sx���mR�zˎ���O�{>�\B�ݨ���o�Q.�,�tR��?ě������z�\&�.-�!�8�W��dL�����ݗ�V�DRc䋍x�~Z����-��.Y;����d<몣�N��I��(��&����v�!�!����9�T>���>FUY.k>ܕ:PAu0q�6q��W;5o=��Rf�N�[�ͻ}.}����J�6��^l�pg�ow���趣�$��ҨĨ�{F�}NC�U�HP�x5
:��6(c�B�E�<��ѧ1��!ɞ��<��l�����6*7uF �<�� ��H�$-�o�lc޴
��YG��A����c�NmEe|��a�<��4�b��9�.y���3������{|i�p���Bi�xTȇy����q��y�a��`v"�9N7��a�<�`POh�D/Z�	���;v6��5�9����ZW���A�\�`�8��j�N�Ɲ���giUA���l��?�$�Ny�|+שs^/2�WR����w}m�]��M��Eu���m�y�=J�q��o���������@�N      H   �  x�M�A�]9E��*��l�Y@vѓ�zңt��p��y�HU���\�:n<��O#�R������������>��C�c����+�ϧYiEJ���J�����7�����`Tj���]���,�A��T�7�<1�^�Z��1p�~>+S�~<�Ӻ��>����c���Ѯ��.E��IRKL��Q�n,�� �k�(gQ:���)`R�$����T��PJ��@=���͟�G�(�:�֋��'�M��L�Щk�(ˀ��J�hg?�x]�N(�ҬR��|<��
%XZU�Jp#�K���-�e���<q��V������D�T�ʜ�G<J�Q�Nw����h�$�r�S�X�l�Q��Q��$'84#'[����E�-+ٲ��"�d˳N����M+Q!N���"��c���9�U�m}L��>�	����mBC�%�NU�	c�𞏞t;�d��Q�n�%��Y�RТ�JO�}ԡ7i�[[N�n����1�Fz��Z�vK�-!�d۽o�<bV��$�vg;���G��p�l��!�d��FC�d;Z�Ʀ���k����;��:�d;\c��P���v$�ѫ��M͍f�U�n@���pM`�������$;R|:�J����b�[��?�h�z7
	#ۆ���5�&�@PdI��*���怀D�X�;�܂�$X�%㝱�87I��С4o��vT��s��;��;���>�MK� DA���A��P4�$[���^��A��y�&�s�)�]I��0�$�#	�E��z�*�p�v���uM��,@�Ф�N�]�.oӤ�K��n�X�4�jH������|h�U	�y�[���υ�'��*
7D��Y{?�\h��դ�����ҍ� s�t������+3��ٶWMy�*�x^:� �n�km�h���Ϥ;�T���&t=��;�8_Gc�i,�k��t5�a�<��;5��T�Cw~N���w/HCH�L�s�˙n'ܤ;��\���1�+�Vq�}����^�]TG�Έ�Hz%��x�ߓq�	��J��#��ґD�+��x�/Kh�J�K�BW��b]�v��03�ʾIV�][��:7����v]*[]0�+�._g�-�9�dk~*L��^[�-�Uh�{B5���dk�W�;�;��%Z۲�MqJ` ��o�<,��%[��K���N!��pM1���.D5�Z�5�{D,�6.)�lmU��{�wG���`hmΑ�cι���V��Yk��z�      <     x�u��m1��Qi���<���_G�Y{>�B�>��9�&��4��:~�X~H|X��~�_�/�I��$$�H�4Fڃh�2>����I\�=���AH>H�9!w,f�,��$�&!]Tȡ�6��$�%$��!�Q<m�U�
`�[QF�J�`��J/9Q�M�
����&��%F5�M�����i��'�X��Q��V,�Lw?
 �L�m���E�������N4!�
`�JNd�$(!��Y_�$�=G���4H��2�0���D�9Qs���dǂ�Ǐd~'$/��		7ޱzw��`��s�
��bl��jGӑJ�n��~GC���6rTH���27A4*I�M|� ���<�5!��µ�I�m��*h�FH��{�<��2�I���3�ջ H]r��ԉ&����c�u���X�us��+�QJd�Ȳ��@���O�Ye\2�dl4�l�-����#)����MB�ҍ����ơ�F����j��"��N�.ћ�u(J����������      >      x������ � �      ,      x������ � �      .   �  x�uVI��8<K���� ���� 	�4�-,��y����bF��UN��\�����t�7Y��y�V)G�R+>�R�Z�b�M�܈��AJKٷ>Xc�dx��ŏ�}4��6?�0��u��/�ߤ@�z1���H�ߝO=�}�1�Æl�����tZ껞d�5�z3���b�xS�ۃ�����l�^���膫���峞�z9�O���B��%Q,67_��H�)�M�D�va��@y�AZ����q���Kp]���� 2��|���F�/�i8�@4��2��S���|�YM"!�<تd3��I� �'~���1�]� ���t��N�y:��7��@���C ��5j"_�iƶ
��!ï�d�a����Ŵ^�r��u]�`� �T��S뚚�"�
E�}�䒱cz _��8�?�{�TqY[�=C*�P+&����)�v��c��mZTn���#���V��P�s�v��TTC�~9'�?a�.��R��Ck�H3�K�h�xc���)P�ڃ��ń�ߨYo�ᠷ����~m���?ڛ�?����
1t�(��%	�� �j�[��3��vf���۠�_'�2��骏wM�(�!i�J��<���w�$�t�Z������H�1�y�����8�f��V�8�gr�ౖA�\��SH\,4�ocO�2$�E��}�u��6������2ǡg�0Q7�;�9Zx.27iv?�<e�@���U�0ڢ�u���A�odX�C�.��;k�-+���bκ/2�Mi���Eo�C��܅����9V��b!�B�Ry�1���n��t�z����·��Y��j)6���9IK��~�R#(C�mVy�����f~{�����)̷�כV����a�K����TLR�-q��mu�:N����?*l�)r\�]��u�"ǻ�8�2�m0Ag��,�՘����(.	Pm7� >Z�8Z3�e��u^�1�S<����ֈ'x*�l�,�֘*��C���_H)���hiX�t��@H���"m�[Íţ��F��Vg�θ��~������Ş�|�n��d}j�嘷��G��YSRQL.q�#4�sa�n�\W0�b�o�5����c$b�f�Eg�:9[��w�7���g�FF�!�c�Yc(P���MR���7�E����\�?�礫 Neh9r��ꐤ�P�Q��UL����6�l�O�q��W��      -      x������ � �      :      x������ � �      ;      x������ � �      �      x������ � �     
/* contrib/hello_world/hello_world--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION hello_world" to load this file. \quit

CREATE FUNCTION hello_world()
    RETURNS text
    AS 'MODULE_PATHNAME'
    LANGUAGE C;

CREATE FUNCTION greet(text)
    RETURNS text
    AS 'MODULE_PATHNAME'
    LANGUAGE C;

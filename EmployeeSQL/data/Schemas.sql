
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;




CREATE TABLE departments (
  dept_no character varying(100) NOT NULL,
  dept_name character varying(100) NOT NULL
);


CREATE TABLE dept_emp (
  emp_no character varying(100) NOT NULL,
  dept_no character varying(100) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no character varying(100) NOT NULL,
  emp_no character varying(100) NOT NULL
);

CREATE TABLE employees (
  emp_no character varying(100) NOT NULL,
  emp_title_id character varying(100) NOT NULL,
  birth_date character varying(100) NOT NULL,
  first_name character varying(100) NOT NULL,
  last_name character varying(100) NOT NULL,
  sex character varying(100) NOT NULL,
  hire_date character varying(100) NOT NULL
);

CREATE TABLE salaries (
  emp_no character varying(100) NOT NULL,
  salary character varying(100) NOT NULL
);

CREATE TABLE titles (
  title_id character varying(100) NOT NULL,
  title character varying(100) NOT NULL
);
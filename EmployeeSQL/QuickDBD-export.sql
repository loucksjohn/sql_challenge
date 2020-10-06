-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "titles" (
    "title_id" varchar(5)    NOT NULL,
    "title" char(30)   NOT NULL,
	 Primary Key ("title_id")
	);


CREATE TABLE "departments" (
    "dept_no" varchar(5)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title" varchar(7)  NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" char(30)   NOT NULL,
    "last_name" char(30)   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     ),
	Foreign Key ("emp_title") references "titles" ("title_id")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(5)   NOT NULL,
	FOREIGN KEY("emp_no")
	REFERENCES "employees" ("emp_no"),
	 FOREIGN KEY("dept_no")
	REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(5)   NOT NULL,
    "emp_no" int   NOT NULL,
	FOREIGN KEY("dept_no")
	REFERENCES "departments" ("dept_no"),
	FOREIGN KEY("emp_no")
	REFERENCES "employees" ("emp_no")
);



CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salarty" int   NOT NULL,
	FOREIGN KEY("emp_no")
	REFERENCES "employees" ("emp_no")
);











DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;


CREATE TABLE department (
    
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    d_name VARCHAR(30)

);

CREATE TABLE employee (
    
    id INTEGEREGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER UNSIGNED NOT NULL,
    INDEX role_ind (role_id),
    CONSTRAINTEGER fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    manager_id INTEGER UNSIGNED,
    INDEX man_ind (manager_id),
    CONSTRAINTEGER fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL

);

CREATE TABLE role (

    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL UNSIGNED NOT NULL,
    department_id INTEGER UNSIGNED NOT NULL,
    INDEX dep_ind (department_id),
    CONSTRAINTEGER fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE

);
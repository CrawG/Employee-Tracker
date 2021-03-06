use employee_tracker;

INSERT INTO department
    (d_name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Michael', 'Scott', 1, NULL),
    ('Jim', 'Halpert', 2, 1),
    ('Dwight', 'Schrute', 3, NULL),
    ('Andrew', 'Bernard', 4, 3),
    ('Pam', 'Beesly', 5, NULL),
    ('Kevin', 'Malone', 6, 5),
    ('Stanley', 'Hudson', 7, NULL),
    ('Oscar', 'Martinez', 8, 7);
CREATE TABLE IF NOT EXISTS student
(
    student_id SERIAL PRIMARY KEY,
    department_id INT NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS department
(
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS class
(
    class_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    time TIME NOT NULL,
    room INT NOT NULL,
    building_id INT NOT NULL,
    FOREIGN KEY (building_id) REFERENCES building (building_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS presence
(
    presence_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES class (class_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS building
(
    building_id SERIAL PRIMARY KEY,
    number INT NOT NULL,
    street VARCHAR(255) NOT NULL
);
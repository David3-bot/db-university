-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT * FROM `degrees` INNER JOIN `students` ON degrees.id = students.degree_id WHERE 1 AND degrees.name LIKE '%economia%';

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT * FROM `degrees` INNER JOIN departments ON degrees.department_id = departments.id WHERE degrees.level LIKE "magistrale" AND departments.name LIKE "%Neuroscienze%";

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT teacher_id AS Id_insegnante, course_id AS Id_corso, NAME AS nome_corso FROM `courses` INNER JOIN `course_teacher` ON courses.id = course_teacher.course_id WHERE course_teacher.teacher_id = 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.name, students.surname, students.degree_id, degrees.department_id FROM `students` INNER JOIN `degrees` ON students.degree_id = degrees.id ORDER BY surname, NAME ASC;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT courses.name, courses.degree_id, teachers.name, teachers.surname
FROM `courses`
INNER JOIN `course_teacher` ON courses.id = course_teacher.course_id
INNER JOIN `teachers` ON course_teacher.teacher_id = teachers.id

order by teachers.surname, teachers.name ASC;

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT distinct teachers.name, teachers.surname, departments.name
FROM courses
INNER JOIN course_teacher ON COURSES.ID = course_teacher.course_id
INNER JOIN degrees ON degrees.id = courses.degree_id
INNER JOIN departments ON departments.id = degrees.department_id
INNER JOIN teachers ON teachers.id = course_teacher.teacher_id

WHERE departments.name LIKE '%Matematica%'

order by surname, teachers.name asc;

-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esami
-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT * FROM `degrees` INNER JOIN `students` ON degrees.id = students.degree_id WHERE 1 AND degrees.name LIKE '%economia%';

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT * FROM `degrees` INNER JOIN departments ON degrees.department_id = departments.id WHERE degrees.level LIKE "magistrale" AND departments.name LIKE "%Neuroscienze%";

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)


-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome


-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esami
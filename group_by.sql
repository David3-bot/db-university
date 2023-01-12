-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`), COUNT(`enrolment_date`) FROM students GROUP BY YEAR(`enrolment_date`);

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) `office_address`, `office_address` FROM `teachers` GROUP BY `office_address`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) FROM `exam_student` GROUP BY `exam_id`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`department_id`) FROM `degrees` GROUP BY `department_id`;

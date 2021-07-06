/* GROUP BY: */

/* Contare quanti iscritti ci sono stati ogni anno */
SELECT COUNT(*) AS `numero_studenti`, YEAR(`enrolment_date`) as `anno_iscrizione`
FROM `students`
GROUP BY `anno_iscrizione`;

/* Contare gli insegnanti che hanno l'ufficio nello stesso edificio */
SELECT COUNT(*) AS `docenti`, `office_address` as `edificio` 
FROM `students`
GROUP BY `edificio`;

/* Calcolare la media dei voti di ogni appello d'esame */
SELECT `exam_id`, AVG(`vote`) FROM `exam_student` GROUP BY `exam_id`;

/* Contare quanti corsi di laurea ci sono per ogni dipartimento */


/* JOINS: */

/* Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT degrees.id, students.degree_id, students.name, students.id
FROM degrees
INNER JOIN students ON degrees.id = students.degree_id
WHERE degrees.name = 'Corso di Laurea in Economia';

/* Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze */
SELECT departments.id, departments.name, degrees.department_id
FROM degrees
LEFT JOIN departments ON degrees.department_id = departments.id
WHERE departments.name = 'Dipartimento di Neuroscienze';

/* Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */
SELECT *
FROM courses
INNER JOIN course_teacher
ON courses.id = course_teacher.course_id
WHERE course_teacher.teacher_id = 44;

/* Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome */

/* Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */


/* Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) */


/* BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami */
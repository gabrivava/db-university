/* selezionare tutti gli studenti nati nel 1990 (160) */
SELECT * FROM `students` WHERE year(`date_of_birth`) = '1990';

/* selezionare tutti i corsi che valgono di più di 10 crediti (479) */
SELECT * FROM `courses` WHERE `cfu`> 10;

/* selezionare tutti gli studenti che hanno più di 30 anni */  
SELECT * FROM `students` WHERE 2021 - year(`date_of_birth`) > 30;

/* selezionare tutti i corsi del primo trimestre del primo anno di un qualsiasi corso di laurea (286) */
SELECT * FROM `courses` WHERE `period` = 'I semestre' AND `year` = 1;

/* selezionare tutti gli apelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 */
SELECT * FROM `exams` WHERE `date` = '2020-06-20' AND `hour` > '14:00:00';

/* selezione tutti i corsi di laurea magistrale */
SELECT * FROM `degrees` WHERE `level` = 'magistrale';

/* da quanti dipartimenti è composta l'università? */
SELECT COUNT(`name`) FROM `departments`;

/* Quanti sono gli insegnanti che non hanno un numero di telefono? */
SELECT * FROM `teachers` WHERE `phone` IS NULL;

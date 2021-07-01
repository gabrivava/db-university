<!--  Modellizzare la struttura di una tabella per memorizzare tutti i dati riguardanti una università
- sono presenti diversi dipartimenti, ciascuno con i propri corsi di laurea;
- ogni corso di laurea è formato da diversi corsi;
- ogni corso può essere tenuto da diversi insegnanti e prevede più appelli d'esame;
- ogni studente è iscritto ad un corso di laurea;
- per ogni appello d'esame a cui lo studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente --> 

# università
- id                 PRIMARY KEY AUTOINCREMENT UNIQUE INDEX TINYINT   NOTNULL 
- nome               VARCHAR(20)    INDEX   NOTNULL       
- città              VARCHART(30)   NOTNULL
- ? dipartimenti

## dipartimento
- id                 PRIMARY KEY AUTOINCREMENT UNIQUE SMALLINT  INDEX  NOTNULL
- nome               VARCHAR(40)  NOTNULL INDEX
- telefono           INT NOTNULL
- ? corsi di laurea

## corsi di laurea
- id                 PRIMARY KEY AUTOINCREMENT UNIQUE SMALLINT  INDEX  NOTNULL
- nome               VARCHAR(30) NOTNULL INDEX
- dipartimento_id    SMALLINT INDEX NOTNULL
- ? corsi

## corso
- id                PRIMARY KEY SMALLINT INDEX AUTOINCREMENT
- materia           VARCHAR(30) NOTNULL 
- durata            VARCHAR(50) NULL
- numero appelli    TINYINT NOTNULL
- ? professori
- ? appelli d'esame

## professore
- id              PRIMARY KEY TINYINT NOTNULL AUTOINCREMENT INDEX
- nome            VARCHAR(30) NOTNULL      
- cognome         VARCHAR(30) NOTNULL INDEX
- materia         VARCHAR(20) NOTNULL

## studente
- id             PRIMARY KEY TINYINT NOTNULL AUTOINCREMENT INDEX
- nome           VARCHAR(30) NOTNULL      
- cognome        VARCHAR(30) NOTNULL INDEX
- email          VARCHAR(40) NOTNULL 
- ? voti

## appello d'esame
- id             PRIMARY KEY SMALLINT NOTNULL AUTOINCREMENT INDEX
- data           DATETIME NOTNULL
- materia        VARCHAR(20) NOTNULL INDEX
- tipo           VARCHAR(10) NULL 
- voto           TINYINT NOTNULL
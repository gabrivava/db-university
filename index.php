<?php

# Definire le costanti per la connessione
define("DB_SERVENAME", "localhost");
define("DB_USERNAME", "root");
define("DB_PASSWORD", "root");
define("DB_NAME", "university");
define("DB_PORT", "3306");  // opzionale numero della porta, di base ne è settato uno da mysql


# Stabilire connessione con il database
$connection = new mysqli(DB_SERVENAME, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
// var_dump($connection);


# Verificare la connessione
if ($connection && $connection->connect_error) {
    echo "connessione fallita :(" . $connection->connect_error;
    die();
}
echo "Connessione fatta";


# Eseguiamo una query se la connessione è stata stabilita
$facolta_sql = "SELECT * FROM `degrees`";
$facolta = $connection->query($facolta_sql);
// var_dump($facolta);


# Eseguo un ciclo while per stampare tutte le righe
if ($facolta && $facolta->num_rows > 0) {

    // var_dump($facolta->fetch_assoc());
    while ($facolta_singola = $facolta->fetch_array()) {
        ?>
            <h1><?=$facolta_singola['name']?></h1>
            <h2>Livello: <?=$facolta_singola['level']?></h2>
            <h3>Indirizzo: <?=$facolta_singola['address']?></h3>
            <p>Email: <?=$facolta_singola['email']?></p>
            <p>Sito: <?=$facolta_singola['website']?></p>
        <?php
    }
} else if ($results) {
    echo 'Nessun Risultato';
} else {
    echo 'Errore nella query';
}

# Chiudiamo la connessione
$connection->close();

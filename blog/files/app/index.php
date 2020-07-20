<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'db-config.php';

function getArticles(PDO $PDO)
{
  $sql = "SELECT * FROM articles ORDER BY id DESC";
  $result = $PDO->query($sql);

  $articles = $result->fetchAll(PDO::FETCH_ASSOC);

  $result->closeCursor();

  return $articles;
}
?>

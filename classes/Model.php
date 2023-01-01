<?php
require_once 'Database.php';


class Model
{

  function save()
  {
    $table = get_class($this)::$db_table;
    $cols = [];
    $values = [];

    foreach ($this as $key => $value) {
      $cols[] = $key;
      $values[] = $value;
    }

    $data = "INSERT INTO $table (" . implode(',', $cols) . ") VALUES('" . implode("','", $values) . "')";
    Database::Set($data);
  }
  function select()
  {
    $table = get_class($this)::$db_table;
    $data = "SELECT * from $table";
    Database::Get($data);
  }
}

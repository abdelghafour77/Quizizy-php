<?php
class Database
{
  static private $host = "localhost";
  static private $user = "root";
  static private $pwd = "";
  static private $db = "quizizy";

  public static function connect()
  {
    $dbh = new PDO("mysql:host=" . self::$host . ";dbname=" . self::$db, self::$user, self::$pwd);
    $dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    if ($dbh) {
      return $dbh;
    } else {
      die("Error in connection with database");
    }
  }
  public static function Set($sql)
  {
    $stmt = self::connect();
    $query = $stmt->query($sql);
    return $query;
  }
  public static function Get($sql)
  {
    $stmt = self::connect()->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll();
  }
}

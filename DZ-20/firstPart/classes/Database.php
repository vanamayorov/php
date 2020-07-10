<?php



class Database
{
    private static $host;
    private static $username;
    private static $db_name;
    private static $pass;
    private static $charset;


    public function __construct(\stdClass $config)
    {
        static::$host = $config->host;
        static::$username = $config->username;
        static::$db_name = $config->db_name;
        static::$pass = $config->pass;
        static::$charset = $config->charset;
    }

    private static function connect()
    {
        try {
            $dsn = 'mysql:host=' . self::$host . ';dbname=' . self::$db_name . ';charset=' . self::$charset;
            $pdo = new \PDO($dsn, self::$username, self::$pass);
            $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            return $pdo;
            $pdo = null;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
    public static function getAllSellers()
    {
        $stmt = self::connect()->prepare("SELECT * FROM `sellers` ORDER BY `seller_id` ASC");
        $stmt->execute();
        $sellers = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $sellers;
    }

    public static function getSomeSellers($sql)
    {
        $stmt = self::connect()->prepare($sql);
        $stmt->execute();
        $sellers = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $sellers;
    }
}

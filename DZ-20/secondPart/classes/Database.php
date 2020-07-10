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
        self::$host = $config->host;
        self::$username = $config->username;
        self::$db_name = $config->db_name;
        self::$pass = $config->pass;
        self::$charset = $config->charset;
    }

    public static function connect()
    {
        try {
            $dsn = 'mysql:host=' . self::$host . ';dbname=' . self::$db_name . ';charset=' . self::$charset;
            $pdo = new PDO($dsn, self::$username, self::$pass);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
            $pdo = null;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    public static function getAllCustomers()
    {
        $stmt = self::connect()->prepare("SELECT
        customers.customer_id, customers.customer_name,
        customers.customer_city, customers.rating,
        sellers.seller_id, sellers.seller_name
        FROM customers
        JOIN sellers ON customers.seller_id=sellers.seller_id
        ORDER BY sellers.seller_id ASC, customers.customer_id;");
        $stmt->execute();
        $customers = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $customers;
    }

    public static function getSomeCustomers($sql)
    {
        $stmt = self::connect()->prepare($sql);
        $stmt->execute();
        $customers = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $customers;
    }
}

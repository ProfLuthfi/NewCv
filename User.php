<?php
include_once 'Database.php';

class human
{
    // Connection
    private $conn;
    // Table
    private $db_table = "user";
    // Columns
    public $user_id;
    public $fullname;
    public $email;
    public $telp;
    public $job;

    // Db connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getUser()
    {
        $sqlQuery = "SELECT * FROM " . $this->db_table . "";
        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
        return $stmt;
    }
    public function getUserId($user_id)
    {
        $sqlQuery = "SELECT * FROM " . $this->db_table . " WHERE user_id =" . $user_id;
        $stmtuser = $this->conn->prepare($sqlQuery);
        $stmtuser->execute();
        return $stmtuser;
    }
}

$database = new Database();
$db = $database->getConnection();
// $query = new human($db);
// $result = $query->getUser()->fetchAll(PDO::FETCH_ASSOC);
// var_dump($result);

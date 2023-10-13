<?php
include_once 'Database.php';

class school
{
    // Connection
    private $conn;
    // Table
    private $db_table = "sekolah";
    // Columns
    public $user_id;
    public $sekolah_id;
    public $sekolah;
    public $tahun;
    public $jurusan;

    // Db connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getSchool()
    {
        $sqlQuery = "SELECT * FROM " . $this->db_table . "";
        $stmtshcool1 = $this->conn->prepare($sqlQuery);
        $stmtshcool1->execute();
        return $stmtshcool1;
    }
    public function getSchoolId($user_id)
    {
        $sqlQuery = "SELECT * FROM " . $this->db_table . " WHERE user_id =" . $user_id;
        $stmtshcool = $this->conn->prepare($sqlQuery);
        $stmtshcool->execute();
        return $stmtshcool;
    }
}

$database = new Database();
$db = $database->getConnection();
// $query = new schcool($db);
// $result = $query->getSchool()->fetchAll(PDO::FETCH_ASSOC);
// var_dump($result);

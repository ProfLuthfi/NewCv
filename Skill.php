<?php
include_once 'Database.php';

class skill
{
    // Connection
    private $conn;
    // Table
    private $db_table = "skill";
    // Columns
    public $user_id;
    public $skill_id;
    public $skill;
    public $lpk;
    public $nilai;

    // Db connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getSkill()
    {
        $sqlQuery = "SELECT * FROM " . $this->db_table . "";
        $stmtskill1 = $this->conn->prepare($sqlQuery);
        $stmtskill1->execute();
        return $stmtskill1;
    }
    public function getSkillId($user_id)
    {
        $sqlQuery = "SELECT * FROM " . $this->db_table . " WHERE user_id =" . $user_id;
        $stmtskill = $this->conn->prepare($sqlQuery);
        $stmtskill->execute();
        return $stmtskill;
    }
}

$database = new Database();
$db = $database->getConnection();
// $query = new schcool($db);
// $result = $query->getSchool()->fetchAll(PDO::FETCH_ASSOC);
// var_dump($result);

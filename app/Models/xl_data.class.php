<?php
class xl_data extends DatabaseConnection
{
    function readItem($sql)
    {
        try {
            $result = parent::query($sql);
            return $result;
        } catch (PDOException $e) {
            // Handle the exception as needed
            echo "Error: " . $e->getMessage();
            return false;
        }
    }

    function executeItem($sql)
    {
        try {
            parent::execute($sql);
        } catch (PDOException $e) {
            // Handle the exception as needed
            echo "Error: " . $e->getMessage();
        }
    }
}

// // Example usage:
// $xlData = new xl_data();
// $sqlSelect = "SELECT * FROM your_table";
// $resultSet = $xlData->readItem($sqlSelect);

// $sqlInsert = "INSERT INTO your_table (column1, column2) VALUES (?, ?)";
// $xlData->executeItem($sqlInsert, $value1, $value2);


// class xl_data extends DatabaseConnection{

//     function readItem($sql){
//         $result  = parent::connect()->query($sql);
//         $danhsach = $result->fetchAll();
//         return $danhsach;
//     }
//     function execute_item($sql){
//         $conn = new DatabaseConnection();
//         parent::connect()->query($sql);
//     }
// }

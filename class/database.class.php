<?php

class Database
{
    private   $db_host = "localhost"; 
    private   $db_user = "root"; 
    private   $db_pass = ""; 
    protected $db_name = "sunrise"; 

    protected $con = false;       // Check to see if the connection is active
    protected $myconn = "";       // This will be our mysqli object
    protected $result = array();  // Any results from a query will be stored here
    protected $myQuery = "";      // used for debugging process with SQL return
    protected $numResults = "";   // used for returning the number of rows
    
    // Method to make connection to database
    public function connect()
    {
        if (!$this->con) {
            $this->myconn = new mysqli($this->db_host, $this->db_user, $this->db_pass, $this->db_name);

            if ($this->myconn->connect_errno > 0) {
                array_push($this->result, $this->myconn->connect_error);
                return false;
            } else {
                $this->con = true;
                return true;
            } 
        } else {  
            return true;
        }   
    }
    
    // Method to disconnect from the database
    public function disconnect()
    {
        if ($this->con) {
            if ($this->myconn->close()) {
                $this->con = false;
                return true;
            } else {
                return false;
            }
        }
    }
    

}
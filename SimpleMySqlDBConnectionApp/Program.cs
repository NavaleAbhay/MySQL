using MySql.Data.MySqlClient;
string connStr="server=localhost;uid=root;password=@sonya6080;database=classicmodels";
MySqlConnection conn=new MySqlConnection();
try{
    conn.ConnectionString=connStr;
    conn.Open();
   // string query="select * from employees";
    string query1="select * from members";
   // MySqlCommand command=new MySqlCommand(query,conn);
    MySqlCommand command1=new MySqlCommand(query1,conn);
   // MySqlDataReader reader=command.ExecuteReader();
    MySqlDataReader reader1=command1.ExecuteReader();

    // while(reader.Read())
    // {
    //     Console.WriteLine(reader[0]+" -- "+reader[1]+" -- "+reader[2]+" -- "+reader[3]);
    // }
    while(reader1.Read())
    {
        Console.WriteLine(reader1[0]+"--"+reader1[1]);
    }
   // reader.Close();
    reader1.Close();
}
catch(Exception e){
    Console.WriteLine(e.Message);
}
finally{
    conn.Close();
}
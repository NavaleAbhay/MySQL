using MySql.Data.MySqlClient;
string connStr="server=localhost;uid=root;password=@sonya6080;database=classicmodels";
MySqlConnection conn=new MySqlConnection();
try{
    conn.ConnectionString=connStr;
    conn.Open();
    string query="select * from employees";
    MySqlCommand command=new MySqlCommand(query,conn);
    MySqlDataReader reader=command.ExecuteReader();

    while(reader.Read())
    {
        Console.WriteLine(reader[0]+" -- "+reader[1]+" -- "+reader[2]+" -- "+reader[3]);
    }
    reader.Close();
}
catch(Exception e){
    Console.WriteLine(e.Message);
}
finally{
    conn.Close();
}
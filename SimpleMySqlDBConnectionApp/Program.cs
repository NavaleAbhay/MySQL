using MySql.Data.MySqlClient;
string connStr="server=localhost;uid=root;password=@sonya6080;database=classicmodels";
MySqlConnection conn=new MySqlConnection();
try{
    conn.ConnectionString=connStr;
    conn.Open();
   // string query="select * from employees";
   // string query1="select * from members";
   string query2="select customerName,country from customers where country='USA'";


   // MySqlCommand command=new MySqlCommand(query,conn);
    //MySqlCommand command1=new MySqlCommand(query1,conn);
    MySqlCommand command2=new MySqlCommand(query2,conn);
   // MySqlDataReader reader=command.ExecuteReader();
    //MySqlDataReader reader1=command1.ExecuteReader();
    MySqlDataReader reader2=command2.ExecuteReader();

    // while(reader.Read())
    // {
    //     Console.WriteLine(reader[0]+" -- "+reader[1]+" -- "+reader[2]+" -- "+reader[3]);
    // }
    // while(reader1.Read())
    // {
    //     Console.WriteLine(reader1[0]+"--"+reader1[1]);
    // }
    while(reader2.Read()){
        Console.WriteLine(reader2[0]+"--"+reader2[1]);
    }
   // reader.Close();
    //reader1.Close();
    reader2.Close();
}
catch(Exception e){
    Console.WriteLine(e.Message);
}
finally{
    conn.Close();
}



/*output of string query2=Signal Gift Stores--USA
Mini Gifts Distributors Ltd.--USA
Mini Wheels Co.--USA
Land of Toys Inc.--USA
Muscle Machine Inc--USA
Diecast Classics Inc.--USA
Technics Stores Inc.--USA
American Souvenirs Inc--USA
Cambridge Collectables Co.--USA
Gift Depot Inc.--USA
Vitachrome Inc.--USA
Auto-Moto Classics Inc.--USA
Online Mini Collectables--USA
Toys4GrownUps.com--USA
Boards & Toys Co.--USA
Collectable Mini Designs Co.--USA
Marta's Replicas Co.--USA
Mini Classics--USA
Mini Creations Ltd.--USA
Corporate Gift Ideas Co.--USA
Tekni Collectables Inc.--USA
Classic Gift Ideas, Inc--USA
Men 'R' US Retailers, Ltd.--USA
Gifts4AllAges.com--USA
Online Diecast Creations Co.--USA
Collectables For Less Inc.--USA
Classic Legends Inc.--USA
Gift Ideas Corp.--USA
The Sharp Gifts Warehouse--USA
Super Scale Inc.--USA
Microscale Inc.--USA
FunGiftIdeas.com--USA
West Coast Collectables Co.--USA
Motor Mint Distributors Inc.--USA
Signal Collectibles Ltd.--USA
Diecast Collectables--USA*/
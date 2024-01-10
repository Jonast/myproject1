package helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbHandler {
    
    private static String connectionUrl = "jdbc:mysql://CursoBD;database=curso;user=root;password=SqlJavier.93";

    public static void addNewProduct(String productName){


        try(Connection connect = DriverManager.getConnection(connectionUrl)){
            connect.createStatement().execute("INSERT INTO productos (Prod_Descripcion, Prod_Color, Prod_Status, Prod_Precio,Prod_ProvId) VALUES ('KRATOS GOW', 'MORADO', 1, 200, 62)");

        } catch (SQLException e){
            e.printStackTrace();
        }

    }

}

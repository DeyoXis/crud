package util;

/**

 *

 * @author info206

 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbUtil {

    private static Connection connection = null;

    public static Connection getConnection() {

        if (connection != null)

            return connection;

        else {

            try {          

                connection = 

DriverManager.getConnection("jdbc:mysql://192.200.63.121:3306/UserDb", "root", 

"123456");

            } catch (SQLException ex) {

                Logger.getLogger(DbUtil.class.getName()).log(Level.SEVERE, null, ex);

            }

           

            return connection;

        }

    }

}
package agenda.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() {
		try {
			return	DriverManager.getConnection("jdbc:mysql://localhost/financeiro?useTimezone=true&serverTimezone=UTC", "root", "123456");
		} 	catch	(SQLException	e)	{
			throw new	RuntimeException(e);
		}
	}
}

package com.ham.persistence;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {

	@Test
	public void testConnection() {
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@3.38.234.229:1521:xe", "ham", "java1234");
			
			assertNotNull(conn);
			
			log.info(conn.isClosed());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}

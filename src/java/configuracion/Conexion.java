
package configuracion;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    public  DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/proveedordatabase");
        dataSource.setUsername("root");
        dataSource.setPassword("Sadmywaleska2020");
        return dataSource;    
    }    
}


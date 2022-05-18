package gofly.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import gofly.entities.Booking;
import gofly.entities.SamplePerson;
import gofly.entities.User;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = "gofly")
public class SpringConfigClass implements WebMvcConfigurer {

	@Bean(name="viewResolver")
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("WEB-INF/pages/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
	
	// hibernate configuration 
	
	@Bean
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/project");
		dataSource.setUsername("root");
		dataSource.setPassword("akash");
		
		return dataSource;
	}
	
	@Bean
	public LocalSessionFactoryBean sessionFactory(){
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		
		// setting data source
		sessionFactory.setDataSource(dataSource());
		
		Properties hibernProperties = new Properties();
		hibernProperties.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
		hibernProperties.put("hibernate.hbm2ddl.auto" , "update");
		hibernProperties.put("hibernate.show_sql", "true");
		
		// setting hibernate properties
		sessionFactory.setHibernateProperties(hibernProperties);
		
		// setting annotated classes as varargs
		
		sessionFactory.setAnnotatedClasses(SamplePerson.class, User.class, Booking.class);
		return sessionFactory;
	}
	
	@Bean
	public HibernateTemplate hibernateTemplate() {
		
		HibernateTemplate hibernateTemplate = new HibernateTemplate();
		hibernateTemplate.setSessionFactory(sessionFactory().getObject());
		
		return hibernateTemplate;
	}
	
	@Bean
	public HibernateTransactionManager transactionManager() {
		
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory().getObject());
		
		return transactionManager;
	}
	
}

package com.cwis;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.jms.JndiConnectionFactoryAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.autoconfigure.web.ErrorMvcAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication(exclude = { HibernateJpaAutoConfiguration.class, JndiConnectionFactoryAutoConfiguration.class,
		DataSourceAutoConfiguration.class, JpaRepositoriesAutoConfiguration.class,
		DataSourceTransactionManagerAutoConfiguration.class, ErrorMvcAutoConfiguration.class })
public class Application extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);

	}

	/*
	 * @Bean public ErrorPageFilter errorPageFilter() { return new
	 * ErrorPageFilter(); }
	 * 
	 * @Bean public FilterRegistrationBean
	 * disableSpringBootErrorFilter(ErrorPageFilter filter) { FilterRegistrationBean
	 * filterRegistrationBean = new FilterRegistrationBean();
	 * filterRegistrationBean.setFilter(filter);
	 * filterRegistrationBean.setEnabled(false); return filterRegistrationBean; }
	 */
}

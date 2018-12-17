package tajador.certamen.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaDialect;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

@Configuration
@ComponentScan(basePackages={"tajador.certamen.service" })
public class WebCertamenConfig implements WebMvcConfigurer {

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource) {
		LocalContainerEntityManagerFactoryBean lc = new LocalContainerEntityManagerFactoryBean();
		lc.setDataSource(dataSource);
		lc.setPackagesToScan("tajador.certamen.model");
		lc.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
		lc.setJpaDialect(new HibernateJpaDialect());

		Properties p = new Properties();
		p.setProperty("hibernate.hbm2ddl.auto", "update");
		p.setProperty("hibernate.show_sql", "true");
		p.setProperty("hibernate.format_sql", "true");
		lc.setJpaProperties(p);
		return lc;

	}
	
	 @Bean
	    public LocaleChangeInterceptor localeInterceptor(){
	        LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
	        interceptor.setParamName("lang");
	        return interceptor;
	    }
	 
	 @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(localeInterceptor());
	    }

	 @Bean
	    public MessageSource messageSource(){
	        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
	        messageSource.setBasename("classpath:i18n/messages");
	        messageSource.setDefaultEncoding("UTF-8");
	        return messageSource;
	    }
	 @Bean
	 public LocalValidatorFactoryBean getValidator() {
	     LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();
	     bean.setValidationMessageSource(messageSource());
	     return bean;
	 }

}

package tajador.certamen.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import tajador.certamen.service.TajadorService;

@Configuration
@EnableWebSecurity
public class CertamenSecurityConfig extends WebSecurityConfigurerAdapter {

	@Qualifier("userDetailsService")
	TajadorService tajadorService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authenticationProvider());
	}
	
	
	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
	    DaoAuthenticationProvider authProvider
	      = new DaoAuthenticationProvider();
	    authProvider.setUserDetailsService(tajadorService);
	    authProvider.setPasswordEncoder(encoder());
	    return authProvider;
	}
	 
	@Bean
	public PasswordEncoder encoder() {
	    return new BCryptPasswordEncoder(11);
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
		.antMatchers("/certamen/*").permitAll().and().authorizeRequests().antMatchers("/private/*").access("hasAnyRole('USER','ADMIN')").and().formLogin()
		.loginPage("/certamen/index")
		.failureUrl("/certamen/llegar").and().logout()
		.logoutUrl("/logout") 
		.invalidateHttpSession(true)
		.logoutSuccessUrl("/certamen/index")
		.deleteCookies("JSESSIONID");
		
	}
	

}
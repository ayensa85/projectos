package tajador.certamen.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import tajador.certamen.service.CustomUserDetailsService;

@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableWebSecurity
@EnableJpaRepositories(basePackages = "tajador.certamen.dao")
@Configuration
public class WebCertamenSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private CustomUserDetailsService userDetailsService;
	
	@Bean(name = "passwordEncoder")
	public PasswordEncoder getpassworDecoder() {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		return encoder;	
		};

			
	

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(getpassworDecoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
	
		http.csrf().disable();
		http.authorizeRequests()
				.antMatchers("sucess").authenticated().anyRequest().permitAll().and().formLogin().permitAll();
	

	}

}

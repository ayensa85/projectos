package tajador.certamen.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

import tajador.certamen.service.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
@EnableJpaRepositories(basePackages = "tajador.certamen.dao")
//@ComponentScan(basePackageClasses = CustomUserDetailsService.class)
public class WebCertamenSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private CustomUserDetailsService userDetailsService;
	
	@Bean(name = "passwordEncoder")
	public PasswordEncoder getpassworDecoder() {
		return new PasswordEncoder() {
			
			@Override
			public String encode(CharSequence charSequence) {
				
				return charSequence.toString();
			}
			
			@Override
			public boolean matches(CharSequence charSequence, String s) {
				return true;
			}
			
		};

			
	}

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(getpassworDecoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
				.antMatchers("/", "/index", "/asociacion", "/elfestival", "/comollegar", "/alojamiento", "/bases",
						"/grupo1", "/grupo2", "/grupo3", "/grupo4", "/grupo5", "/grupo6", "/grupo7", "/grupo8",
						"/grupo9", "/grupo10", "/bases/downloadpdf", "/bases/participar",
						"/bases/participar/guardarParticipante", "/votatugrupo", "/votar/*", "/horarios")
				.permitAll().and().formLogin().defaultSuccessUrl("/success").and().formLogin()
				.loginPage("/index").usernameParameter("email").passwordParameter("password").and().logout()
				.logoutSuccessUrl("/index").and().exceptionHandling().accessDeniedPage("/index").and().csrf();
	}
	

	

}

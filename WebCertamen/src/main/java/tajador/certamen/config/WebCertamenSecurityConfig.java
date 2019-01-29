package tajador.certamen.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import tajador.certamen.service.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackageClasses = CustomUserDetailsService.class)
public class WebCertamenSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordencoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/", "/index", "/doLogin", "/login", "/logout", "/accessDenied", 
				"/goSignIn", "/signIn", "/signinInfo", "/errorPage", "/activateMail", 
				"/signInFirstStep", "/signInSecondStep", "/signInThirdStep", 
				"/signInFourthStep", "/signInFifthStep", "/signInReturnStep", 
				"/signInFourthStepNoValidation", "/signInSave", "/goRetrievePassword", 
				/*"/goRetrievePasswordInvoice",*/ "/getInstructions.pdf", "/retrievePassword", 
				/*"/retrievePasswordInvoice",*/ "/checkFiscalNif.json", "/checkValidNif.json", 
				"/contact", "/faq", "/legal", "/static/**").permitAll().and()
				.formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password").and()
				.logout().logoutSuccessUrl("/login?logout").and().exceptionHandling().accessDeniedPage("/403").and()
				.csrf();
	}

	@Bean(name = "passwordEncoder")
	public PasswordEncoder passwordencoder() {
		return new BCryptPasswordEncoder();
	}

}

package tajador.certamen.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class WebCertamenSecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  private UserDetailsService userDetailsService;


  @Bean
  public BCryptPasswordEncoder bCryptPasswordEncoder() {
    return new BCryptPasswordEncoder();
  }
  

  @Override
  protected void configure(HttpSecurity http) throws Exception {

    http.authorizeRequests()
        .antMatchers("/", "/certamen/inicio", "/certamen/elfestival", "/certamen/asociacion",
            "/certamen/comollegar", "/certamen/alojamiento", "/certamen/bases", "/certamen/grupo1",
            "/certamen/grupo2", "/certamen/grupo3", "/certamen/grupo4", "/certamen/grupo5",
            "/certamen/grupo6", "/certamen/grupo7", "/certamen/grupo8", "/certamen/grupo9",
            "/certamen/grupo10", "/certamen/bases/participar",
            "/certamen/bases/participar/guardarParticipant", "/certamen/votatugrupo",
            "/certamen/votar/**", "/certamen/horarios", "/certamen/login", "/certamen/checkLogin")
        .permitAll().antMatchers("/login").permitAll()
        .antMatchers("/camerinos/**").hasAuthority("USER").anyRequest().authenticated().and().csrf()
        .disable().formLogin().loginPage("/certamen/login").failureUrl("/login?error=true")
        .defaultSuccessUrl("/camerinos/success").usernameParameter("email")
        .passwordParameter("password")
        .and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/certamen/index"))
        .logoutSuccessUrl("/").and().exceptionHandling().accessDeniedPage("/certamen/login");
  }

  @Override
  public void configure(WebSecurity web) throws Exception {
    web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
  }

  @Bean
  public AuthenticationManager customAuthenticationManager() throws Exception {
    return authenticationManager();
  }

  @Autowired
  public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
  }

	


}

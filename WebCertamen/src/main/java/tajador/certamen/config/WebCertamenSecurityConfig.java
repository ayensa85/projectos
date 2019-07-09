package tajador.certamen.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class WebCertamenSecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  private BCryptPasswordEncoder passwordEncoder;

  @Autowired
  private DataSource dataSource;

  @Value("${spring.queries.users-query}")
  private String usersQuery;

  @Value("${spring.queries.roles-query}")
  private String rolesQuery;

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.jdbcAuthentication().usersByUsernameQuery(usersQuery)
        .authoritiesByUsernameQuery(rolesQuery).dataSource(dataSource)
        .passwordEncoder(passwordEncoder);
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {

    http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/").permitAll()
        .antMatchers("/certamen/**").permitAll().antMatchers("/camerinos/**").hasAuthority("USER")
        .anyRequest().authenticated().and().csrf().disable().formLogin()
        .loginPage("/certamen/index").failureUrl("/certamen/index?error=true")
        .defaultSuccessUrl("/camerinos/index")
        .usernameParameter("email").passwordParameter("password").and().logout()
        .logoutRequestMatcher(new AntPathRequestMatcher("/certamen/index"))
        .logoutSuccessUrl("/certamen/index").and()
        .exceptionHandling().accessDeniedPage("/certamen/index?denied=true");
  }

  @Override
  public void configure(WebSecurity web) throws Exception {
    web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
  }

	


}

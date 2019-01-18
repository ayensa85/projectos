package tajador.certamen;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.filter.DelegatingFilterProxy;

public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebCertamenApplication.class);
	}
	
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
	// ...
	servletContext.addFilter("springSecurityFilterChain",
	new DelegatingFilterProxy("springSecurityFilterChain"))
	.addMappingForUrlPatterns(null, false, "/");
	// ...
	}

}

package tajador.certamen;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.DelegatingFilterProxy;

import tajador.certamen.config.WebCertamenSecurityConfig;

public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebCertamenApplication.class);
	}

	public void onStartup(ServletContext container) throws ServletException {
		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		ctx.register(WebCertamenSecurityConfig.class);
		ctx.setServletContext(container);
//		FilterRegistration.Dynamic securityFilter = container.addFilter("springSecurityFilterChain", DelegatingFilterProxy.class);
//	    securityFilter.addMappingForUrlPatterns(null, false, "/*");
		
		ctx.close();
	}

}

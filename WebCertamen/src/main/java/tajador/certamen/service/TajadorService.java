package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.TajadorDAO;
import tajador.certamen.model.Tajador;

@Service
public class TajadorService implements UserDetailsService{
	
	@Autowired
	 private TajadorDAO tajadorDao;

		
		private BCryptPasswordEncoder bCryptPasswordEncoder;


		
		public UserDetails loadUserByUsername(String username, String password) throws UsernameNotFoundException {
			 Tajador tajador = tajadorDao.findTajadorByMailandPassword(username, bCryptPasswordEncoder.encode(password));
		        if (tajador == null) {
		            throw new UsernameNotFoundException(username);
		        }
		        return tajador;
		}



		@Override
		public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
			 Tajador tajador = tajadorDao.findTajadorByMail(username);
		        if (tajador == null) {
		            throw new UsernameNotFoundException(username);
		        }
		        return tajador;
		}
		

	   
	
	
	
	

}

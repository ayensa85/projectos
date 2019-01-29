package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.UserDAO;
import tajador.certamen.model.CustomUserDetails;
import tajador.certamen.model.User;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
	private final UserDAO userRepository;

	@Autowired
	public CustomUserDetailsService(UserDAO userRepository) {
		this.userRepository = userRepository;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUserName(username);
		if (null == user) {
			throw new UsernameNotFoundException("No user present with username: " + username);
		}
		return new CustomUserDetails(user);
	}

}
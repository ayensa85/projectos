package tajador.certamen.service;

import java.util.Optional;

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
	@Autowired
	private UserDAO userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<User> optionalUser = userRepository.findByUserName(username);
		optionalUser.orElseThrow(() -> new UsernameNotFoundException("User name not found"));
	
		return optionalUser.map(CustomUserDetails::new).get();
	}

//	  private List<GrantedAuthority> getGrantedAuthorities(User user){
//	        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
//	         
//	        for(UserProfile userProfile : user.getUserProfiles()){
//	            logger.info("UserProfile : {}", userProfile);
//	            authorities.add(new SimpleGrantedAuthority("ROLE_"+userProfile.getType()));
//	        }
//	        logger.info("authorities : {}", authorities);
//	        return authorities;
//	    }

}
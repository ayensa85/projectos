package tajador.certamen.service;

import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import tajador.certamen.dao.RoleRepository;
import tajador.certamen.dao.UserRepository;
import tajador.certamen.model.User;

public class UserService {
	
	 @Autowired
	    private UserRepository userRepository;
	    @Autowired
	    private RoleRepository roleRepository;
	    @Autowired
	    private BCryptPasswordEncoder bCryptPasswordEncoder;

	  
	    public void save(User user) {
	        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	        user.setRoles(new HashSet<>(roleRepository.findAll()));
	        userRepository.save(user);
	    }

	   
	    public User findByUsername(String username) {
	        return userRepository.findByUsername(username);
	    }

}

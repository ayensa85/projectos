package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.UserDAO;
import tajador.certamen.model.User;

@Service
public class UserService {

	@Autowired
	private UserDAO userDao;

	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;
		

	public Integer registerNewUserAccount(User userReg) {
		  
		if (emailExist(userReg.getEmail())) {
			return 0;
		} else {

			User user = new User();

			user.setDni(userReg.getDni());
			user.setEmail(userReg.getEmail());
			user.setNombre(userReg.getNombre());
			user.setEmail(userReg.getEmail());
			user.setPassword(bCryptPasswordEncoder.encode(userReg.getPassword()));

			user.setRol(userReg.getRol());
			userDao.save(user);
			return 1;

		}

	}

	public Boolean emailExist(String email) {

		userDao.findByUserName(email);
		return false;
	}

}

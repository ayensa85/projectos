package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.RolDAO;
import tajador.certamen.dao.UserDAO;
import tajador.certamen.model.User;

@Service
public class UserService {

	@Autowired
	private UserDAO userDao;

  private RolDAO roleRepository;

  private BCryptPasswordEncoder bCryptPasswordEncoder;

  @Autowired
  public UserService(UserDAO userRepository, RolDAO roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
    this.userDao = userRepository;
    this.roleRepository = roleRepository;
    this.bCryptPasswordEncoder = bCryptPasswordEncoder;
  }

  public User findUserByEmail(String email) {
    return userDao.findByEmail(email);
  }

		

	public Integer registerNewUserAccount(User userReg) {
		  
		if (emailExist(userReg.getEmail())) {
			return 0;
		} else {

			User user = new User();

			user.setDni(userReg.getDni());
			user.setEmail(userReg.getEmail());
			user.setNombre(userReg.getNombre());
			user.setEmail(userReg.getEmail());
      user.setTfno(userReg.getTfno());
			user.setPassword(bCryptPasswordEncoder.encode(userReg.getPassword()));

      user.setRoles(userReg.getRoles());
			userDao.save(user);
			return 1;

		}

	}

  public void delete(User user) {

    userDao.delete(user);
  }

  public boolean isTajador(User user) {
    User dbUser = findUserByEmail(user.getEmail());
    if (null != dbUser) {
      if (bCryptPasswordEncoder.matches(user.getPassword(), dbUser.getPassword())) {

        return true;
      }
    }

    return false;
  }

	public Boolean emailExist(String email) {

    User user = userDao.findByEmail(email);
    if (user == null) {
      return false;

    } else {

      return true;
    }

	}

}

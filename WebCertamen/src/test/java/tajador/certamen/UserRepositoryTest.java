package tajador.certamen;

import java.util.Arrays;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import tajador.certamen.model.Role;
import tajador.certamen.model.User;
import tajador.certamen.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
@TestPropertySource(locations = "classpath:db-test.properties")
@Transactional
public class UserRepositoryTest {

  @Autowired
  private UserService userRepository;

  @Autowired
  private BCryptPasswordEncoder bCryptPasswordEncoder;


  @Test
  public void insertUserTest() {

    User user = new User();
    user.setActive(1);
    user.setDni("72811205j");
    user.setEmail("ayensa85@gmail.com");
    user.setNombre("Juan Ayensa");
    user.setPassword(bCryptPasswordEncoder.encode("prueba"));
    user.setRoles(Arrays.asList(new Role(1, "ADMIN")));
    user.setPasswordConfirm(user.getPassword());

    userRepository.registerNewUserAccount(user);
    Assert.assertNotNull(user.getId());

  }

  @Test
  public void findByEmailTest() {

    User user = userRepository.findUserByEmail("ayensa85@gmail.com");
    Assert.assertNotNull(user.getId());

  }

  @Test
  public void updateUserlTest() {
    User user = userRepository.findUserByEmail("ayensa85@gmail.com");
    user.setNombre("Jose Antonio");
    userRepository.registerNewUserAccount(user);
    Assert.assertNotNull(user.getId());

  }

  @Test
  public void removeByEmailTest() {
    User user = userRepository.findUserByEmail("ayensa85@gmail.com");
    userRepository.delete(user);
    user = userRepository.findUserByEmail("ayensa85@gmail.com");
    Assert.assertNull(user);

    Assert.assertNull(user);

  }

}

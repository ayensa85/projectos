package tajador.certamen.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomUserDetails extends User implements UserDetails {

	private static final long serialVersionUID = 1L;
	

	public CustomUserDetails(final User user) {
		super(user);
	}
	
  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    // return UserRole -> new SimpleGrantedAuthority(
    // "ROLE" + UserRole.getUserRole().collect(Collectors.toList()));
    return null;
  }

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public String getUsername() {
		return super.getEmail();
	}
	@Override
	public String getPassword() {
		return super.getPassword();
	}


}

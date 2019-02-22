package tajador.certamen.model;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

public class CustomUserDetails extends User implements UserDetails {

	private static final long serialVersionUID = 1L;
	

	public CustomUserDetails(final User user) {
		super(user);
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return getRol().stream().map(role ->  new SimpleGrantedAuthority("ROLE" + role.getRole())).collect(Collectors.toList());
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

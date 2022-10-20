package com.cibertec.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import com.cibertec.entity.Roles;
import com.cibertec.entity.Usuario;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.apachecommons.CommonsLog;


@Getter
@Setter
@AllArgsConstructor
@CommonsLog
@ToString
public class UsuarioPrincipal implements UserDetails {

	private static final long serialVersionUID = 1L;
	private int IdUsuario;
	private String NomUsuario;
	private String ClaveUsuario;
	private static String NombreCompleto;
	private Collection<? extends GrantedAuthority> authorities;
	
	public static UsuarioPrincipal build(Usuario usuario, List<Roles> roles) {
		log.info(">>>UsuarioPrincipal >> " + usuario);
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (Roles x : roles) {
			authorities.add(new SimpleGrantedAuthority(x.getNombreRol()));
		}
		NombreCompleto = usuario.getNombreCompleto();
		return new UsuarioPrincipal(usuario.getIdUsuario(), usuario.getNomUsuario(), usuario.getClaveUsuario(), authorities);
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
	
	public String getNombreCompleto() {
		return NombreCompleto;
	}
	
	public int getIdUsuario() {
		return IdUsuario;
	}

	@Override
	public String getPassword() {
		return ClaveUsuario;
	}

	@Override
	public String getUsername() {
		return NomUsuario;
	}

}
package com.cibertec.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.cibertec.entity.Cargo;
import com.cibertec.entity.Cliente;
import com.cibertec.entity.Departamento;
import com.cibertec.entity.Empleado;
import com.cibertec.entity.Roles;
import com.cibertec.entity.Usuario;
import com.cibertec.service.CargoService;
import com.cibertec.service.ClienteService;
import com.cibertec.service.DepartamentoService;
import com.cibertec.service.EmpleadoService;
import com.cibertec.service.RolesService;
import com.cibertec.service.UsuarioService;
import com.cibertec.util.AppSettings;


@RestController
@RequestMapping("/url/util")
@CrossOrigin(origins = AppSettings.URL_CROSS_ORIGIN)
public class UtilController {

	@Autowired
	private DepartamentoService dptoService;
	
	@Autowired
	private CargoService cargoService;
	
	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private EmpleadoService empleadoService;
	
	@Autowired
	private RolesService rolesService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping("/listarDptos")
	@ResponseBody
	public List<Departamento> listarDepartamentos() {
		return dptoService.listarDptos();
	}
	
	@GetMapping("/listarCargos")
	@ResponseBody
	public List<Cargo> listarCargos() {
		return cargoService.listarCargos();
	}
	
	@GetMapping("/listarClientes")
	@ResponseBody
	public List<Cliente> listarClientes() {
		return clienteService.listarClientes();
	}
	
	@GetMapping("/listarEmpleados")
	@ResponseBody
	public List<Empleado> listarEmpleados() {
		return empleadoService.listarEmpleados();
	}
	
	@GetMapping("/listarRoles")
	@ResponseBody
	public List<Roles> listarRoles() {
		return rolesService.listarRoles();
	}
	
	@GetMapping("/listarUsuarios")
	@ResponseBody
	public List<Usuario> listarUsuarios() {
		return usuarioService.listarUsuarios();
	}
	
}
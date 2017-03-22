package BooksCom

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class UsuariosRole implements Serializable {

	private static final long serialVersionUID = 1

	Usuarios usuarios
	Role role

	UsuariosRole(Usuarios u, Role r) {
		this()
		usuarios = u
		role = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof UsuariosRole)) {
			return false
		}

		other.usuarios?.id == usuarios?.id && other.role?.id == role?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuarios) builder.append(usuarios.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static UsuariosRole get(long usuariosId, long roleId) {
		criteriaFor(usuariosId, roleId).get()
	}

	static boolean exists(long usuariosId, long roleId) {
		criteriaFor(usuariosId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long usuariosId, long roleId) {
		UsuariosRole.where {
			usuarios == Usuarios.load(usuariosId) &&
			role == Role.load(roleId)
		}
	}

	static UsuariosRole create(Usuarios usuarios, Role role, boolean flush = false) {
		def instance = new UsuariosRole(usuarios: usuarios, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Usuarios u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UsuariosRole.where { usuarios == u && role == r }.deleteAll()

		if (flush) { UsuariosRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Usuarios u, boolean flush = false) {
		if (u == null) return

		UsuariosRole.where { usuarios == u }.deleteAll()

		if (flush) { UsuariosRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		UsuariosRole.where { role == r }.deleteAll()

		if (flush) { UsuariosRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, UsuariosRole ur ->
			if (ur.usuarios == null || ur.usuarios.id == null) return
			boolean existing = false
			UsuariosRole.withNewSession {
				existing = UsuariosRole.exists(ur.usuarios.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['usuarios', 'role']
		version false
	}
}

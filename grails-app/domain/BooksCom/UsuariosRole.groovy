package BooksCom

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class UsuariosRole implements Serializable {

	private static final long serialVersionUID = 1

	Usuarios usuario
	Role role

    UsuariosRole(Usuarios u, Role r) {
		this()
		usuario = u
		role = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof UsuariosRole)) {
			return false
		}

		other.usuario?.id == usuario?.id && other.role?.id == role?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuario) builder.append(usuario.id)
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
			usuario == usuario.load(usuariosId) &&
			role == Role.load(roleId)
		}
	}

	static UsuariosRole create(Usuarios usuarios, Role role, boolean flush = false) {
		def instance = new UsuariosRole(usuario: usuarios, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Usuarios u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UsuariosRole.where { usuario == u && role == r }.deleteAll()

		if (flush) { UsuariosRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Usuarios u, boolean flush = false) {
		if (u == null) return

		UsuariosRole.where { usuario == u }.deleteAll()

		if (flush) { UsuariosRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		UsuariosRole.where { role == r }.deleteAll()

		if (flush) { UsuariosRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, UsuariosRole ur ->
			if (ur.usuario == null || ur.usuario.id == null) return
			boolean existing = false
			UsuariosRole.withNewSession {
				existing = UsuariosRole.exists(ur.usuario.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['usuario', 'role']
		version false
	}
}

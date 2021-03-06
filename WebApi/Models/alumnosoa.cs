using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi.Transfers;
using System.Data.Entity;

namespace WebApi.Models
{
	public partial class alumnos
	{
		public bool mayoredad { get; set; }

		public void Cumpleanios ()
        {

        }
		public static IEnumerable<alumnodto> ListarAlumnosMayoresEdad()
		{
			soaEntities db = new soaEntities();

			var list = from b in db.alumnos.Where(t => t.edad > 17).OrderBy(t => t.apellidos)
				select new alumnodto()
				{
					id = b.id,
					nombres = b.nombres,
					apellidos = b.apellidos,
					edad = b.edad,
					genero = b.genero,
					tipodocumento_id = b.tipodocumento_id,
					dni = b.dni
				};
			return list;
		}

		public static IEnumerable<alumnodto> ListarAlumnosMenoresEdad()
		{
			soaEntities db = new soaEntities();

			var list = from b in db.alumnos.Where(t => t.edad < 18).OrderBy(t => t.apellidos)
				select new alumnodto()
				{
					id = b.id,
					nombres = b.nombres,
					apellidos = b.apellidos,
					edad = b.edad,
					genero = b.genero,
					tipodocumento_id = b.tipodocumento_id,
					dni = b.dni
				};
			return list;
		}

		public static alumnodto RegistrarAlumno(alumnodto alumnodto) {
			soaEntities db = new soaEntities();
			alumnos alumno = new alumnos()
			{
				nombres = alumnodto.nombres,
				apellidos = alumnodto.apellidos,
				edad = alumnodto.edad,
				genero = alumnodto.genero,
				tipodocumento_id = alumnodto.tipodocumento_id,
				dni = alumnodto.dni

			};
			db.alumnos.Add(alumno);
			db.SaveChanges();
			return alumnos.ObtenerAlumno(alumno.id);
		}
		public static IEnumerable<alumnodto> ListarAlumnosPorDocumento(int tipodocumento_id)
		{
			soaEntities db = new soaEntities();

			var list = from b in db.alumnos.Where(t => t.tipodocumento_id == tipodocumento_id).OrderBy(t => t.apellidos)
					   select new alumnodto()
					   {
						   id = b.id,
						   nombres = b.nombres,
						   apellidos = b.apellidos,
						   edad = b.edad,
						   genero = b.genero,
						   tipodocumento_id = b.tipodocumento_id,
						   dni = b.dni
					   };
			return list;
		}
		public static alumnodto ObtenerAlumno(int id)
		{
			soaEntities db = new soaEntities();
			var obj = db.alumnos.Select(b =>
				new alumnodto()
				{
					id = b.id,
					nombres = b.nombres,
					apellidos = b.apellidos,
					edad = b.edad,
					genero = b.genero,
					tipodocumento_id = b.tipodocumento_id,
					dni = b.dni
				}).SingleOrDefault(b => b.id == id);

			if (obj == null) obj = new alumnodto() { id = 0, nombres="", apellidos = "", edad = null, tipodocumento_id = null, dni = "" };
			return obj;
		}
		public static alumnodto ActualizarAlumno(int id, alumnodto alumnodto)
		{
			soaEntities db = new soaEntities();
			alumnos alumno = db.alumnos.Find(id);
			alumno.nombres = alumnodto.nombres;
			alumno.apellidos = alumnodto.apellidos;
			alumno.edad = alumnodto.edad;
			alumno.genero = alumnodto.genero;
			alumno.tipodocumento_id = alumnodto.tipodocumento_id;
			alumno.dni = alumnodto.dni;
			db.Entry(alumno).State = EntityState.Modified;
			db.SaveChanges();
			return alumnos.ObtenerAlumno(alumno.id);
		}
		public static bool EliminarAlumno(int id)
		{
			soaEntities db = new soaEntities();
			alumnos alumno = db.alumnos.Find(id);
			db.alumnos.Remove(alumno);
			db.SaveChanges();
			return true;
		}

		


	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi.Transfers;

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
			return null;
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
	}
}
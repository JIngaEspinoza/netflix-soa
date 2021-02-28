using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi.Transfers;
namespace WebApi.Models
{
	public partial class curso
	{
		public static IEnumerable<cursodto> ListarCursosPublicos(int categoria_id)
		{
			soaEntities db = new soaEntities();

			var list = from b in db.cursos.Where(t => t.categoria_id == categoria_id).OrderBy(t => t.nombres)
			select new cursodto()
			{
				id = b.id,
				nombres = b.nombres,
				creditos = b.creditos,
				categoria_id = b.categoria_id
			};
			return list;
		}
	}
}
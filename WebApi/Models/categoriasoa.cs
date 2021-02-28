using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi.Transfers;

namespace WebApi.Models
{
	public partial class categorias
	{
		public static IEnumerable<categoriadto> ListarCategoriasPublicos()
		{
			soaEntities db = new soaEntities();

			var list = from b in db.categorias.OrderBy(t => t.orden)
			select new categoriadto()
			{
				id = b.id,
				nombre = b.nombre,
				categoria_id = b.categoria_id,
				nivel = b.nivel,
				orden = b.orden
			};
			return list;
		}
	}
}
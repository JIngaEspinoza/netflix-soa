using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi.Transfers;

namespace WebApi.Models
{
    public partial class peliculas
    {
		/*public static IEnumerable<peliculadto> ListarPeliculas2()
		{
			netflixdbEntities1 bd = new netflixdbEntities1();

			var list = (
				from conm in bd.contenidos_multimedia
				where conm.id_tcontenido_multimedia == 1 // peliculas
				select new contenidomultimediagenerodto()
				{
					id_contenido_multimedia = conm.id_contenido_multimedia,
					titulo = conm.video.titulo,
					descripcion = conm.video.descripcion,
					edad_clasificacion = conm.edad_clasificacion,
					anho_publicacion = conm.anho_publicacion,
					director = conm.director,
					url_trailer = conm.video.url_trailer,
					url_imagen = conm.video.url_imagen,
					duracion_segundos = conm.video.duracion_segundos,
					generos = (from conmgen in bd.contenido_multimedia_generos
						join gen in bd.generos
						on conmgen.id_genero equals gen.id_genero
						where conmgen.id_contenido_multimedia == conm.id_contenido_multimedia
						select new generodto()
						{
							nombre = gen.nombre
						}).ToList()
				}
			);

			return list;
		}

		public static IEnumerable<peliculadto> ListarPeliculas()
		{
			netflixdbEntities1 db = new netflixdbEntities1();
			var list = from b in db.peliculas.OrderBy(t => t.titulo)
				select new peliculadto()
				{
					id_pelicula = b.id_pelicula,
					titulo = b.titulo,
					descripcion = b.descripcion,
					url_ubicacion = b.url_ubicacion,
					url_imagen = b.url_imagen,
					url_trailer = b.url_trailer,
					duracion_segundos = b.duracion_segundos,
					id_genero = b.id_genero
				};
			return list;
		}

		public static IEnumerable<peliculadto> BuscarPeliculaPorTitulo(string titulo)
		{
			netflixdbEntities1 db = new netflixdbEntities1();
			var list = from b in db.peliculas.Where(t => t.titulo == titulo).OrderBy(t => t.titulo)
				select new peliculadto()
				{
					id_pelicula = b.id_pelicula,
					titulo = b.titulo,
					descripcion = b.descripcion,
					url_ubicacion = b.url_ubicacion,
					url_imagen = b.url_imagen,
					url_trailer = b.url_trailer,
					duracion_segundos = b.duracion_segundos,
					id_genero = b.id_genero
				};
			return list;
		}

		public static IEnumerable<peliculadto> BuscarPeliculaPorGenero(int id_genero)
		{
			netflixdbEntities1 db = new netflixdbEntities1();
			var list = from b in db.peliculas.Where(t => t.id_genero == id_genero).OrderBy(t => t.titulo)
				select new peliculadto()
				{
					id_pelicula = b.id_pelicula,
					titulo = b.titulo,
					descripcion = b.descripcion,
					url_ubicacion = b.url_ubicacion,
					url_imagen = b.url_imagen,
					url_trailer = b.url_trailer,
					duracion_segundos = b.duracion_segundos,
					id_genero = b.id_genero
				};
			return list;
		}*/
	}
}
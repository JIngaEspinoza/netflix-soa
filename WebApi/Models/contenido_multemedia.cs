using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi.Transfers;

namespace WebApi.Models
{
    public partial class contenidos_multemedia
    {
        public static IEnumerable<contenidomultimediagenerodto> ListarPeliculas()
        {
            netflixdbEntities1 bd = new netflixdbEntities1();

            var list = (
                from conm in bd.contenidos_multimedia
                where conm.id_tcontenido_multimedia == 1
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

        public static IEnumerable<contenidomultimediagenerodto> BuscarPeliculaPorTitulo(string titulo)
        {
            netflixdbEntities1 bd = new netflixdbEntities1();

            var list = (
                from conm in bd.contenidos_multimedia
                where conm.id_tcontenido_multimedia == 1                
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
                    where conmgen.id_contenido_multimedia == conm.id_contenido_multimedia &&
                    conm.video.titulo == titulo
                    select new generodto()
                    {
                        nombre = gen.nombre
                    }).ToList()
                }
            );

            return list;
        }

        public static IEnumerable<contenidomultimediagenerodto> BuscarPeliculaPorGenero(int id_genero)
        {
            netflixdbEntities1 bd = new netflixdbEntities1();

            var list = (
                from conm in bd.contenidos_multimedia
                where conm.id_tcontenido_multimedia == 1
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
                        where conmgen.id_contenido_multimedia == conm.id_contenido_multimedia &&
                        gen.id_genero == id_genero
                    select new generodto()
                    {
                        nombre = gen.nombre
                    }).ToList()
                }
            );

            return list;
        }
    }
}
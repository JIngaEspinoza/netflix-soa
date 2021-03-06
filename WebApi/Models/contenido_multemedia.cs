using System;
using System.Collections.Generic;
using System.Data.Entity;
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

        public static contenidomultemediadto RegistrarVideo(contenidomultemediadto contenidomultemediadto)
        {
            netflixdbEntities1 db = new netflixdbEntities1();
            contenidos_multimedia contenido_multimedia = new contenidos_multimedia()
            {
                edad_clasificacion = contenidomultemediadto.edad_clasificacion,
                anho_publicacion = contenidomultemediadto.anho_publicacion,
                director = contenidomultemediadto.director,
                id_video = contenidomultemediadto.id_video,
                id_tcontenido_multimedia = contenidomultemediadto.id_tcontenido_multimedia
            };
            db.contenidos_multimedia.Add(contenido_multimedia);
            db.SaveChanges();
            return contenidos_multemedia.ObtenerVideo(contenido_multimedia.id_contenido_multimedia);
        }

        public static contenidomultemediadto ObtenerVideo(int id_contenido_multimedia)
        {
            netflixdbEntities1 db = new netflixdbEntities1();
            var obj = db.contenidos_multimedia.Select(b =>
                new contenidomultemediadto()
                {
                    id_contenido_multimedia = b.id_contenido_multimedia,
                    edad_clasificacion = b.edad_clasificacion,
                    anho_publicacion = b.anho_publicacion,
                    director = b.director,
                    id_video = b.id_video,
                    id_tcontenido_multimedia = b.id_tcontenido_multimedia
                }).SingleOrDefault(b => b.id_contenido_multimedia == id_contenido_multimedia);

            if (obj == null) obj = new contenidomultemediadto() { id_contenido_multimedia = 0, edad_clasificacion = null, anho_publicacion = null, director = null, id_video = null, id_tcontenido_multimedia = null };
            return obj;
        }

        public static contenidomultemediadto ActualizarVideo(int id_contenido_multimedia, contenidomultemediadto contenidomultemediadto)
        {
            netflixdbEntities1 db = new netflixdbEntities1();

            contenidos_multimedia contenido_multimedia = db.contenidos_multimedia.Find(id_contenido_multimedia);
            contenido_multimedia.edad_clasificacion = contenidomultemediadto.edad_clasificacion;
            contenido_multimedia.anho_publicacion = contenidomultemediadto.anho_publicacion;
            contenido_multimedia.director = contenidomultemediadto.director;
            contenido_multimedia.id_video = contenidomultemediadto.id_video;
            contenido_multimedia.id_tcontenido_multimedia = contenidomultemediadto.id_tcontenido_multimedia;

            db.Entry(contenido_multimedia).State = EntityState.Modified;
            db.SaveChanges();
            return contenidos_multemedia.ObtenerVideo(contenido_multimedia.id_contenido_multimedia);
        }

        public static bool EliminarVideo(int id_contenido_multimedia)
        {
            netflixdbEntities1 db = new netflixdbEntities1();
            contenidos_multimedia contenidos_multimedia = db.contenidos_multimedia.Find(id_contenido_multimedia);
            db.contenidos_multimedia.Remove(contenidos_multimedia);
            db.SaveChanges();
            return true;
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


        public static IEnumerable<tipocontenidomultimediadto> ListarTipoMultimedia()
        {
            netflixdbEntities1 db = new netflixdbEntities1();

            var list = from b in db.tipos_contenido_multimedia.OrderBy(t => t.nombre)
                select new tipocontenidomultimediadto()
                {
                    id_tcontenido_multimedia = b.id_tcontenido_multimedia,
                    nombre = b.nombre
                };
            return list;
        }


        public static IEnumerable<contenidomultemediadto> ListarMultimediaPorTipo(int id_tcontenido_multimedia)
        {
            netflixdbEntities1 db = new netflixdbEntities1();

            var list = from b in db.contenidos_multimedia.Where(t => t.id_tcontenido_multimedia == id_tcontenido_multimedia).OrderBy(t => t.director)

                select new contenidomultemediadto()
                {
                    id_contenido_multimedia = b.id_contenido_multimedia,
                    edad_clasificacion = b.edad_clasificacion,
                    anho_publicacion = b.anho_publicacion,
                    director = b.director,
                    id_video = b.id_video,
                    id_tcontenido_multimedia = b.id_tcontenido_multimedia
                };
            return list;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi.Transfers;
using WebApi.Models;
using System.Web.Http.Cors;

namespace WebApi.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class PeliculasController : ApiController
    {
        [HttpGet]
        [Route("api/Peliculas/ListarPeliculas")]
        public IEnumerable<contenidomultimediagenerodto> ListarPeliculas()
        {
            return contenidos_multemedia.ListarPeliculas();
        }

        [HttpGet]
        [Route("api/Peliculas/BuscarPeliculaPorTitulo")]
        public IEnumerable<contenidomultimediagenerodto> BuscarPeliculaPorTitulo(string titulo)
        {
            return contenidos_multemedia.BuscarPeliculaPorTitulo(titulo);
        }

        [HttpGet]
        [Route("api/Peliculas/BuscarPeliculaPorGenero")]
        public IEnumerable<contenidomultimediagenerodto> BuscarPeliculaPorGenero(int id_genero)
        {
            return contenidos_multemedia.BuscarPeliculaPorGenero(id_genero);
        }

        //

        [HttpGet]
        [Route("api/Peliculas/ObtenerVideo")]
        public contenidomultemediadto ObtenerVideo(int id_contenido_multimedia)
        {
            return contenidos_multemedia.ObtenerVideo(id_contenido_multimedia);
        }

        [HttpPut]
        [Route("api/Peliculas/RegistrarVideo")]
        public contenidomultemediadto RegistrarVideo(contenidomultemediadto contenidomultemediadto)
        {
            return contenidos_multemedia.RegistrarVideo(contenidomultemediadto);
        }

        [HttpPost]
        [Route("api/Peliculas/ActualizarVideo")]
        public contenidomultemediadto ActualizarVideo(int id_contenido_multimedia, contenidomultemediadto contenidomultemediadto)
        {
            return contenidos_multemedia.ActualizarVideo(id_contenido_multimedia, contenidomultemediadto);
        }

        [HttpDelete]
        [Route("api/Peliculas/EliminarVideo")]
        public bool EliminarVideo(int id_contenido_multimedia)
        {
            return contenidos_multemedia.EliminarVideo(id_contenido_multimedia);
        }

        [HttpGet]
        [Route("api/Peliculas/ListarTipoMultimedia")]
        public IEnumerable<tipocontenidomultimediadto> ListarTipoMultimedia()
        {
            return contenidos_multemedia.ListarTipoMultimedia();
        }

        [HttpGet]
        [Route("api/Peliculas/ListarMultimediaPorTipo")]
        public IEnumerable<contenidomultemediadto> ListarMultimediaPorTipo(int id_tcontenido_multimedia)
        {
            return contenidos_multemedia.ListarMultimediaPorTipo(id_tcontenido_multimedia);
        }
    }
}

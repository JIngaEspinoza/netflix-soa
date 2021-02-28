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
    }
}

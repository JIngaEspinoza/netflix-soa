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
    public class PublicacionContenidosController : ApiController
    {
        [HttpGet]
        [Route("api/PublicacionContenidos/ListarCategoriasPublicos")]
        public IEnumerable<categoriadto> ListarCategoriasPublicos()
        {
            return categorias.ListarCategoriasPublicos();
        }

        [HttpGet]
        [Route("api/PublicacionContenidos/ListarCursosPublicos")]
        public IEnumerable<cursodto> ListarCursosPublicos(int categoria_id)
        {
            return curso.ListarCursosPublicos(categoria_id);
        }
    }
}

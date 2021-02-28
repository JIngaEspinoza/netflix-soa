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
    public class EvaluacionController : ApiController
    {
        [HttpGet]
        [Route("api/Evaluacion/ListarAlumnosMayoresEdad")]
        public IEnumerable<alumnodto> ListarAlumnosMayoresEdad()
        {
            return alumnos.ListarAlumnosMayoresEdad();
        }

        [HttpGet]
        [Route("api/Evaluacion/ListarAlumnosMenoresEdad")]
        public IEnumerable<alumnodto> ListarAlumnosMenoresEdad()
        {
            return alumnos.ListarAlumnosMenoresEdad();
        }

        [HttpGet]
        [Route("api/Evaluacion/ListarAlumnosPorDocumento")]
        public IEnumerable<alumnodto> ListarAlumnosPorDocumento(int tipodocumento_id)
        {
            return alumnos.ListarAlumnosPorDocumento(tipodocumento_id);
        }


    }
}

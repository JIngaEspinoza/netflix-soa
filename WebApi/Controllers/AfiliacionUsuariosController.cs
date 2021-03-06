﻿using System;
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
    [EnableCors(origins:"*", headers:"*",methods:"*")]
    public class AfiliacionUsuariosController : ApiController
    {
        [HttpGet]
        [Route("api/AfiliacionUsuarios/ObtenerAlumno")]
        public alumnodto ObtenerAlumno(int id) {
            return alumnos.ObtenerAlumno(id);
        }

        [HttpPut]
        [Route("api/AfiliacionUsuarios/RegistrarAlumno")]
        public alumnodto RegistrarAlumno(alumnodto alumnodto)
        {
            //alumno obj = new alumno();
            //return obj.RegistrarAlumno();
            return alumnos.RegistrarAlumno(alumnodto);
        }
        [HttpPost]
        [Route("api/AfiliacionUsuarios/ActualizarAlumno")]
        public alumnodto ActualizarAlumno(int id, alumnodto alumnodto)
        {
            return alumnos.ActualizarAlumno(id,alumnodto);
        }
        [HttpDelete]
        [Route("api/AfiliacionUsuarios/EliminarAlumno")]
        public bool EliminarAlumno(int id)
        {
            return alumnos.EliminarAlumno(id);
        }
        
    }
}

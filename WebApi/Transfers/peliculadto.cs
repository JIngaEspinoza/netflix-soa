using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi.Transfers
{
    public class peliculadto
    {
        public int id_pelicula { get; set; }
        public string titulo { get; set; }
        public string descripcion { get; set; }
        public string url_ubicacion { get; set; }
        public string url_imagen { get; set; }
        public string url_trailer { get; set; }
        public Nullable<decimal> duracion_segundos { get; set; }
        public Nullable<int> id_genero { get; set; }

    }
}
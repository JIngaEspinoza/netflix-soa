using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi.Transfers
{
    public class contenidomultemediadto
    {
        public int id_contenido_multimedia { get; set; }
        public Nullable<int> edad_clasificacion { get; set; }
        public Nullable<int> anho_publicacion { get; set; }
        public string director { get; set; }
        public Nullable<int> id_video { get; set; }
        public Nullable<int> id_tcontenido_multimedia { get; set; }
    }
}
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tipos_contenido_multimedia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tipos_contenido_multimedia()
        {
            this.contenidos_multimedia = new HashSet<contenidos_multimedia>();
        }
    
        public int id_tcontenido_multimedia { get; set; }
        public string nombre { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<contenidos_multimedia> contenidos_multimedia { get; set; }
    }
}

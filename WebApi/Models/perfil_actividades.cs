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
    
    public partial class perfil_actividades
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public perfil_actividades()
        {
            this.estado_actividades = new HashSet<estado_actividades>();
        }
    
        public int id_perfil_actividad { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public Nullable<int> id_perfil { get; set; }
        public Nullable<int> id_video { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<estado_actividades> estado_actividades { get; set; }
        public virtual perfile perfile { get; set; }
        public virtual video video { get; set; }
    }
}
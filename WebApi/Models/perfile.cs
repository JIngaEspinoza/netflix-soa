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
    
    public partial class perfile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public perfile()
        {
            this.cuenta_perfiles = new HashSet<cuenta_perfiles>();
            this.perfil_actividades = new HashSet<perfil_actividades>();
            this.perfil_favoritos = new HashSet<perfil_favoritos>();
        }
    
        public int id_perfil { get; set; }
        public string nombre { get; set; }
        public string url_avatar { get; set; }
        public Nullable<bool> bloqueado { get; set; }
        public Nullable<int> edad_clasificacion { get; set; }
        public Nullable<bool> autorep_serie { get; set; }
        public Nullable<bool> autorep_avances { get; set; }
        public Nullable<int> id_idioma { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cuenta_perfiles> cuenta_perfiles { get; set; }
        public virtual idioma idioma { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<perfil_actividades> perfil_actividades { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<perfil_favoritos> perfil_favoritos { get; set; }
    }
}

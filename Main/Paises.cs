//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VesteBem
{
    using System;
    using System.Collections.Generic;
    
    public partial class Paises
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Paises()
        {
            this.Trabalhadores = new HashSet<Trabalhadores>();
            this.Fornecedores = new HashSet<Fornecedores>();
            this.Morada = new HashSet<Morada>();
        }
    
        public int ID { get; set; }
        public string Codigo { get; set; }
        public string Nome { get; set; }
        public string Capital { get; set; }
        public string Nacionalidade { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Trabalhadores> Trabalhadores { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Fornecedores> Fornecedores { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Morada> Morada { get; set; }
    }
}

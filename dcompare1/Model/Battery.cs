//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace dcompare1.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Battery
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Battery()
        {
            this.Devices = new HashSet<Device>();
        }
    
        public int Id { get; set; }
        public Nullable<int> capacity { get; set; }
        public Nullable<int> wattage { get; set; }
        public Nullable<int> output { get; set; }
        public Nullable<int> input { get; set; }
        public Nullable<int> current { get; set; }
        public Nullable<int> life_hours { get; set; }
        public string name { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Device> Devices { get; set; }
    }
}

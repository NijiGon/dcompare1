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
    
    public partial class fCamera
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public fCamera()
        {
            this.Devices = new HashSet<Device>();
        }
    
        public int Id { get; set; }
        public Nullable<int> resolution { get; set; }
        public Nullable<int> megapixels { get; set; }
        public Nullable<int> frame_rate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Device> Devices { get; set; }
    }
}
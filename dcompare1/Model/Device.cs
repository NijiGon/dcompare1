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
    
    public partial class Device
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Device()
        {
            this.Reviews = new HashSet<Review>();
        }
    
        public int Id { get; set; }
        public Nullable<int> audio { get; set; }
        public Nullable<int> battery { get; set; }
        public Nullable<int> connectivity { get; set; }
        public Nullable<int> dimension { get; set; }
        public Nullable<int> display { get; set; }
        public Nullable<int> graphics { get; set; }
        public Nullable<int> memory { get; set; }
        public Nullable<int> port { get; set; }
        public Nullable<int> processor { get; set; }
        public Nullable<int> security { get; set; }
        public Nullable<int> storage { get; set; }
        public Nullable<int> included { get; set; }
        public Nullable<int> keyboard { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public Nullable<int> fcamera { get; set; }
        public Nullable<int> rcamera { get; set; }
        public string youtube { get; set; }
    
        public virtual Audio Audio1 { get; set; }
        public virtual Battery Battery1 { get; set; }
        public virtual Connectivity Connectivity1 { get; set; }
        public virtual Dimension Dimension1 { get; set; }
        public virtual Display Display1 { get; set; }
        public virtual Graphic Graphic { get; set; }
        public virtual Included Included1 { get; set; }
        public virtual Port Port1 { get; set; }
        public virtual Processor Processor1 { get; set; }
        public virtual Security Security1 { get; set; }
        public virtual Storage Storage1 { get; set; }
        public virtual ltKeyboard ltKeyboard { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Review> Reviews { get; set; }
        public virtual Memory Memory1 { get; set; }
        public virtual fCamera fCamera1 { get; set; }
        public virtual rCamera rCamera1 { get; set; }
    }
}

﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MainEntities10 : DbContext
    {
        public MainEntities10()
            : base("name=MainEntities10")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Audio> Audios { get; set; }
        public virtual DbSet<Battery> Batteries { get; set; }
        public virtual DbSet<Connectivity> Connectivities { get; set; }
        public virtual DbSet<Device> Devices { get; set; }
        public virtual DbSet<Dimension> Dimensions { get; set; }
        public virtual DbSet<Display> Displays { get; set; }
        public virtual DbSet<Graphic> Graphics { get; set; }
        public virtual DbSet<Included> Includeds { get; set; }
        public virtual DbSet<ltKeyboard> ltKeyboards { get; set; }
        public virtual DbSet<Memory> Memories { get; set; }
        public virtual DbSet<Port> Ports { get; set; }
        public virtual DbSet<Processor> Processors { get; set; }
        public virtual DbSet<Review> Reviews { get; set; }
        public virtual DbSet<Security> Securities { get; set; }
        public virtual DbSet<Storage> Storages { get; set; }
        public virtual DbSet<Table> Tables { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
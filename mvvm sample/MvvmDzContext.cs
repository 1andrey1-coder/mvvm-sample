using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace mvvm_sample;

public partial class MvvmDzContext : DbContext
{
    public MvvmDzContext()
    {
    }

    public MvvmDzContext(DbContextOptions<MvvmDzContext> options)
        : base(options)
    {
    }

    public virtual DbSet<TblProduct> TblProducts { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseMySql("host=localhost;userid=root;password=Myl1ttledvmk3003@;database=\"mvvm dz\"", Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.31-mysql"));

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb4_general_ci")
            .HasCharSet("utf8mb4");

        modelBuilder.Entity<TblProduct>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("tbl_product");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Category).HasMaxLength(255);
            entity.Property(e => e.Discount)
                .HasMaxLength(255)
                .HasColumnName("discount");
            entity.Property(e => e.Manufacturer).HasMaxLength(255);
            entity.Property(e => e.Name).HasMaxLength(255);
            entity.Property(e => e.PricePerPiece)
                .HasPrecision(19, 2)
                .HasColumnName("Price per piece");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}

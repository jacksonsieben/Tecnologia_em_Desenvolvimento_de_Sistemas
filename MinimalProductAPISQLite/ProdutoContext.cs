using Microsoft.EntityFrameworkCore;

namespace MinimalProductAPISQLite
{
    public class ProdutoContext : DbContext
    {
        //public DbSet<Produto> Produtos { get; set; }

        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    optionsBuilder.UseSqlite("Data Source=produtos.db");
        //}
        public ProdutoContext(DbContextOptions<ProdutoContext> options)
            : base(options)
        {
        }

        public DbSet<Produto> Produtos { get; set; }
    }

}

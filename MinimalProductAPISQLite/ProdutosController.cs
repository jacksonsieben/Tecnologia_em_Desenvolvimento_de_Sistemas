using Microsoft.AspNetCore.Mvc;
using System.Data.Entity;

namespace MinimalProductAPISQLite
{
    public class ProdutosController
    {
        private readonly ProdutoContext _context;

        public ProdutosController(ProdutoContext context)
        {
            _context = context;
        }

        [HttpGet("/produtos")]
        public async Task<IEnumerable<Produto>> GetProdutos()
        {
            return await _context.Produtos.ToListAsync();
        }

        [HttpGet("/produtos/{id}")]
        public async Task<Produto> GetProduto(int id)
        {
            return await _context.Produtos.FindAsync(id);
        }

        [HttpPost("/produtos")]
        public async Task<ActionResult<Produto>> PostProduto(Produto produto)
        {
            _context.Produtos.Add(produto);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetProduto), new { id = produto.Id }, produto);

        }

        private ActionResult<Produto> CreatedAtAction(string v, object value, Produto produto)
        {
            throw new NotImplementedException();
        }

        [HttpPut("/produtos/{id}")]
        public async Task<IActionResult> PutProduto(int id, Produto produto)
        {
            if (id != produto.Id)
            {
                return BadRequest();
            }

            _context.Entry(produto).State = (Microsoft.EntityFrameworkCore.EntityState)EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private IActionResult BadRequest()
        {
            throw new NotImplementedException();
        }

        private IActionResult NoContent()
        {
            throw new NotImplementedException();
        }

        [HttpDelete("/produtos/{id}")]
        public async Task<IActionResult> DeleteProduto(int id)
        {
            var produto = await _context.Produtos.FindAsync(id);

            if (produto == null)
            {
                return NotFoundResult();
            }

            _context.Produtos.Remove(produto);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private IActionResult NotFoundResult()
        {
            throw new NotImplementedException();
        }
    }

}

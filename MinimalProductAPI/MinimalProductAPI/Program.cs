var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

var products = new List<Product>
{
    new Product{Id = 0, Nome = "Garrafa 500Ml", Preco = 83.89, Quantidade = 20},
    new Product{Id = 1, Nome = "Garrafa 1L", Preco = 123.10, Quantidade = 25},
};

app.MapGet("/products", () =>
{
    return products;
});

app.MapGet("/products/{id}", (int id) =>
{
    var product = products.Find(p => p.Id == id);
    if (product is null)
        return Results.NotFound("Desculpe, o produto não existe.");

    return Results.Ok(product);
});

app.MapPost("/product", (Product product) =>
{
    var pro = products.Find(p => p.Id == product.Id);
    if (pro is not null)
        return Results.BadRequest("ID do produto ja cadastrada");

    products.Add(product);
    return Results.Ok(products);
});

app.MapPut("/products/{id}", (Product productUp, int id) =>
{
    var product = products.Find(p => p.Id == id);
    if (product is null)
        return Results.NotFound("Desculpe, o produto não existe.");

    product.Nome = productUp.Nome;
    product.Preco = productUp.Preco;
    product.Quantidade = productUp.Quantidade;

    return Results.Ok(products);
});

app.MapDelete("/products/{id}", (int id) =>
{
    var product = products.Find(p => p.Id == id);
    if (product is null)
        return Results.NotFound("Desculpe, o produto não existe.");

    products.Remove(product);

    return Results.Ok(products);
});

app.Run();

class Product
{
    public int Id { get; set; }
    public string Nome { get; set; }

    public Double Preco { get; set; }

    public int Quantidade { get; set; }
}
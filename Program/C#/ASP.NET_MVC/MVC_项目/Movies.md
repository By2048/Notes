[toc]

#### 开始
创建MVCmovies项目
- 创建Model->Movies.cs
- Instal-Package entityframework

#### Model - Movies.cs
```c#
namespace MVCMovies.Models
{
    public class Movies
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Point { get; set; }       
    }
}
```
#### MoviesContext
```c#
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using MVCMovies.Models;

namespace MVCMovies.DAL
{
    public class MoviesContext : DbContext
    {
        public MoviesContext() : base("MoviesContext") { }
        public DbSet<MVCMovies.Models.Movies> Movies { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}
```
#### MoviesInitializer
```c#
using System.Data.Entity;

namespace MVCMovies.DAL
{
    public class MoviesInitializer:DropCreateDatabaseIfModelChanges<MoviesContext>
    {
        protected override void Seed(MoviesContext context)
        {
            var movies = new List<MVCMovies.Models.Movies>
            {
                new MVCMovies.Models.Movies {ID=97414,Name="反贪风暴2  ",Point=5.3 },
                new MVCMovies.Models.Movies {ID=97411,Name="追凶者也   ",Point=7.2 },
                new MVCMovies.Models.Movies {ID=97407,Name="海底总动员2",Point=7.7 },
                new MVCMovies.Models.Movies {ID=97402,Name="被挠       ",Point=7.6 },
                new MVCMovies.Models.Movies {ID=97395,Name="黑处有什么 ",Point=6.7 }
            };
            movies.ForEach(tmp => context.Movies.Add(tmp));
            context.SaveChanges();
        }
    }
}
```
#### Controllers 创建 MoviesController.cs 使用 包含试图的MVC 5控制器（使用 Entity Framework）
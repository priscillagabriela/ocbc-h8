using Microsoft.EntityFrameworkCore;
using TodoAppWithJWT.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore.SqlServer;
//using Microsoft.EntityFrameworkCore.Tools;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Configuration.Json;

namespace TodoAppWithJWT.Data {
    public class ApiDbContext : IdentityDbContext {
        public virtual DbSet<ItemData> Items { get; set; }

        public ApiDbContext(DbContextOptions<ApiDbContext> options)
            : base(options) {
                
            }
    }
}
using System;
using MySqlConnector;
using Microsoft.EntityFrameworkCore;
using PaymentApi.Models;
using MySql.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore.SqlServer;
//using Microsoft.EntityFrameworkCore.Tools;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Configuration.Json;

namespace PaymentApi.Data
{
    public class ApiDbContext : IdentityDbContext {
        public virtual DbSet<PaymentDetailData> PaymentDetail { get; set; }
        public virtual DbSet<RefreshToken> RefreshTokens { get; set; }
        public ApiDbContext(DbContextOptions<ApiDbContext> options)
            : base(options) {
                
            }
            
        // public string ConnectionString { get; set; }
        // public ApiDbContext(string connectionString)
        // {
        //     this.ConnectionString = connectionString;
        // }

        // private MySqlConnection GetConnection()
        // {
        //     return new MySqlConnection(ConnectionString);
        // }
    }  
}
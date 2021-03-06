using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using PaymentApi.Models;
using PaymentApi.Data;
using MySql.Data;
using MySqlConnector;
using Microsoft.EntityFrameworkCore;
//using TempWeb.Data;
using Pomelo.EntityFrameworkCore.MySql.Infrastructure;
//using Microsoft.EntityFrameworkCore.Tools;
using Microsoft.EntityFrameworkCore.Sqlite;
using PaymentApi.Configuration;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.Extensions.Configuration.Json;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Swashbuckle.AspNetCore;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace PaymentApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            //services.Add(new ServiceDescriptor(typeof(Data.ApiDbContext), new Data.ApiDbContext(Configuration.GetConnectionString("DefaultConnection"))));
            //services.AddDbContextPool<ApiDbContext>(options => options.UseMySql(Configuration.GetConnectionString("DefaultConnection") ));   
            //services.AddMvc();
            //var connectionString = "Server=localhost;Port=3306;Database=PaymentDb;Uid=root;Pwd=root;SSL Mode=None";
            var connectionString = "server=remotemysql.com;user id=iX8a7U5geI;password=o9BYH3fU9q;database=iX8a7U5geI";
            var serverVersion = new MySqlServerVersion(new Version(8, 0, 26));

            services.AddDbContext<ApiDbContext>(
                dbContextOptions => dbContextOptions
                    .UseMySql(connectionString, serverVersion)
            );
            services.Configure<JwtConfig>(Configuration.GetSection("JwtConfig"));
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "PaymentApi", Version = "v1.0.0" });

                var securitySchema = new OpenApiSecurityScheme
                {
                    Description = "JWT Authorization header using the Bearer scheme. Example: \"Authorization: Bearer {token}\"",
                    Name = "Authorization",
                    In = ParameterLocation.Header,
                    Type = SecuritySchemeType.Http,
                    Scheme = "bearer",
                    Reference = new OpenApiReference
                    {
                        Type = ReferenceType.SecurityScheme,
                        Id = "Bearer"
                    }
                };

                c.AddSecurityDefinition("Bearer", securitySchema);

                var securityRequirement = new OpenApiSecurityRequirement
                {
                    { securitySchema, new[] { "Bearer" } }
                };

                c.AddSecurityRequirement(securityRequirement);

            });

            var key = Encoding.ASCII.GetBytes(Configuration["JwtConfig:Secret"]);
            var tokenValidationParams = new TokenValidationParameters {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(key),
                ValidateIssuer = false,
                ValidateAudience = false,
                ValidateLifetime = true,
                RequireExpirationTime = false,
                ClockSkew = TimeSpan.Zero
            };
            
            services.AddSingleton(tokenValidationParams);

            services.AddAuthentication(options => {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            })
        .AddJwtBearer(jwt => {
            //var key = Encoding.ASCII.GetBytes(Configuration["JwtConfig:Secret"]);
            jwt.SaveToken = true;
            jwt.TokenValidationParameters = tokenValidationParams; //{
                // ValidateIssuerSigningKey = true,
                // IssuerSigningKey = new SymmetricSecurityKey(key),
                // ValidateIssuer = false,
                // ValidateAudience = false,
                // ValidateLifetime = true,
                // RequireExpirationTime = false
            //};
        });

        services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
        .AddEntityFrameworkStores<ApiDbContext>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "PaymentApi v1"));
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
            app.UseAuthentication();
        }
    }
}

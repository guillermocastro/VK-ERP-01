# VK-ERP-01
Complete ERP Project.
## Goals
All Element from the Project in the same folder
Database in SQL Server
Pure .ASPNET Core Backend
Learn the new Flutter Frontend
## Preliminary States
Create Directory VK-ERP-01
Create Directory api for the backend
dotnet new mvc --auth Individual
update appsettings.json to setyp SQL Server database
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 2.2.6
Implement UseSqlServer in Services (Startup.cs)
dotnet ef database drop
dotnet ef migrations add InitialCreate
dotnet ef database update
Add some models
Add public DbSet<Process> Process { get; set; } to ApplicationDbContext.cs
dotnet ef migrations add m001
dotnet ef database update

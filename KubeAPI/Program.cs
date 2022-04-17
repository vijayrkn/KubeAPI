using System.Runtime.InteropServices;

var app = WebApplication.Create(args);
app.MapGet("/", () => $"{RuntimeInformation.FrameworkDescription} Web API running in {Environment.MachineName}");
app.Run();
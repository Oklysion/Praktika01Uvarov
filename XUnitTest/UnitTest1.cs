using Xunit;
using System.Data;
using Praktika01Uvarov;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using Moq;
using System.Reflection;

namespace XUnitTest
{
    public class ShiftComplexTests
    {
        private string GetConnStringFromConfig()
        {
            string connString = "";
            string configPath = Path.Combine(Application.StartupPath, "config.ini");

            if (File.Exists(configPath))
            {
                string[] lines = File.ReadAllLines(configPath);
                string server = "", port = "", database = "", user = "", password = "";

                foreach (string line in lines)
                {
                    if (line.StartsWith("Server=")) server = line.Replace("Server=", "");
                    if (line.StartsWith("Port=")) port = line.Replace("Port=", "");
                    if (line.StartsWith("Database=")) database = line.Replace("Database=", "");
                    if (line.StartsWith("User=")) user = line.Replace("User=", "");
                    if (line.StartsWith("Password=")) password = line.Replace("Password=", "");
                }

                connString = $"Server={server};Database={database};Port={port};Uid={user};Pwd={password};";
            }
            else
            {
                throw new FileNotFoundException($"Файл config.ini не найден по пути: {configPath}");
            }

            return connString;
        }
        [Fact]
        public void AddVospPlan_ShouldInsertRecord_WhenValidDataProvided()
        {
            // Arrange
            string connString = GetConnStringFromConfig();
            int countBefore, countAfter;

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                conn.Open();

                // Получаем количество записей до добавления
                using (MySqlCommand cmd = new MySqlCommand("SELECT COUNT(*) FROM Educational_work_plan", conn))
                {
                    countBefore = Convert.ToInt32(cmd.ExecuteScalar());
                }
                
                // Создаём реальную форму и устанавливаем значения через рефлексию
                var thisPlanVospitat = new ThisPlanVospitat();
                typeof(ThisPlanVospitat)
                    .GetField("txtNaprav", BindingFlags.NonPublic | BindingFlags.Instance)
                    ?.SetValue(thisPlanVospitat, new TextBox { Text = "Тематическое направление" });
                typeof(ThisPlanVospitat)
                    .GetField("txtNazvan", BindingFlags.NonPublic | BindingFlags.Instance)
                    ?.SetValue(thisPlanVospitat, new TextBox { Text = "Тестовое мероприятие" });
                // Аналогично для остальных полей...

                // Подменяем вызов окна на наш мок
                var form = new Form1("1", "Test User");
                form.conn = conn;

                // Используем рефлексию для подмены экземпляра формы
                typeof(Form1)
                    .GetField("thisPlanVospitat", BindingFlags.NonPublic | BindingFlags.Instance)
                    ?.SetValue(form, thisPlanVospitat);

                // Act
                form.AddVospPlan();

                // Получаем количество записей после добавления
                using (MySqlCommand cmdAfter = new MySqlCommand("SELECT COUNT(*) FROM Educational_work_plan", conn))
                {
                    countAfter = Convert.ToInt32(cmdAfter.ExecuteScalar());
                }
            }

            // Assert
            Assert.Equal(countBefore + 1, countAfter);
        }   
    }
}
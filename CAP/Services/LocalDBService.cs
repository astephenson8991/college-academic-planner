using CAP.Models;
using SQLite;
using System.Text.RegularExpressions;

namespace CAP.Services
{
    public class LocalDBService
    {
        private const string DB_NAME = "local_db";
        private readonly SQLiteAsyncConnection _connection;

        public LocalDBService()
        {
            _connection = new SQLiteAsyncConnection(Path.Combine(FileSystem.AppDataDirectory, DB_NAME));
            _connection.CreateTableAsync<Term>();
            _connection.CreateTableAsync<Course>();
            _connection.CreateTableAsync<Assessment>();
        }

        public static bool IsValidDate(DateTime start, DateTime end)
        {
            if (start <= end)
            {
                return true;
            }
            else { return false; }
        }

        public static bool IsValidEmail(string email)
        {
            string emailPattern = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";

            if (Regex.IsMatch(email, emailPattern))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //TERMS
        public async Task<List<Term>> GetTerms()
        {
            return await _connection.Table<Term>().ToListAsync();
        }

        public async Task<Term> GetTermById(int id)
        {
            return await _connection.Table<Term>().Where(x => x.Id == id).FirstOrDefaultAsync();
        }

        public async Task CreateTerm(Term term)
        {
            await _connection.InsertAsync(term);
        }

        public async Task UpdateTerm(Term term)
        {
            await _connection.UpdateAsync(term);
        }

        public async Task DeleteTerm(Term term)
        {
            await _connection.DeleteAsync(term);
        }

        //COURSES

        public async Task<List<Course>> GetCourses()
        {
            return await _connection.Table<Course>().ToListAsync();
        }

        public async Task<Course> GetCourseById(int id)
        {
            return await _connection.Table<Course>().Where(x => x.Id == id).FirstOrDefaultAsync();
        }

        public async Task CreateCourse(Course course)
        {
            await _connection.InsertAsync(course);
        }

        public async Task UpdateCourse(Course course)
        {
            await _connection.UpdateAsync(course);
        }

        public async Task DeleteCourse(Course course)
        {
            await _connection.DeleteAsync(course);
        }

        //ASSESSMENTS

        public async Task<List<Assessment>> GetAssessments()
        {
            return await _connection.Table<Assessment>().ToListAsync();
        }

        public async Task<Assessment> GetAssessmentById(int id)
        {
            return await _connection.Table<Assessment>().Where(x => x.Id == id).FirstOrDefaultAsync();
        }

        public async Task CreateAssessment(Assessment assessment)
        {
            await _connection.InsertAsync(assessment);
        }

        public async Task UpdateAssessment(Assessment assessment)
        {
            await _connection.UpdateAsync(assessment);
        }

        public async Task DeleteAssessment(Assessment assessment)
        {
            await _connection.DeleteAsync(assessment);
        }

        public async Task<List<Assessment>> GetOA()
        {
            return await _connection.Table<Assessment>().Where(x => x.IsObjectiveAssessment == true).ToListAsync();
        }

        public async Task<List<Assessment>> GetPA()
        {
            return await _connection.Table<Assessment>().Where(x => x.IsObjectiveAssessment == false).ToListAsync();
        }

        //SEARCHES

        public async Task<List<Term>> SearchTerm(string searchString)
        {
            try
            {
                var query = $"SELECT * FROM term WHERE name LIKE '%{searchString}%'";
                var result = await _connection.QueryAsync<Term>(query);
                return result;
            }
            catch (Exception)
            {
                return new List<Term>();
            }
        }

        public async Task<List<Course>> SearchCourse(string searchString)
        {
            try
            {
                var query = $"SELECT * FROM course WHERE name LIKE '%{searchString}%'";
                var result = await _connection.QueryAsync<Course>(query);
                return result;
            }
            catch (Exception)
            {
                return new List<Course>();
            }
        }

        public async Task<List<Assessment>> SearchAssessment(string searchString)
        {
            try
            {
                var query = $"SELECT * FROM assessment WHERE name LIKE '%{searchString}%'";
                var result = await _connection.QueryAsync<Assessment>(query);
                return result;
            }
            catch (Exception)
            {
                return new List<Assessment>();
            }
        }
    }
}

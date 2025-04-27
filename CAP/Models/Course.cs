using SQLite;

namespace CAP.Models
{
    public class Course
    {
        [PrimaryKey]
        [AutoIncrement]
        [SQLite.Column("id")]
        public int Id { get; set; }

        [SQLite.Column("name")]
        public string CourseName { get; set; }

        [SQLite.Column("start")]
        public DateTime Start { get; set; }

        [SQLite.Column("end")]
        public DateTime End { get; set; }

        [SQLite.Column("status")]
        public string Status { get; set; }

        [SQLite.Column("instructor_name")]
        public string InstName { get; set; }

        [SQLite.Column("instructor_number")]
        public string InstNumber { get; set; }

        [SQLite.Column("instructor_email")]
        public string InstEmail { get; set; }

        [SQLite.Column("oaId")]
        public int OA { get; set; }

        [SQLite.Column("paId")]
        public int PA { get; set; }

        [SQLite.Column("notes")]
        public string Notes { get; set; }

        [SQLite.Column("notify")]
        public bool Notify { get; set; }

    }
}

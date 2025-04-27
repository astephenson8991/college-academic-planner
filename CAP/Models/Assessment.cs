using SQLite;

namespace CAP.Models
{
    [SQLite.Table("assessment")]

    public class Assessment
    {
        [PrimaryKey]
        [AutoIncrement]
        [SQLite.Column("id")]
        public int Id { get; set; }

        [SQLite.Column("name")]
        public string AssessmentName { get; set; }

        [SQLite.Column("start")]
        public DateTime Start { get; set; }

        [SQLite.Column("end")]
        public DateTime End { get; set; }

        [SQLite.Column("is_OA")]
        public bool IsObjectiveAssessment { get; set; }

        [SQLite.Column("notify")]
        public bool Notify { get; set; }

    }
}

using SQLite;
using System.ComponentModel.DataAnnotations.Schema;

namespace CAP.Models
{
    [SQLite.Table("term")]
    public class Term
    {
        [PrimaryKey]
        [AutoIncrement]
        [SQLite.Column("id")]
        public int Id { get; set; }

        [SQLite.Column("name")]
        public string TermName { get; set;}

        [SQLite.Column("start")]
        public DateTime Start { get; set;}

        [SQLite.Column("end")]
        public DateTime End { get; set;}

        [SQLite.Column("c1")]
        public int Course1 { get; set; }

        [SQLite.Column("c2")]
        public int Course2 { get; set; }

        [SQLite.Column("c3")]
        public int Course3 { get; set; }

        [SQLite.Column("c4")]
        public int Course4 { get; set; }

        [SQLite.Column("c5")]
        public int Course5 { get; set; }

        [SQLite.Column("c6")]
        public int Course6 { get; set; }
    }
}

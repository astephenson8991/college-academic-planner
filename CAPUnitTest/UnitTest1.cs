namespace CAPUnitTest
{
    public class DateValidation
    {
        [Fact]
        public void IsValidDate_ReturnsTrue()
        {
            DateTime start = new DateTime(2024, 1, 1);
            DateTime end = new DateTime(2024, 1, 31);
            bool isValid = LocalDBService.IsValidDate(start, end);
            Assert.True(isValid);
        }

        [Fact]
        public void IsValidDate_ReturnsFalse()
        {
            DateTime start = new DateTime(2024, 2, 1);
            DateTime end = new DateTime(2024, 1, 31);
            bool isValid = LocalDBService.IsValidDate(start, end);
            Assert.False(isValid);
        }
    }

    public class EmailValidation
    {
        [Fact]
        public void IsValidEmail_ReturnsTrue()
        {
            string email = "abc@google.com";
            bool isValid = LocalDBService.IsValidEmail(email);
            Assert.True(isValid);
        }

        [Fact]
        public void IsValidEmail_ReturnsFalse()
        {
            string email1 = "@";
            string email2 = ".com";
            string email3 = " ";
            string email4 = "@.com";
            bool isValid1 = LocalDBService.IsValidEmail(email1);
            bool isValid2 = LocalDBService.IsValidEmail(email2);
            bool isValid3 = LocalDBService.IsValidEmail(email3);
            bool isValid4 = LocalDBService.IsValidEmail(email4);
            Assert.False(isValid1);
            Assert.False(isValid2);
            Assert.False(isValid3);
            Assert.False(isValid4);
        }
    }
}
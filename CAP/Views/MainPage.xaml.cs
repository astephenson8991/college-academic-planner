using CAP.Models;
using CAP.Services;
using CAP.Views;
using Plugin.LocalNotification;

namespace CAP
{
    public partial class MainPage : ContentPage
    {
        private readonly LocalDBService _dbService;
        private int idCount = 0;
        private int notifyDelay = 0;

        public MainPage(LocalDBService dbService)
        {
            InitializeComponent();

            _dbService = dbService;


            CourseNotify();
            AssessmentNotify();
        }

        private async void CourseNotify()
        {
            List<Course> courseList = await _dbService.GetCourses();

            foreach (var course in courseList)
            {
                if (course.Start.Date == DateTime.Today.Date && course.Notify)
                {
                    idCount++;
                    notifyDelay += 5;
                    var request = new NotificationRequest
                    {
                        NotificationId = idCount,
                        Title = $"{course.CourseName} starts today!",
                        Subtitle = "New course",
                        Description = $"{course.CourseName} starts today and ends {course.End.Date}.",
                        Schedule = new NotificationRequestSchedule
                        {
                            NotifyTime = DateTime.Now.AddSeconds(notifyDelay)
                        }
                    };
                    await LocalNotificationCenter.Current.Show(request);
                }
                else if (course.End.Date == DateTime.Today.Date && course.Notify)
                {
                    idCount++;
                    notifyDelay += 5;
                    var request = new NotificationRequest
                    {
                        NotificationId = idCount,
                        Title = $"{course.CourseName} ends today!",
                        Subtitle = "End of course",
                        Schedule = new NotificationRequestSchedule
                        {
                            NotifyTime = DateTime.Now.AddSeconds(notifyDelay)
                        }
                    };
                    await LocalNotificationCenter.Current.Show(request);
                }
            }
        }

        private async void AssessmentNotify()
        {
            List<Assessment> assessmentList = await _dbService.GetAssessments();

            foreach (var assessment in assessmentList)
            {
                if (assessment.Start.Date == DateTime.Today.Date && assessment.Notify)
                {
                    idCount++;
                    notifyDelay += 5;
                    var request = new NotificationRequest
                    {
                        NotificationId = idCount,
                        Title = "Assessment Today!",
                        Subtitle = "New Assessment",
                        Description = $"{assessment.AssessmentName} starts today.",
                        Schedule = new NotificationRequestSchedule
                        {
                            NotifyTime = DateTime.Now.AddSeconds(notifyDelay)
                        }
                    };
                    await LocalNotificationCenter.Current.Show(request);
                }
                else if (assessment.End.Date == DateTime.Today.Date && assessment.Notify)
                {
                    idCount++;
                    notifyDelay += 5;
                    var request = new NotificationRequest
                    {
                        NotificationId = idCount,
                        Title = $"{assessment.AssessmentName} ends today!",
                        Subtitle = "Assessment Due",
                        Schedule = new NotificationRequestSchedule
                        {
                            NotifyTime = DateTime.Now.AddSeconds(notifyDelay)
                        }
                    };
                    await LocalNotificationCenter.Current.Show(request);
                }
            }
        }

        private async void TermsButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Terms(dbService: _dbService));
        }

        private async void CoursesButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Courses(dbService: _dbService));
        }

        private async void AssessmentsButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Assessments(dbService: _dbService));
        }

        private async void SearchButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Reports(dbService: _dbService));

        }
    }

}

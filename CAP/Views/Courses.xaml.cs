using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class Courses : ContentPage
{
    private readonly LocalDBService _dbService;
    private List<Course> _courses;

    public Courses(LocalDBService dbService)
	{
		InitializeComponent();
        _dbService = dbService;
        GetCourseList();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        GetCourseList();
    }

    private async void GetCourseList()
    {
        _courses = await _dbService.GetCourses();
        CoursesListView.ItemsSource = _courses;
    }

    private async void CoursesListView_ItemTapped(object sender, ItemTappedEventArgs e)
    {
        var course = (Course)e.Item;
        var action = await DisplayActionSheet("Options", "Cancel", null, "View", "Edit", "Delete");

        switch (action)
        {
            case "View":
                await Navigation.PushAsync(new ViewCourse(dbService: _dbService, course));
                break;

            case "Edit":
                await Navigation.PushAsync(new EditCourse(dbService: _dbService, course));
                break;

            case "Delete":
                var confirm = DisplayAlert("Confirmation", "Are you sure you want to delete this course?", "Yes", "No");
                if (await confirm)
                {
                    await _dbService.DeleteCourse(course);
                    GetCourseList();
                    break;
                }
                else { break; }
        }
    }

    private async void AddButton_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AddCourse(dbService: _dbService));
    }
}
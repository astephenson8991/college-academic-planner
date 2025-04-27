using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class AddTerm : ContentPage
{
    private readonly LocalDBService _dbService;


    public AddTerm(LocalDBService dbService)
	{
		InitializeComponent();
        _dbService = dbService;
        FillPickers();
    }

    private async void FillPickers()
    {
        List<Course> courses = await _dbService.GetCourses();
        Course1.ItemsSource = courses;
        Course2.ItemsSource = courses;
        Course3.ItemsSource = courses;
        Course4.ItemsSource = courses;
        Course5.ItemsSource= courses;
        Course6.ItemsSource = courses;
    }

    private static Course GetCoursePickerInfo(Picker p)
    {
        if (p.SelectedIndex != -1)
        {
            return (Course) p.SelectedItem;
        }
        else
        {
            return new Course();
        }
    }

    private async void SaveButton_Clicked(object sender, EventArgs e)
    {
        bool validDate = LocalDBService.IsValidDate(StartPicker.Date, EndPicker.Date);

        if (!(string.IsNullOrEmpty(nameEntryField.Text)) && (validDate))
        {
            Course c1 = GetCoursePickerInfo(Course1);
            Course c2 = GetCoursePickerInfo(Course2);
            Course c3 = GetCoursePickerInfo(Course3);
            Course c4 = GetCoursePickerInfo(Course4);
            Course c5 = GetCoursePickerInfo(Course5);
            Course c6 = GetCoursePickerInfo(Course6);

            await _dbService.CreateTerm(new Term
            {
                TermName = nameEntryField.Text,
                Start = StartPicker.Date,
                End = EndPicker.Date,
                Course1 = c1.Id,
                Course2 = c2.Id,
                Course3 = c3.Id,
                Course4 = c4.Id,
                Course5 = c5.Id,
                Course6 = c6.Id,
            });

            await Navigation.PopAsync();
        }
        else
        {
            await DisplayAlert("Incomplete Fields", "Please ensure all fields are completed and the start date is before the end date.", "Close");
        }
    }

    private void Btn1_Clicked(object sender, EventArgs e)
    {
        Course1.SelectedIndex = -1;
    }

    private void Btn2_Clicked(object sender, EventArgs e)
    {
        Course2.SelectedIndex = -1;
    }

    private void Btn3_Clicked(object sender, EventArgs e)
    {
        Course3.SelectedIndex = -1;
    }

    private void Btn4_Clicked(object sender, EventArgs e)
    {
        Course4.SelectedIndex = -1;
    }

    private void Btn5_Clicked(object sender, EventArgs e)
    {
        Course5.SelectedIndex = -1;
    }

    private void Btn6_Clicked(object sender, EventArgs e)
    {
        Course6.SelectedIndex = -1;
    }
}
using CAP.Models;
using CAP.Services;
using System.Text.RegularExpressions;

namespace CAP.Views;

public partial class AddCourse : ContentPage
{
	private readonly LocalDBService _dbService;

	public AddCourse(LocalDBService dbService)
	{
		InitializeComponent();
		_dbService = dbService;

        Task.Run(async () => OAPicker.ItemsSource = await _dbService.GetOA());
        Task.Run(async () => PAPicker.ItemsSource = await _dbService.GetPA());
    }

    private async void SaveButton_Clicked(object sender, EventArgs e)
    {
        DateTime _start = StartPicker.Date;
        DateTime _end = EndPicker.Date;

        if (!(string.IsNullOrEmpty(IEmail.Text)) && (LocalDBService.IsValidEmail(IEmail.Text)) && (StatusPicker.SelectedIndex != -1) && !(string.IsNullOrEmpty(IName.Text)) && 
            !(string.IsNullOrEmpty(INumber.Text)) && !(string.IsNullOrEmpty(CourseNameEntryField.Text)) && (_start <= _end) && (OAPicker.SelectedIndex != -1)
            && (PAPicker.SelectedIndex != -1))
        {
            Assessment oa = (Assessment)OAPicker.SelectedItem;
            Assessment pa = (Assessment)PAPicker.SelectedItem;

            await _dbService.CreateCourse(new Course
            {
                CourseName = CourseNameEntryField.Text,
                Start = _start,
                End = _end,
                Status = StatusPicker.SelectedItem.ToString(),
                InstName = IName.Text,
                InstNumber = INumber.Text,
                InstEmail = IEmail.Text,
                OA = oa.Id,
                PA = pa.Id,
                Notes = NotesEditor.Text,
                Notify = NotifySwitch.IsToggled
            }); ;

            await Navigation.PopAsync();
        }
        else
        {
            await DisplayAlert("Incomplete Fields", "Please ensure all fields are completed and the Start date is before the End date.", "Close");
        }
    }
}
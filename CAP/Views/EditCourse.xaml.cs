using CAP.Models;
using CAP.Services;
using System.Text.RegularExpressions;

namespace CAP.Views;

public partial class EditCourse : ContentPage
{
	private readonly LocalDBService _dbService;
    private Course _course;

    public EditCourse(LocalDBService dbService, Course course)
	{
		InitializeComponent();
		_dbService = dbService;
        _course = course;

        Task.Run(async () => OAPicker.ItemsSource = await _dbService.GetOA());
        Task.Run(async () => PAPicker.ItemsSource = await _dbService.GetPA());

        PopulateData();
	}

    private void PopulateData()
    {
        CourseNameEntryField.Text = _course.CourseName;
        StartPicker.Date = _course.Start;
        EndPicker.Date = _course.End;

        foreach (var item in StatusPicker.Items)
        {
            if (item == _course.Status)
            {
                StatusPicker.SelectedItem = item;
                break;
            }
        }

        IName.Text = _course.InstName;
        INumber.Text = _course.InstNumber;
        IEmail.Text = _course.InstEmail;
        NotesEditor.Text=_course.Notes;
        NotifySwitch.IsToggled = _course.Notify;
        Thread.Sleep(500);

        for (int i = 0; i < OAPicker.Items.Count; i++)
        {
            OAPicker.SelectedIndex = i;
            Assessment a = (Assessment)OAPicker.SelectedItem;

            if (a.Id == _course.OA)
            {
                OAPicker.SelectedIndex = i;
                break;
            }
            else
            {
                OAPicker.SelectedIndex = -1;
                continue;
            }
        }
        for (int i = 0; i < PAPicker.Items.Count; i++)
        {
            PAPicker.SelectedIndex = i;
            Assessment a = (Assessment)PAPicker.SelectedItem;

            if (a.Id == _course.PA)
            {
                PAPicker.SelectedIndex = i;
                break;
            }
            else
            {
                PAPicker.SelectedIndex = -1;
                continue;
            }
        }
    }

    private async void SaveButton_Clicked(object sender, EventArgs e)
    {
        DateTime _start = StartPicker.Date;
        DateTime _end = EndPicker.Date;
        Assessment _oa = (Assessment)OAPicker.SelectedItem;
        Assessment _pa = (Assessment)PAPicker.SelectedItem;

        if (!(string.IsNullOrEmpty(IEmail.Text)) && (LocalDBService.IsValidEmail(IEmail.Text)) && (StatusPicker.SelectedIndex != -1) && !(string.IsNullOrEmpty(IName.Text)) &&
            !(string.IsNullOrEmpty(INumber.Text)) && !(string.IsNullOrEmpty(CourseNameEntryField.Text)) && (_start <= _end) && (OAPicker.SelectedIndex != -1)
            && (PAPicker.SelectedIndex != -1))
        {
            _course.CourseName = CourseNameEntryField.Text;
            _course.Start = _start;
            _course.End = _end;
            _course.Status = (string)StatusPicker.SelectedItem;
            _course.InstName = IName.Text;
            _course.InstNumber = INumber.Text;
            _course.InstEmail = IEmail.Text;
            _course.OA = _oa.Id;
            _course.PA = _pa.Id;
            _course.Notes = NotesEditor.Text;
            _course.Notify = NotifySwitch.IsToggled;

            await _dbService.UpdateCourse(_course);

            await Navigation.PopAsync();
        }
        else
        {
            await DisplayAlert("Incomplete Fields", "Please ensure all fields are completed and the Start date is before the End date.", "Close");
        }
    }
}
using CAP.Models;
using CAP.Services;
using static System.Net.Mime.MediaTypeNames;

namespace CAP.Views;

public partial class ViewCourse : ContentPage
{
	private readonly LocalDBService _dbService;
	private Course _course;
	private Assessment _oa;
	private Assessment _pa;

	public ViewCourse(LocalDBService dbService, Course course)
	{
		InitializeComponent();
		_dbService = dbService;
		_course = course;

		GenerateData();
	}

	private async void GenerateData()
	{
		try
		{
			_oa = await _dbService.GetAssessmentById(_course.OA);
			OALabel.Text = _oa.AssessmentName;
			OAStart.Text = _oa.Start.ToShortDateString();
			OAEnd.Text = _oa.End.ToShortDateString();
		}
		catch (Exception ex) { await DisplayAlert("Error", "Objective assessment could not be found. It may have been deleted.", "Ok"); }
        try
        {
            _pa = await _dbService.GetAssessmentById(_course.PA);
            PALabel.Text = _pa.AssessmentName;
            PAStart.Text = _pa.Start.ToShortDateString();
            PAEnd.Text = _pa.End.ToShortDateString();
        }
        catch (Exception ex) { await DisplayAlert("Error", "Performance assessment could not be found. It may have been deleted.", "Ok"); }

        CourseNameLabel.Text = _course.CourseName;
		CStart.Text = _course.Start.ToShortDateString();
		CEnd.Text = _course.End.ToShortDateString();
		CourseStatusLabel.Text = _course.Status;
		INameLabel.Text = _course.InstName;
		INumberLabel.Text = _course.InstNumber;
		IEmailLabel.Text = _course.InstEmail;
		NotesLabel.Text = _course.Notes;
	}

    private async void ShareButton_Clicked(object sender, EventArgs e)
    {
		if (!string.IsNullOrEmpty(NotesLabel.Text))
		{
			await Share.Default.RequestAsync(new ShareTextRequest
			{
				Text = NotesLabel.Text,
				Title = "My course notes"
			});
		}
		else
		{
			await DisplayAlert("Add Notes", "This courses' notes are empty. Add some notes before sharing.", "Ok");
		}
    }
}
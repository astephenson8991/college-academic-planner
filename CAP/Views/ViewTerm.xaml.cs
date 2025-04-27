using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class ViewTerm : ContentPage
{
    private readonly LocalDBService _dbService;
	private readonly Term _term;
	private Course C1;
	private Course C2;
	private Course C3;
	private Course C4;
	private Course C5;
	private Course C6;

	public ViewTerm(LocalDBService dbService, Term term)
	{
		InitializeComponent();
		_dbService = dbService;
		_term = term;
		
		NameLabel.Text = term.TermName;
		TStart.Text = term.Start.ToShortDateString();
		TEnd.Text = term.End.ToShortDateString();

		GenerateCourseData();
	}

	private async void GenerateCourseData()
	{
		if (_term.Course1 != 0)
		{
            try
            {
                C1 = await _dbService.GetCourseById(_term.Course1);
                C1Name.IsVisible = true;
                C1Stack.IsVisible = true;
                C1Name.Text = C1.CourseName;
                C1Start.Text = C1.Start.ToShortDateString();
                C1End.Text = C1.End.ToShortDateString();
            }
            catch (Exception)
            {
                await DisplayAlert("Error", "Course 1 could not be found. It may have been deleted.", "Close");
            }
        }
        if (_term.Course2 != 0)
        {
            try
            {
                C2 = await _dbService.GetCourseById(_term.Course2);
                C2Name.IsVisible = true;
                C2Stack.IsVisible = true;
                C2Name.Text = C2.CourseName;
                C2Start.Text = C2.Start.ToShortDateString();
                C2End.Text = C2.End.ToShortDateString();
            }
            catch (Exception)
            {
                await DisplayAlert("Error", "Course 2 could not be found. It may have been deleted.", "Close");
            }
        }
        if (_term.Course3 != 0)
        {
            try
            {
                C3 = await _dbService.GetCourseById(_term.Course3);
                C3Name.IsVisible = true;
                C3Stack.IsVisible = true;
                C3Name.Text = C3.CourseName;
                C3Start.Text = C3.Start.ToShortDateString();
                C3End.Text = C3.End.ToShortDateString();
            }
            catch (Exception)
            {
                await DisplayAlert("Error", "Course 3 could not be found. It may have been deleted.", "Close");
            }
        }
        if (_term.Course4 != 0)
        {
            try
            {
                C4 = await _dbService.GetCourseById(_term.Course4);
                C4Name.IsVisible = true;
                C4Stack.IsVisible = true;
                C4Name.Text = C4.CourseName;
                C4Start.Text = C4.Start.ToShortDateString();
                C4End.Text = C4.End.ToShortDateString();
            }
            catch (Exception)
            {
                await DisplayAlert("Error", "Course 4 could not be found. It may have been deleted.", "Close");
            }
        }
        if (_term.Course5 != 0)
        {
            try
            {
                C5 = await _dbService.GetCourseById(_term.Course5);
                C5Name.IsVisible = true;
                C5Stack.IsVisible = true;
                C5Name.Text = C5.CourseName;
                C5Start.Text = C5.Start.ToShortDateString();
                C5End.Text = C5.End.ToShortDateString();
            }
            catch (Exception)
            {
                await DisplayAlert("Error", "Course 5 could not be found. It may have been deleted.", "Close");
            }
        }
        if (_term.Course6 != 0)
        {
            try
            {
                C6 = await _dbService.GetCourseById(_term.Course6);
                C6Name.IsVisible = true;
                C6Stack.IsVisible = true;
                C6Name.Text = C6.CourseName;
                C6Start.Text = C6.Start.ToShortDateString();
                C6End.Text = C6.End.ToShortDateString();
            }
            catch (Exception)
            {
                await DisplayAlert("Error", "Course 6 could not be found. It may have been deleted.", "Close");
            }
        }
	}
}
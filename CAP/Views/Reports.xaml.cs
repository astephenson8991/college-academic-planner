using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class Reports : ContentPage
{
    private readonly LocalDBService _dbService;

    public Reports(LocalDBService dbService)
	{
		InitializeComponent();
        _dbService = dbService;
	}

    private async void SearchBtn_Clicked(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(SearchBar.Text))
        {
            string s = SearchBar.Text.Trim();
            List<Term> terms = await _dbService.SearchTerm(s);
            List<Course> courses = await _dbService.SearchCourse(s);
            List<Assessment> assessments = await _dbService.SearchAssessment(s);
            await Navigation.PushAsync(new SearchResult(terms, courses, assessments));
        }
        else
        {
            await DisplayAlert("Incomplete Field", "Please enter the search criteria.", "Close");
        }
    }
}
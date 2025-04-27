using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class Assessments : ContentPage
{
	private readonly LocalDBService _dbService;
    private List<Assessment> _assessmentList;

	public Assessments(LocalDBService dbService)
	{
		InitializeComponent();
		_dbService = dbService;
        GetAssessmentList();
	}

    protected override void OnAppearing()
    {
        base.OnAppearing();
        GetAssessmentList();
    }

    private async void GetAssessmentList()
    {
        _assessmentList = await _dbService.GetAssessments();
        AssessmentsListView.ItemsSource = _assessmentList;
    }

    private async void AssessmentsListView_ItemTapped(object sender, ItemTappedEventArgs e)
    {
        var assessment = (Assessment)e.Item;
        var action = await DisplayActionSheet("Options", "Cancel", null, "View", "Edit", "Delete");

        switch (action)
        {
            case "View":
                await Navigation.PushAsync(new ViewAssessment(assessment));
                break;

            case "Edit":
                await Navigation.PushAsync(new EditAssessment(dbService: _dbService, assessment));
                break;

            case "Delete":
                var confirm = DisplayAlert("Confirmation", "Are you sure you want to delete this assessment?", "Yes", "No");
                if (await confirm)
                {
                    await _dbService.DeleteAssessment(assessment);
                    GetAssessmentList();
                    break;
                }
                else { break; }
        }
    }

    private async void AddButton_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AddAssessment(dbService: _dbService));
    }
}
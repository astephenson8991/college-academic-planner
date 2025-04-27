using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class AddAssessment : ContentPage
{
	private readonly LocalDBService _dbService;
	public AddAssessment(LocalDBService dbService)
	{
		InitializeComponent();
		_dbService = dbService;
	}

    private async void SaveButton_Clicked(object sender, EventArgs e)
    {
        if (!(string.IsNullOrEmpty(AssessmentNameEntryField.Text)) && (StartPicker.Date <= EndPicker.Date))
        {
            bool OaPa = false;
            if (ObjectiveRadio.IsChecked == true)
            {
                OaPa = true;
            }

            await _dbService.CreateAssessment(new Assessment
            {
                AssessmentName = AssessmentNameEntryField.Text,
                Notify = NotifySwitch.IsToggled,
                Start = StartPicker.Date,
                End = EndPicker.Date,
                IsObjectiveAssessment = OaPa
            });

            await Navigation.PopAsync();
        }
        else
        {
            await DisplayAlert("Incomplete Fields", "Please ensure all fields are completed and the start date is before the end date.", "Close");
        }
    }
}
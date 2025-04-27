using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class EditAssessment : ContentPage
{
    private readonly LocalDBService _dbService;
    private Assessment _assessment;

	public EditAssessment(LocalDBService dbService, Assessment assessment)
	{
		InitializeComponent();
        _dbService = dbService;
        _assessment = assessment;
        GenerateData();
	}

	private void GenerateData()
	{
        AssessmentNameEntryField.Text = _assessment.AssessmentName;
        StartPicker.Date = _assessment.Start;
        EndPicker.Date = _assessment.End;
        NotifySwitch.IsToggled = _assessment.Notify;
        if (_assessment.IsObjectiveAssessment)
        {
            ObjectiveRadio.IsChecked = true;
        }
        else
        {
            PerformanceRadio.IsChecked = true;
        }
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
            _assessment.AssessmentName = AssessmentNameEntryField.Text;
            _assessment.Start = StartPicker.Date;
            _assessment.End = EndPicker.Date;
            _assessment.Notify = NotifySwitch.IsToggled;
            _assessment.IsObjectiveAssessment = OaPa;

            await _dbService.UpdateAssessment(_assessment);

            await Navigation.PopAsync();
        }
        else
        {
            await DisplayAlert("Incomplete Fields", "Please ensure all fields are completed and the Start date is before the End date.", "Close");
        }
    }
}
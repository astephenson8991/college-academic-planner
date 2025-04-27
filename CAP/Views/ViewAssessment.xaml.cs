using CAP.Models;

namespace CAP.Views;

public partial class ViewAssessment : ContentPage
{
    private Assessment _assessment;

    public ViewAssessment(Assessment assessment)
	{
		InitializeComponent();
        _assessment = assessment;

        GenerateData();
	}

    private void GenerateData()
    {
        AssessmentNameLabel.Text = _assessment.AssessmentName;
        AStart.Text = _assessment.Start.ToShortDateString();
        AEnd.Text = _assessment.End.ToShortDateString();
        if (_assessment.IsObjectiveAssessment)
        {
            AssessmentTypeLabel.Text = "Objective Assessment";
        }
    }
}
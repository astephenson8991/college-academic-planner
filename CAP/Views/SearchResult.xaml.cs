using CAP.Models;

namespace CAP.Views;

public partial class SearchResult : ContentPage
{
	public SearchResult(List<Term> terms, List<Course> courses, List<Assessment> assessments)
	{
		InitializeComponent();
		TermsListView.ItemsSource = terms;
		CoursesListView.ItemsSource = courses;
		AssessmentsListView.ItemsSource = assessments;
		CheckEmptyLists(terms, courses, assessments);
    }

	private void CheckEmptyLists(List<Term> terms, List<Course> courses, List<Assessment> assessments)
	{
		if (terms.Count == 0)
		{
			TermResultsLabel.IsVisible = true;
		}
        if (courses.Count == 0)
        {
            CourseResultsLabel.IsVisible = true;
        }
        if (assessments.Count == 0)
        {
            AssessmentResultsLabel.IsVisible = true;
        }
    }
}
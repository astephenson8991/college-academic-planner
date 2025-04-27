using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class EditTerm : ContentPage
{
    private readonly LocalDBService _dbService;
    private readonly Term _term;

    public EditTerm(LocalDBService dbService, Term term)
	{
		InitializeComponent();
        _dbService = dbService;
        _term = term;

        FillPickers();
        Thread.Sleep(300);
        PopulateData();
    }

    private async void FillPickers()
    {
        List<Course> courses = await _dbService.GetCourses();
        Course1.ItemsSource = courses;
        Course2.ItemsSource = courses;
        Course3.ItemsSource = courses;
        Course4.ItemsSource = courses;
        Course5.ItemsSource = courses;
        Course6.ItemsSource = courses;
    }

    private void PopulateData()
    {
        nameEntryField.Text = _term.TermName;
        StartPicker.Date = _term.Start;
        EndPicker.Date = _term.End;

        for (int i = 0; i < Course1.Items.Count; i++)
        {
            Course1.SelectedIndex = i;
            Course c = (Course)Course1.SelectedItem;

            if (c.Id == _term.Course1)
            {
                Course1.SelectedIndex = i;
                break;
            }
            else
            {
                Course1.SelectedIndex = -1;
                continue;
            }
        }
        for (int i = 0; i < Course2.Items.Count; i++)
        {
            Course2.SelectedIndex = i;
            Course c = (Course)Course2.SelectedItem;

            if (c.Id == _term.Course2)
            {
                Course2.SelectedIndex = i;
                break;
            }
            else
            {
                Course2.SelectedIndex = -1;
                continue;
            }
        }
        for (int i = 0; i < Course3.Items.Count; i++)
        {
            Course3.SelectedIndex = i;
            Course c = (Course)Course3.SelectedItem;

            if (c.Id == _term.Course3)
            {
                Course3.SelectedIndex = i;
                break;
            }
            else
            {
                Course3.SelectedIndex = -1;
                continue;
            }
        }
        for (int i = 0; i < Course4.Items.Count; i++)
        {
            Course4.SelectedIndex = i;
            Course c = (Course)Course4.SelectedItem;

            if (c.Id == _term.Course4)
            {
                Course4.SelectedIndex = i;
                break;
            }
            else
            {
                Course4.SelectedIndex = -1;
                continue;
            }
        }
        for (int i = 0; i < Course5.Items.Count; i++)
        {
            Course5.SelectedIndex = i;
            Course c = (Course)Course5.SelectedItem;

            if (c.Id == _term.Course5)
            {
                Course5.SelectedIndex = i;
                break;
            }
            else
            {
                Course5.SelectedIndex = -1;
                continue;
            }
        }
        for (int i = 0; i < Course6.Items.Count; i++)
        {
            Course6.SelectedIndex = i;
            Course c = (Course)Course6.SelectedItem;

            if (c.Id == _term.Course6)
            {
                Course6.SelectedIndex = i;
                break;
            }
            else
            {
                Course6.SelectedIndex = -1;
                continue;
            }
        }
    }

    private static Course GetCoursePickerInfo(Picker p)
    {
        if (p.SelectedIndex != -1)
        {
            return (Course)p.SelectedItem;
        }
        else
        {
            return new Course();
        }
    }

    private async void SaveButton_Clicked(object sender, EventArgs e)
    {
        if (!(string.IsNullOrEmpty(nameEntryField.Text)) && (StartPicker.Date <= EndPicker.Date))
        {
            Course c1 = GetCoursePickerInfo(Course1);
            Course c2 = GetCoursePickerInfo(Course2);
            Course c3 = GetCoursePickerInfo(Course3);
            Course c4 = GetCoursePickerInfo(Course4);
            Course c5 = GetCoursePickerInfo(Course5);
            Course c6 = GetCoursePickerInfo(Course6);

            _term.TermName = nameEntryField.Text;
            _term.Start = StartPicker.Date;
            _term.End = EndPicker.Date;
            _term.Course1 = c1.Id;
            _term.Course2 = c2.Id;
            _term.Course3 = c3.Id;
            _term.Course4 = c4.Id;
            _term.Course5 = c5.Id;
            _term.Course6 = c6.Id;

            await _dbService.UpdateTerm(_term);

            await Navigation.PopAsync();
        }
        else
        {
            await DisplayAlert("Incomplete Fields", "Please ensure all fields are completed and the start date is before the end date.", "Close");
        }
    }
    private void Btn1_Clicked(object sender, EventArgs e)
    {
        Course1.SelectedIndex = -1;
    }

    private void Btn2_Clicked(object sender, EventArgs e)
    {
        Course2.SelectedIndex = -1;
    }

    private void Btn3_Clicked(object sender, EventArgs e)
    {
        Course3.SelectedIndex = -1;
    }

    private void Btn4_Clicked(object sender, EventArgs e)
    {
        Course4.SelectedIndex = -1;
    }

    private void Btn5_Clicked(object sender, EventArgs e)
    {
        Course5.SelectedIndex = -1;
    }

    private void Btn6_Clicked(object sender, EventArgs e)
    {
        Course6.SelectedIndex = -1;
    }

}
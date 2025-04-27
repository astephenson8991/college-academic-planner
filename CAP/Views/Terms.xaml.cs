using CAP.Models;
using CAP.Services;

namespace CAP.Views;

public partial class Terms : ContentPage
{
    private readonly LocalDBService _dbService;
    private List<Term> _terms;
    public Terms(LocalDBService dbService)
    {
        InitializeComponent();
        _dbService = dbService;
        GetTermsList();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        GetTermsList();
    }

    private async void GetTermsList()
    {
        _terms = await _dbService.GetTerms();
        termsListView.ItemsSource = _terms;
    }

    private async void TermsListView_ItemTapped(object sender, ItemTappedEventArgs e)
    {
        var term = (Term)e.Item;
        var action = await DisplayActionSheet("Options", "Cancel", null, "View", "Edit", "Delete");

        switch (action)
        {
            case "View":
                await Navigation.PushAsync(new ViewTerm(dbService: _dbService, term));
                break;

            case "Edit":
                await Navigation.PushAsync(new EditTerm(dbService: _dbService, term));
                break;

            case "Delete":
                var confirm = DisplayAlert("Confirmation", "Are you sure you want to delete this term?", "Yes", "No");
                if (await confirm)
                {
                    await _dbService.DeleteTerm(term);
                    GetTermsList();
                    break;
                }
                else { break; }
        }
    }

    private async void AddButton_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AddTerm(dbService: _dbService));
    }
}
using RamirezSolution.Data.Classlibrary;
namespace RamirezSolution.Data.Model
{
    public class EventLogic
    {
        private static readonly List<string> colorClasses = new List<string>
        {
            "background-red",
            "background-blue",
            "background-green",
            "background-yellow"
        };

        public void ShowFirstName(EventModel model) => UpdateDisplay(model, model.FirstName);
        public void ShowMiddleName(EventModel model) => UpdateDisplay(model, model.MiddleName);
        public void ShowLastName(EventModel model) => UpdateDisplay(model, model.LastName);
        public void ShowFullName(EventModel model) => UpdateDisplay(model, $"{model.FirstName} {model.MiddleName} {model.LastName}".Trim());

        private void UpdateDisplay(EventModel model, string name)
        {
            model.DisplayedName = name;
            model.DisplayColor = GetNewColor(model);
            model.LastColor = model.DisplayColor;
        }

        public void ClearDisplay(EventModel model)
        {
            model.DisplayedName = string.Empty;
            model.DisplayColor = "background-white";
        }

        private string GetNewColor(EventModel model)
        {
            var random = new Random();
            string newColor;
            do
            {
                newColor = colorClasses[random.Next(colorClasses.Count)];
            } while (newColor == model.LastColor);
            return newColor;
        }
    }
}

namespace RamirezSolution.Data.Model
{
    public class ContactLogic
    {
        public void HandleSubmit(ContactModel model)
        {
            model.ValidationMessage = string.Empty;
            model.SuccessMessage = string.Empty;

            if (string.IsNullOrWhiteSpace(model.Name))
            {
                model.ValidationMessage = "Name is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(model.Email) || !model.IsValidEmail(model.Email))
            {
                model.ValidationMessage = "A valid email is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(model.Message))
            {
                model.ValidationMessage = "Message is required.";
                return;
            }

            model.SuccessMessage = "Message successfully sent!";
            model.ClearForm();
        }
    }
}

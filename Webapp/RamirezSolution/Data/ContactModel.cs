namespace RamirezSolution.Data.Model
{
    public class ContactModel
    {
        public string Name { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string Message { get; set; } = string.Empty;
        public string ValidationMessage { get; set; } = string.Empty;
        public string SuccessMessage { get; set; } = string.Empty;

        public bool IsValidEmail(string email)
        {
            return email.Contains("@") && email.Contains(".");
        }

        public void ClearForm()
        {
            Name = string.Empty;
            Email = string.Empty;
            Message = string.Empty;
        }
    }
}

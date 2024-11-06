using System.ComponentModel.DataAnnotations;

namespace RamirezSolution.Data.Classlibrary
{
    public class UserProfile
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "Name is required.")]
        public string Name { get; set; }

        [Range(1, 120, ErrorMessage = "Age must be between 1 and 120.")]
        public int Age { get; set; }

        [Required(ErrorMessage = "School is required.")]
        public string School { get; set; }

        [Required(ErrorMessage = "Email is required.")]
        [EmailAddress(ErrorMessage = "Invalid email address.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Address is required.")]
        public string Address { get; set; }
    }
}

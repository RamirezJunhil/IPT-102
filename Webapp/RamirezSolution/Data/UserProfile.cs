using System.ComponentModel.DataAnnotations;
namespace RamirezSolution.Data.ClassLibrary
{
    public class UserProfile
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string School { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
    }
}

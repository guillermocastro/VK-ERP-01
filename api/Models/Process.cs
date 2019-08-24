using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using api.Models;
namespace api
{
  [Table("Process", Schema = "vk")]
  public class Process
  {
    public Process()
    {
      ProcessState = new HashSet<ProcessState>();
    }
    [Key]
    [StringLength(16)]
    public string ProcessId { get; set; }
    [StringLength(128)]
    public string ProcessName { get; set; }

    public virtual ICollection<ProcessState> ProcessState { get; set; }
  }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using api.Models;
namespace api
{
  [Table("ProcessState", Schema = "vk")]
  public class ProcessState
  {
    [Key]
    [StringLength(32)]
    public string ProcessStateId { get; set; }
    [StringLength(128)]
    public string ProcessName { get; set; }
    [StringLength(16)]
    [ForeignKey("Process")]
    public string ProcessId { get; set; }

    public virtual Process Process { get; set; }
  }
}
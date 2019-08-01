using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace Test.Mock
{
  public class MockClass
  {
    public Guid MockID { get; set; }
    [Required]
    public string Name { get; set; }
    [Required]
    public Guid MockIDTwo { get; set; }
    public string AString { get; set; }
    public Guid MoreIDs { get; set; }
    public DateTime DateOne { get; set; }
    public DateTime DateTwo { get; set; }
    public decimal BigNumber { get; set; }
    public string SomeText { get; set; }
  }
}
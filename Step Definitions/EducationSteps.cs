

using NUnit.Framework;
using Project_Mars.SpecFlowPages.Helpers;
using Project_Mars.SpecFlowPages.Pages;
using System;
using TechTalk.SpecFlow;

namespace Project_Mars.Step_Definitions
{
    [Binding]
    public class EducationSteps : Driver
    {
        Education addEducationObj = new Education();


        [Given(@"Navigate to Education tab")]
        public void GivenNavigateToEducationTab()
        {
           
        }
        
        [When(@"I add '(.*)' and '(.*)' and '(.*)' and '(.*)' and '(.*)' to Education tab")]
        public void WhenIAddAndAndAndAndToEducationTab(string Country, string University, string Title, string Degree, string Year)
        {
            addEducationObj.AddEducation(driver, Country, University, Title, Degree, Year);
        }
        [Then(@"\[The '([^']*)' and '([^']*)' and '([^']*)' and '([^']*)' and '([^']*)' should be created successfully\.]")]
        public void ThenTheAndAndAndAndShouldBeCreatedSuccessfully_(string Country, string University, string Title, string Degree, string Year)
        {
            string ActualCountry = addEducationObj.GetCountry(driver);
            string ActualUniversity = addEducationObj.GetUniversity(driver);
            string ActualTitle = addEducationObj.GetTitle(driver);
            string ActualDegree = addEducationObj.GetDegree(driver);
            string ActualYear = addEducationObj.GetYear(driver);
            Assert.That(ActualCountry == Country, "Actual country and Expected country match");
            Assert.That(ActualUniversity == University, "Actual name and Expected name match");
            Assert.That(ActualTitle == Title, "Actual title and Expected title match");
            Assert.That(ActualDegree == Degree, "Actual degree and Expected degree match");
            Assert.That(ActualYear == Year, "Actual year and Expected year match");
        }
    }
}

/**
 * Real Team Six- CS5200 Database Management - CovidifyUSA - PM4
 * <p>
 * Lily Bessette, Ari Fleischer, Elise Jortberg, Rajesh Sakhamuru
 */
package covidify.model;

/*

CREATE TABLE IF NOT EXISTS `CovidifyUSA`.`Population` (
  `PopulationKey` INT NOT NULL AUTO_INCREMENT,
  `CountyFKey` INT NOT NULL,
  `Year` YEAR NULL,
  `TotalPopulation` INT NULL,
  `Population60Plus` INT NULL,
  PRIMARY KEY (`PopulationKey`),
  INDEX `CountyFKey7_idx` (`CountyFKey` ASC),
  UNIQUE INDEX `Unique` (`CountyFKey` ASC, `Year` ASC),
  CONSTRAINT `CountyFKey7`
    FOREIGN KEY (`CountyFKey`)
    REFERENCES `CovidifyUSA`.`County` (`CountyKey`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

 */

//TODO here onwards

import java.util.Date;

public class Population {
  protected int populationKey;
  protected int countyFKey;
  protected Date year;
  protected Integer totalPopulation;
  protected Integer population60Plus;

  public Population(int populationKey, int countyFKey, Date year, Integer totalPopulation, Integer population60Plus) {
    this.populationKey = populationKey;
    this.countyFKey = countyFKey;
    this.year = year;
    this.totalPopulation = totalPopulation;
    this.population60Plus = population60Plus;
  }

  public Population(int populationKey){
    this.populationKey = populationKey;
  }

  public Population(int countyFKey, Date year, Integer totalPopulation, Integer population60Plus) {
    this.countyFKey = countyFKey;
    this.year = year;
    this.totalPopulation = totalPopulation;
    this.population60Plus = population60Plus;
  }

  public int getPopulationKey() {
    return populationKey;
  }

  public void setPopulationKey(int populationKey) {
    this.populationKey = populationKey;
  }

  public int getCountyFKey() {
    return countyFKey;
  }

  public void setCountyFKey(int countyFKey) {
    this.countyFKey = countyFKey;
  }

  public Date getYear() {
    return year;
  }

  public void setYear(Date year) {
    this.year = year;
  }

  public Integer getTotalPopulation() {
    return totalPopulation;
  }

  public void setTotalPopulation(Integer totalPopulation) {
    this.totalPopulation = totalPopulation;
  }

  public Integer getPopulation60Plus() {
    return population60Plus;
  }

  public void setPopulation60Plus(Integer population60Plus) {
    this.population60Plus = population60Plus;
  }
}

/**
 * Real Team Six- CS5200 Database Management - CovidifyUSA - PM4
 * <p>
 * Lily Bessette, Ari Fleischer, Elise Jortberg, Rajesh Sakhamuru
 */
package covidify.model;
/*
CREATE TABLE IF NOT EXISTS `CovidifyUSA`.`PresidentialElectionVotePercentages` (
  `PresidentialElectionVotePercentagesKey` INT NOT NULL AUTO_INCREMENT,
  `CountyFKey` INT NOT NULL,
  `Year` YEAR NULL,
  `DemocratsPercent` DECIMAL(5,2) NULL,
  `RepublicansPercent` DECIMAL(5,2) NULL,
  `OtherPercent` DECIMAL(5,2) NULL,
  PRIMARY KEY (`PresidentialElectionVotePercentagesKey`),
  INDEX `CountyFKey2_idx` (`CountyFKey` ASC),
  UNIQUE INDEX `Unique` (`CountyFKey` ASC, `Year` ASC),
  CONSTRAINT `CountyFKey2`
    FOREIGN KEY (`CountyFKey`)
    REFERENCES `CovidifyUSA`.`County` (`CountyKey`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;
 */

import java.util.Date;

public class PresidentialElectionVotePercentages {
  protected int presidentialElectionVotePercentagesKey;
  protected County county;
  protected Date year;
  protected Double democratsPercent;
  protected Double republicansPercent;
  protected Double otherPercent;

  public PresidentialElectionVotePercentages(int presidentialElectionVotePercentagesKey, County county,
                                             Date year, Double democratsPercent, Double republicansPercent,
                                             Double otherPercent){
    this.presidentialElectionVotePercentagesKey = presidentialElectionVotePercentagesKey;
    this.county= county;
    this.year = year;
    this.democratsPercent = democratsPercent;
    this.republicansPercent = republicansPercent;
    this.otherPercent = otherPercent;
  }

  public PresidentialElectionVotePercentages(int presidentialElectionVotePercentagesKey){
    this.presidentialElectionVotePercentagesKey = presidentialElectionVotePercentagesKey;
  }

  public PresidentialElectionVotePercentages(County county, Date year, Double democratsPercent,
                                             Double republicansPercent, Double otherPercent){
    this.county= county;
    this.year = year;
    this.democratsPercent = democratsPercent;
    this.republicansPercent = republicansPercent;
    this.otherPercent = otherPercent;
  }

  public int getPresidentialElectionVotePercentagesKey() {
    return presidentialElectionVotePercentagesKey;
  }

  public void setPresidentialElectionVotePercentagesKey(int presidentialElectionVotePercentagesKey) {
    this.presidentialElectionVotePercentagesKey = presidentialElectionVotePercentagesKey;
  }

  public County getCounty(){
    return county;
  }

  public void setCounty(County county){
    this.county = county;
  }

  public Date getYear(){
    return year;
  }

  public void setYear(Date year){
    this.year = year;
  }

  public Double getDemocratsPercent(){
    return democratsPercent;
  }

  public void setDemocratsPercent(Double democratsPercent){
    this.democratsPercent = democratsPercent;
  }

  public Double getRepublicansPercent(){
    return republicansPercent;
  }

  public void setRepublicansPercent(Double republicansPercent){
    this.republicansPercent = republicansPercent;
  }

  public Double getOtherPercent(){
    return otherPercent;
  }

  public void setOtherPercent(Double otherPercent){
    this.otherPercent = otherPercent;
  }

}

/*
CREATE TABLE IF NOT EXISTS `restdb`.`PresidentialElectionVotePercentages` (
  `PresidentialElectionVotePercentagesKey` INT NOT NULL AUTO_INCREMENT,
  `UserKey` VARCHAR(45) NULL,
  `RestaurantKey` INT NULL,
  INDEX `UserKey2_idx` (`UserKey` ASC),
  INDEX `RestaurantKey5_idx` (`RestaurantKey` ASC),
  PRIMARY KEY (`PresidentialElectionVotePercentagesKey`),
  CONSTRAINT `UserKey2`
    FOREIGN KEY (`UserKey`)
    REFERENCES `restdb`.`User` (`UserName`)
    ON DELETE SET NULL
    ON UPDATE SET NULL,
  CONSTRAINT `RestaurantKey5`
    FOREIGN KEY (`RestaurantKey`)
    REFERENCES `restdb`.`Restaurant` (`RestaurantKey`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
 */
/**
 * Real Team Six- CS5200 Database Management - CovidifyUSA - PM4
 * <p>
 * Lily Bessette, Ari Fleischer, Elise Jortberg, Rajesh Sakhamuru
 */
package covidify.dal;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import covidify.model.*;

/*
CREATE TABLE IF NOT EXISTS `CovidifyUSA`.`Demographics` (
  `DemographicsKey` INT NOT NULL AUTO_INCREMENT,
  `CountyFKey` INT NOT NULL,
  `Year` YEAR NULL,
  `White` DECIMAL(5,2) NULL,
  `AfricanAmerican` DECIMAL(5,2) NULL,
  `Latino` DECIMAL(5,2) NULL,
  `NativeAmerican` DECIMAL(5,2) NULL,
  `AsianAmerican` DECIMAL(5,2) NULL,
  `OtherEthnicity` DECIMAL(5,2) NULL,
  `PovertyRate` DECIMAL(5,2) NULL,
  `MedianAge` DECIMAL NULL,
  `MedianEarnings` DECIMAL NULL,
  PRIMARY KEY (`DemographicsKey`),
  INDEX `CountyFKey3_idx` (`CountyFKey` ASC),
  UNIQUE INDEX `Unique` (`CountyFKey` ASC, `Year` ASC),
  CONSTRAINT `CountyFKey3`
    FOREIGN KEY (`CountyFKey`)
    REFERENCES `CovidifyUSA`.`County` (`CountyKey`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;
 */
public class DemographicsDao  {
  protected ConnectionManager connectionManager;
  private static DemographicsDao instance = null;

  protected DemographicsDao() {
    connectionManager = new ConnectionManager();
  }

  public static DemographicsDao getInstance() {
    if (instance == null) {
      instance = new DemographicsDao();
    }
    return instance;
  }

  //TODO here onwards
  public Demographics create(Demographics demographics) throws SQLException {
    String insertDemographics = "INSERT INTO Demographics(CountyFKey,Year,White,AfricanAmerican,"
            +"Latino,NativeAmerican,AsianAmerican,,OtherEthnicity,PovertyRate,MedianAge,MedianEarnings) "
            + "VALUES(?,?,?,?,?,?,?,?,?,?,?);";
    Connection connection = null;
    PreparedStatement insertStmt = null;
    try {
      connection = connectionManager.getConnection();
      insertStmt = connection.prepareStatement(insertDemographics);
      ResultSet resultKey = null;
      if (demographics.getCounty() == null) {
        insertStmt.setNull(1, Types.INTEGER);
      } else {
        insertStmt.setInt(1, demographics.getCounty().getCountyKey());
      }
      if (demographics.getYear() == null) {
        insertStmt.setNull(2, Types.DATE);
      } else {
        insertStmt.setDate(2, (java.sql.Date) demographics.getYear());
      }
      if (demographics.getWhite() == null) {
        insertStmt.setNull(3, Types.DECIMAL);
      } else {
        insertStmt.setDouble(3, demographics.getWhite());
      }
      if (demographics.getAfricanAmerican() == null) {
        insertStmt.setNull(4, Types.DECIMAL);
      } else {
        insertStmt.setDouble(4, demographics.getAfricanAmerican());
      }
      if (demographics.getLatino() == null) {
        insertStmt.setNull(5, Types.DECIMAL);
      } else {
        insertStmt.setDouble(5, demographics.getLatino());
      }
      if (demographics.getNativeAmerican() == null) {
        insertStmt.setNull(6, Types.DECIMAL);
      } else {
        insertStmt.setDouble(6, demographics.getNativeAmerican());
      }
      if (demographics.getAsianAmerican() == null) {
        insertStmt.setNull(7, Types.DECIMAL);
      } else {
        insertStmt.setDouble(7, demographics.getAsianAmerican());
      }
      if (demographics.getOtherEthnicity() == null) {
        insertStmt.setNull(8, Types.DECIMAL);
      } else {
        insertStmt.setDouble(8, demographics.getOtherEthnicity());
      }
      if (demographics.getPovertyRate() == null) {
        insertStmt.setNull(9, Types.DECIMAL);
      } else {
        insertStmt.setDouble(9, demographics.getPovertyRate());
      }
      if (demographics.getMedianAge() == null) {
        insertStmt.setNull(10, Types.DECIMAL);
      } else {
        insertStmt.setDouble(10, demographics.getMedianAge());
      }
      if (demographics.getMedianEarnings() == null) {
        insertStmt.setNull(11, Types.DECIMAL);
      } else {
        insertStmt.setDouble(11, demographics.getMedianEarnings());
      }
      insertStmt.executeUpdate();
      resultKey = insertStmt.getGeneratedKeys();
      int demographicsKey = -1;
      if (resultKey.next()) {
        demographicsKey = resultKey.getInt(1);
      } else {
        throw new SQLException("Unable to retrieve auto-generated key.");
      }
      demographics.setDemographicsKey(demographicsKey);
      return demographics;
    } catch (SQLException e) {
      e.printStackTrace();
      throw e;
    } finally {
      if (connection != null) {
        connection.close();
      }
      if (insertStmt != null) {
        insertStmt.close();
      }
    }
  }


  public List<Demographics> getDemographicsByCounty(County county) throws SQLException {
	List<Demographics> demographicss = new ArrayList<Demographics>();
    String selectDemographics =
            "SELECT DemographicsKey,CountyFKey,Year,White,AfricanAmerican,Latino,NativeAmerican,AsianAmerican,OtherEthnicity,PovertyRate,MedianAge,MedianEarnings FROM Demographics " +
                    "WHERE CountyFKey=?;";
    Connection connection = null;
    PreparedStatement selectStmt = null;
    ResultSet results = null;
    try {
      connection = connectionManager.getConnection();
      selectStmt = connection.prepareStatement(selectDemographics);
      selectStmt.setInt(1, county.getCountyKey());
      results = selectStmt.executeQuery();

      while(results.next()) {
        int demographicsKey = results.getInt("DemographicsKey");
        Date resyear = results.getDate("Year");
        Double reswhite = results.getDouble("White");
        Double resaa = results.getDouble("AfricanAmerican");
        Double reslat = results.getDouble("Latino");
        Double resna = results.getDouble("NativeAmerican");
        Double resasian = results.getDouble("AsianAmerican");
        Double resother = results.getDouble("OtherEthnicity");
        Double respov = results.getDouble("PovertyRate");
        Double resage = results.getDouble("MedianAge");
        Double researn = results.getDouble("MedianEarnings");

        Demographics demographics = new Demographics(demographicsKey, county, resyear, reswhite, resaa, reslat,
        		resna, resasian, resother, respov, resage, researn);
        demographicss.add(demographics);
      }
    } catch (SQLException e) {
      e.printStackTrace();
      throw e;
    } finally {
      if (connection != null) {
        connection.close();
      }
      if (selectStmt != null) {
        selectStmt.close();
      }
      if (results != null) {
        results.close();
      }
    }
    return demographicss;
  }

  public Demographics updateDemographics(Demographics demographics, County county) throws SQLException {
		String updateDemographics = "UPDATE Demographics SET CountyFKey=? WHERE DemographicsKey=?;";
		Connection connection = null;
		PreparedStatement updateStmt = null;
		try {
			connection = connectionManager.getConnection();
			updateStmt = connection.prepareStatement(updateDemographics);
			updateStmt.setInt(1, county.getCountyKey());
			updateStmt.setInt(2, demographics.getDemographicsKey());
			updateStmt.executeUpdate();
			demographics.setCounty(county);
			return demographics;
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			if(connection != null) {
				connection.close();
			}
			if(updateStmt != null) {
				updateStmt.close();
			}
		}
	}
  
  public Demographics delete(Demographics demographics) throws SQLException {
    String deleteDemographics = "DELETE FROM Demographics WHERE DemographicsKey=?;";
    Connection connection = null;
    PreparedStatement deleteStmt = null;
    try {
      connection = connectionManager.getConnection();
      deleteStmt = connection.prepareStatement(deleteDemographics);
      deleteStmt.setInt(1, demographics.getDemographicsKey());
      deleteStmt.executeUpdate();
      
      // Return null so the caller can no longer operate on the Demographics instance.
      return null;
    } catch (SQLException e) {
      e.printStackTrace();
      throw e;
    } finally {
      if (connection != null) {
        connection.close();
      }
      if (deleteStmt != null) {
        deleteStmt.close();
      }
    }
  }

}

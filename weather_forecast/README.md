# Weather Data Script

This Bash script collects weather data for a specified city (in this case, Casablanca), including the current temperature and the forecast for noon tomorrow, and then calculates the accuracy of the forecast compared to the previous day.

## Data Collection

The script performs the following tasks for data collection:

1. Sets the date in the `YYYYMMDD` format and assigns it to the variable `today`.
2. Defines a filename for the raw weather data based on the current date, in the form of `raw_data_YYYYMMDD`.
3. Retrieves weather data for Casablanca using `curl` and saves it to the `raw_data_YYYYMMDD` file.
4. Extracts temperature data from the weather report and saves it to `temperatures.txt`.
5. Extracts the observed temperature and the forecast temperature for noon tomorrow.

## Forecast Accuracy Calculation

To calculate the forecast accuracy, the script does the following:

1. Retrieves the observed temperature and the forecast temperature.
2. Calculates the accuracy by subtracting the forecast temperature from the observed temperature.
3. Categorizes the accuracy based on a predefined range (excellent, good, fair, or poor).
4. Appends a log entry with the current date, observed temperature, forecast temperature, accuracy, and accuracy category to a file named `rx_poc.log`.

## Checking Historical Forecast Accuracy

The script also includes a section to check the historical forecast accuracy. It does the following:

1. Retrieves the forecast temperature from the previous day.
2. Retrieves the observed temperature for the current day.
3. Calculates the accuracy by subtracting the forecast temperature from the observed temperature.
4. Categorizes the accuracy based on the same predefined range (excellent, good, fair, or poor).
5. Appends a log entry with the date, observed temperature, forecast temperature, accuracy, and accuracy category to a file named `historical_fc_accuracy.tsv`.

## Usage

You can run the script as follows:


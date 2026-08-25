# 🎬 IMDb Movie Analytics | Python & Power BI

An end-to-end **IMDb Movie Analytics project** using Python for data cleaning, exploratory data analysis, statistical analysis, and Power BI for interactive dashboarding.

The project analyzes **19,808 movies** spanning from **1894 to 2022**, uncovering trends across movie releases, genres, IMDb ratings, runtime, audience votes, gross income, directors, actors, and movie certificates.



## 📊 Power BI Dashboard

The Power BI dashboard transforms the cleaned IMDb dataset into an interactive movie analytics report.

### Dashboard Preview

# 🎬 IMDb Movie Analytics | Python & Power BI

An end-to-end **IMDb Movie Analytics project** using Python for data cleaning, exploratory data analysis, statistical analysis, and Power BI for interactive dashboarding.

The project analyzes **19,808 movies** spanning from **1894 to 2022**, uncovering trends across movie releases, genres, IMDb ratings, runtime, audience votes, gross income, directors, actors, and movie certificates.

---

## 📊 Power BI Dashboard

The Power BI dashboard transforms the cleaned IMDb dataset into an interactive movie analytics report.

### Dashboard Preview

<img width="1463" height="738" alt="imdb dashboard" src="https://github.com/user-attachments/assets/fa49b42a-628a-4807-850d-526fae72aa74" />


### Interactive Filters & Analysis


<img width="1307" height="736" alt="filters" src="https://github.com/user-attachments/assets/d7bd9b51-b8e6-481c-92b4-eacaf1419db2" />


### Dashboard Includes

* 🎞️ Movies Released by Year
* ⭐ Average IMDb Rating by Genre
* 💰 Average Gross Income by Genre
* 📈 Rating vs. Gross Income
* 🏆 Top 10 Movies by Average Rating
* 🎟️ Movies by Certificate
* 🔎 Interactive slicers for filtering the analysis

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze movie release trends over time
* Identify the most common movie genres
* Find genres with the highest IMDb ratings
* Analyze genre-wise gross income
* Investigate relationships between:

  * Movie runtime and rating
  * Movie runtime and gross income
  * Movie rating and audience votes
* Analyze director performance
* Analyze actor appearances and ratings
* Identify characteristics associated with highly-rated movies
* Build an interactive Power BI dashboard for business-style analysis

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                         |
| ------------------- | ------------------------------- |
| 🐍 Python           | Data analysis and preprocessing |
| 🐼 Pandas           | Data manipulation               |
| 🔢 NumPy            | Numerical operations            |
| 📊 Matplotlib       | Data visualization              |
| 📈 Seaborn          | Statistical visualization       |
| ⚡ Power BI          | Interactive dashboard           |
| 📁 CSV              | Dataset storage                 |
| 📓 Jupyter Notebook | Analysis environment            |

---

## 📂 Project Structure

```text
IMDb-Movie-Analytics/
│
├── IMDb_Movie_Analytics_Portfolio.ipynb
├── imdb_movies_cleaned.csv
├── IMdB Movie Analysis.pbix
│
├── screenshots/
│   ├── powerbi-dashboard.png
│   └── powerbi-filters.png
│
└── README.md
```

---

## 🗃️ Dataset

The cleaned dataset contains **19,808 movie records** and **14 columns**.

### Important Columns

| Column           | Description              |
| ---------------- | ------------------------ |
| `id`             | IMDb movie ID            |
| `name`           | Movie title              |
| `year`           | Release year             |
| `rating`         | IMDb rating              |
| `certificate`    | Movie certification      |
| `duration`       | Runtime in minutes       |
| `genre`          | Movie genre(s)           |
| `votes`          | Number of audience votes |
| `gross_income`   | Gross income             |
| `directors_name` | Director information     |
| `stars_name`     | Main cast                |
| `description`    | Movie description        |

---

## 🧹 Data Cleaning & Preparation

The raw IMDb data required several preprocessing steps before analysis.

### Cleaning performed

* Converted movie duration from text to integer values
* Removed `"min"` from duration values
* Converted audience votes from strings to integers
* Removed commas from vote counts
* Converted gross income into numeric values
* Removed `$` and `M` formatting from gross income
* Checked for missing values
* Checked for duplicate records
* Split multi-value genre fields for genre-level analysis
* Split actor fields to analyze individual actors

---

# 🔍 Exploratory Data Analysis

## 1. Movie Release Trends

The number of movies released generally increased over the analyzed period.

However, the dataset shows a noticeable decline in movie releases during the pandemic period.

The dataset covers:

> **19,808 movies from 1894 to 2022**

---

## 2. Average IMDb Rating Over Time

The analysis shows an overall **decreasing trend in average IMDb ratings** over the analyzed period, although year-to-year fluctuations are present.

---

## 3. Genre Analysis

### Most Common Genres

Genre values were split and exploded so that movies containing multiple genres could be analyzed individually.

### Highest-Rated Genres

**Documentary** had the highest average IMDb rating among the analyzed genres, followed by:

1. Documentary
2. Reality-TV
3. Short

### Highest Grossing Genres

**Animation** had the highest average gross income among the analyzed genres, followed by:

1. Animation
2. Adventure
3. Sci-Fi

---

# 📈 Movie Characteristics

## Runtime vs IMDb Rating

Movie runtime has a **weak positive correlation** with IMDb rating.

**Correlation ≈ 0.13**

This indicates that longer movies tend to have slightly higher ratings, but runtime is not a strong predictor of IMDb rating.

---

## Runtime vs Gross Income

Movie runtime has a **very weak positive correlation** with gross income.

**Correlation ≈ 0.10**

This suggests that runtime has very little linear relationship with a movie's gross income.

---

## IMDb Rating vs Audience Votes

IMDb rating has a **weak positive correlation** with the number of audience votes.

**Correlation ≈ 0.29**

Higher-rated movies tend to receive more audience votes, although the relationship is not particularly strong.

---

# 🎥 Director Analysis

Directors with at least **5 movies** in the dataset were analyzed based on their average IMDb rating.

### Top Directors

| Rank | Director          | Approx. Avg. Rating |
| ---: | ----------------- | ------------------: |
|    1 | Sergio Leone      |                8.22 |
|    2 | Christopher Nolan |                8.15 |
|    3 | Quentin Tarantino |                8.12 |

Sergio Leone had the highest average IMDb rating among directors meeting the minimum five-movie requirement.

---

# 🎭 Actor Analysis

Actors were separated from the multi-value `stars_name` column and analyzed individually.

The project examines:

* Number of movie appearances
* Average IMDb rating
* Frequently appearing actors
* Highest-rated frequently appearing actors

Among actors with at least **5 movie appearances**, **Takashi Shimura** had the highest average IMDb rating at approximately **7.96**.

Other highly-rated frequently appearing actors included:

* Charles Chaplin
* George Harrison

---

# ⭐ Highly-Rated Movies

Movies with an IMDb rating of **8.0 or higher** were classified as highly-rated.

## Most Common Genres

Among highly-rated movies:

| Rank | Genre  | Highly-Rated Movies |
| ---: | ------ | ------------------: |
|    1 | Drama  |                 361 |
|    2 | Crime  |                 157 |
|    3 | Action |                 132 |

**Drama** was the most frequently represented genre among movies rated 8.0 or higher.

---

## 👥 Audience Engagement

Highly-rated movies have a **higher median number of audience votes** compared with movies rated below 8.

This suggests that highly-rated movies tend to receive greater audience engagement.

---

## 💰 Commercial Performance

Highly-rated movies also show a **higher median gross income** than other movies in the dataset.

This indicates that highly-rated movies tend to perform better commercially within this dataset.

---

# 💡 Key Insights

### 🎞️ Movie Production

Movie releases generally increased over time, with a noticeable decline during the pandemic period.

### ⭐ Ratings

Average IMDb ratings show an overall declining trend across the analyzed period.

### 🎬 Genre

Documentary had the highest average IMDb rating, while Animation had the highest average gross income.

### ⏱️ Runtime

Runtime has only a weak relationship with IMDb rating and a very weak relationship with gross income.

### 👥 Audience Engagement

Higher-rated movies tend to receive more audience votes.

### 🎥 Directors

Sergio Leone had the highest average rating among directors with at least five movies.

### 🎭 Actors

Takashi Shimura had the highest average rating among frequently appearing actors meeting the five-movie threshold.

### 🏆 Highly-Rated Movies

Drama was the dominant genre among movies rated 8.0 or higher.

### 💰 Ratings & Revenue

Highly-rated movies had higher median gross income than other movies in the dataset.

---

# 📊 Power BI Dashboard Features

The Power BI report provides an interactive layer on top of the Python analysis.

### Visualizations

* **Movies Released by Year**
* **Average Rating by Genre**
* **Average Gross Income by Genre**
* **Rating vs Gross Income Scatter Plot**
* **Top 10 Movies by Average Rating**
* **Movies by Certificate**
* **Interactive slicers**

This allows users to explore movie performance dynamically instead of relying only on static Python charts.

---

# 🧠 Project Workflow

```text
IMDb Dataset
     │
     ▼
Data Cleaning
     │
     ├── Duration Conversion
     ├── Vote Conversion
     ├── Gross Income Conversion
     ├── Missing Value Check
     └── Duplicate Check
     │
     ▼
Exploratory Data Analysis
     │
     ├── Release Trends
     ├── Genre Analysis
     ├── Rating Analysis
     ├── Runtime Analysis
     ├── Director Analysis
     └── Actor Analysis
     │
     ▼
Statistical Analysis
     │
     ├── Correlation Analysis
     └── Highly-Rated Movie Analysis
     │
     ▼
Power BI
     │
     ├── Interactive Dashboard
     ├── KPIs
     ├── Charts
     └── Filters
     │
     ▼
Movie Analytics Insights
```

---

# 📁 Project Files

### Jupyter Notebook

`IMDb_Movie_Analytics_Portfolio.ipynb`

Contains the complete Python-based data cleaning, analysis, visualization, and findings.

### Cleaned Dataset

`imdb_movies_cleaned.csv`

Cleaned dataset used for analysis and Power BI.

### Power BI Report

`IMdB Movie Analysis.pbix`

Interactive Power BI dashboard containing movie trends, genre analysis, ratings, gross income, certificates, and top movies.

---

# 🚀 How to Run the Project

## Python Analysis

Clone the repository:

```bash
git clone https://github.com/yourusername/IMDb-Movie-Analytics.git
```

Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

Launch Jupyter Notebook:

```bash
jupyter notebook
```

Open:

```text
IMDb_Movie_Analytics_Portfolio.ipynb
```

---

## Power BI

1. Download the repository.
2. Open `IMdB Movie Analysis.pbix` using Power BI Desktop.
3. Make sure the dataset path is correctly configured if Power BI requests it.
4. Use the available slicers and interact with the dashboard.
5. Explore movie trends, ratings, genres, gross income, and certificates.

---

# 📌 Future Improvements

Potential improvements for the project include:

* Add a dedicated movie profitability analysis
* Analyze movie performance by decade
* Build a director success score
* Add actor-director collaboration analysis
* Perform predictive analysis for IMDb ratings
* Add machine learning for rating prediction
* Create a Power BI page dedicated to highly-rated movies
* Add more advanced DAX measures
* Deploy the dashboard using Power BI Service

---

# 👨‍💻 Author

**Eshan Kesarwani**

Data Analytics | Python | Pandas | SQL | Power BI | Data Visualization

---

⭐ If you found this project useful, consider giving the repository a star!


### Interactive Filters & Analysis

![Power BI Filters](./screenshots/powerbi-filters.png)

### Dashboard Includes

* 🎞️ Movies Released by Year
* ⭐ Average IMDb Rating by Genre
* 💰 Average Gross Income by Genre
* 📈 Rating vs. Gross Income
* 🏆 Top 10 Movies by Average Rating
* 🎟️ Movies by Certificate
* 🔎 Interactive slicers for filtering the analysis

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze movie release trends over time
* Identify the most common movie genres
* Find genres with the highest IMDb ratings
* Analyze genre-wise gross income
* Investigate relationships between:

  * Movie runtime and rating
  * Movie runtime and gross income
  * Movie rating and audience votes
* Analyze director performance
* Analyze actor appearances and ratings
* Identify characteristics associated with highly-rated movies
* Build an interactive Power BI dashboard for business-style analysis

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                         |
| ------------------- | ------------------------------- |
| 🐍 Python           | Data analysis and preprocessing |
| 🐼 Pandas           | Data manipulation               |
| 🔢 NumPy            | Numerical operations            |
| 📊 Matplotlib       | Data visualization              |
| 📈 Seaborn          | Statistical visualization       |
| ⚡ Power BI          | Interactive dashboard           |
| 📁 CSV              | Dataset storage                 |
| 📓 Jupyter Notebook | Analysis environment            |

---

## 📂 Project Structure

```text
IMDb-Movie-Analytics/
│
├── IMDb_Movie_Analytics_Portfolio.ipynb
├── imdb_movies_cleaned.csv
├── IMdB Movie Analysis.pbix
│
├── screenshots/
│   ├── powerbi-dashboard.png
│   └── powerbi-filters.png
│
└── README.md
```

---

## 🗃️ Dataset

The cleaned dataset contains **19,808 movie records** and **14 columns**.

### Important Columns

| Column           | Description              |
| ---------------- | ------------------------ |
| `id`             | IMDb movie ID            |
| `name`           | Movie title              |
| `year`           | Release year             |
| `rating`         | IMDb rating              |
| `certificate`    | Movie certification      |
| `duration`       | Runtime in minutes       |
| `genre`          | Movie genre(s)           |
| `votes`          | Number of audience votes |
| `gross_income`   | Gross income             |
| `directors_name` | Director information     |
| `stars_name`     | Main cast                |
| `description`    | Movie description        |

---

## 🧹 Data Cleaning & Preparation

The raw IMDb data required several preprocessing steps before analysis.

### Cleaning performed

* Converted movie duration from text to integer values
* Removed `"min"` from duration values
* Converted audience votes from strings to integers
* Removed commas from vote counts
* Converted gross income into numeric values
* Removed `$` and `M` formatting from gross income
* Checked for missing values
* Checked for duplicate records
* Split multi-value genre fields for genre-level analysis
* Split actor fields to analyze individual actors

---

# 🔍 Exploratory Data Analysis

## 1. Movie Release Trends

The number of movies released generally increased over the analyzed period.

However, the dataset shows a noticeable decline in movie releases during the pandemic period.

The dataset covers:

> **19,808 movies from 1894 to 2022**

---

## 2. Average IMDb Rating Over Time

The analysis shows an overall **decreasing trend in average IMDb ratings** over the analyzed period, although year-to-year fluctuations are present.

---

## 3. Genre Analysis

### Most Common Genres

Genre values were split and exploded so that movies containing multiple genres could be analyzed individually.

### Highest-Rated Genres

**Documentary** had the highest average IMDb rating among the analyzed genres, followed by:

1. Documentary
2. Reality-TV
3. Short

### Highest Grossing Genres

**Animation** had the highest average gross income among the analyzed genres, followed by:

1. Animation
2. Adventure
3. Sci-Fi

---

# 📈 Movie Characteristics

## Runtime vs IMDb Rating

Movie runtime has a **weak positive correlation** with IMDb rating.

**Correlation ≈ 0.13**

This indicates that longer movies tend to have slightly higher ratings, but runtime is not a strong predictor of IMDb rating.

---

## Runtime vs Gross Income

Movie runtime has a **very weak positive correlation** with gross income.

**Correlation ≈ 0.10**

This suggests that runtime has very little linear relationship with a movie's gross income.

---

## IMDb Rating vs Audience Votes

IMDb rating has a **weak positive correlation** with the number of audience votes.

**Correlation ≈ 0.29**

Higher-rated movies tend to receive more audience votes, although the relationship is not particularly strong.

---

# 🎥 Director Analysis

Directors with at least **5 movies** in the dataset were analyzed based on their average IMDb rating.

### Top Directors

| Rank | Director          | Approx. Avg. Rating |
| ---: | ----------------- | ------------------: |
|    1 | Sergio Leone      |                8.22 |
|    2 | Christopher Nolan |                8.15 |
|    3 | Quentin Tarantino |                8.12 |

Sergio Leone had the highest average IMDb rating among directors meeting the minimum five-movie requirement.

---

# 🎭 Actor Analysis

Actors were separated from the multi-value `stars_name` column and analyzed individually.

The project examines:

* Number of movie appearances
* Average IMDb rating
* Frequently appearing actors
* Highest-rated frequently appearing actors

Among actors with at least **5 movie appearances**, **Takashi Shimura** had the highest average IMDb rating at approximately **7.96**.

Other highly-rated frequently appearing actors included:

* Charles Chaplin
* George Harrison

---

# ⭐ Highly-Rated Movies

Movies with an IMDb rating of **8.0 or higher** were classified as highly-rated.

## Most Common Genres

Among highly-rated movies:

| Rank | Genre  | Highly-Rated Movies |
| ---: | ------ | ------------------: |
|    1 | Drama  |                 361 |
|    2 | Crime  |                 157 |
|    3 | Action |                 132 |

**Drama** was the most frequently represented genre among movies rated 8.0 or higher.

---

## 👥 Audience Engagement

Highly-rated movies have a **higher median number of audience votes** compared with movies rated below 8.

This suggests that highly-rated movies tend to receive greater audience engagement.

---

## 💰 Commercial Performance

Highly-rated movies also show a **higher median gross income** than other movies in the dataset.

This indicates that highly-rated movies tend to perform better commercially within this dataset.

---

# 💡 Key Insights

### 🎞️ Movie Production

Movie releases generally increased over time, with a noticeable decline during the pandemic period.

### ⭐ Ratings

Average IMDb ratings show an overall declining trend across the analyzed period.

### 🎬 Genre

Documentary had the highest average IMDb rating, while Animation had the highest average gross income.

### ⏱️ Runtime

Runtime has only a weak relationship with IMDb rating and a very weak relationship with gross income.

### 👥 Audience Engagement

Higher-rated movies tend to receive more audience votes.

### 🎥 Directors

Sergio Leone had the highest average rating among directors with at least five movies.

### 🎭 Actors

Takashi Shimura had the highest average rating among frequently appearing actors meeting the five-movie threshold.

### 🏆 Highly-Rated Movies

Drama was the dominant genre among movies rated 8.0 or higher.

### 💰 Ratings & Revenue

Highly-rated movies had higher median gross income than other movies in the dataset.

---

# 📊 Power BI Dashboard Features

The Power BI report provides an interactive layer on top of the Python analysis.

### Visualizations

* **Movies Released by Year**
* **Average Rating by Genre**
* **Average Gross Income by Genre**
* **Rating vs Gross Income Scatter Plot**
* **Top 10 Movies by Average Rating**
* **Movies by Certificate**
* **Interactive slicers**

This allows users to explore movie performance dynamically instead of relying only on static Python charts.

---

# 🧠 Project Workflow

```text
IMDb Dataset
     │
     ▼
Data Cleaning
     │
     ├── Duration Conversion
     ├── Vote Conversion
     ├── Gross Income Conversion
     ├── Missing Value Check
     └── Duplicate Check
     │
     ▼
Exploratory Data Analysis
     │
     ├── Release Trends
     ├── Genre Analysis
     ├── Rating Analysis
     ├── Runtime Analysis
     ├── Director Analysis
     └── Actor Analysis
     │
     ▼
Statistical Analysis
     │
     ├── Correlation Analysis
     └── Highly-Rated Movie Analysis
     │
     ▼
Power BI
     │
     ├── Interactive Dashboard
     ├── KPIs
     ├── Charts
     └── Filters
     │
     ▼
Movie Analytics Insights
```

---

# 📁 Project Files

### Jupyter Notebook

`IMDb_Movie_Analytics_Portfolio.ipynb`

Contains the complete Python-based data cleaning, analysis, visualization, and findings.

### Cleaned Dataset

`imdb_movies_cleaned.csv`

Cleaned dataset used for analysis and Power BI.

### Power BI Report

`IMdB Movie Analysis.pbix`

Interactive Power BI dashboard containing movie trends, genre analysis, ratings, gross income, certificates, and top movies.

---

# 🚀 How to Run the Project

## Python Analysis

Clone the repository:

```bash
git clone https://github.com/yourusername/IMDb-Movie-Analytics.git
```

Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

Launch Jupyter Notebook:

```bash
jupyter notebook
```

Open:

```text
IMDb_Movie_Analytics_Portfolio.ipynb
```

---

## Power BI

1. Download the repository.
2. Open `IMdB Movie Analysis.pbix` using Power BI Desktop.
3. Make sure the dataset path is correctly configured if Power BI requests it.
4. Use the available slicers and interact with the dashboard.
5. Explore movie trends, ratings, genres, gross income, and certificates.

---

# 📌 Future Improvements

Potential improvements for the project include:

* Add a dedicated movie profitability analysis
* Analyze movie performance by decade
* Build a director success score
* Add actor-director collaboration analysis
* Perform predictive analysis for IMDb ratings
* Add machine learning for rating prediction
* Create a Power BI page dedicated to highly-rated movies
* Add more advanced DAX measures
* Deploy the dashboard using Power BI Service

---

# 👨‍💻 Author

**Eshan Kesarwani**

Data Analytics | Python | Pandas | SQL | Power BI | Data Visualization

---

⭐ If you found this project useful, consider giving the repository a star!


### Interactive Filters & Analysis

![Power BI Filters](./screenshots/powerbi-filters.png)

### Dashboard Includes

* 🎞️ Movies Released by Year
* ⭐ Average IMDb Rating by Genre
* 💰 Average Gross Income by Genre
* 📈 Rating vs. Gross Income
* 🏆 Top 10 Movies by Average Rating
* 🎟️ Movies by Certificate
* 🔎 Interactive slicers for filtering the analysis

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze movie release trends over time
* Identify the most common movie genres
* Find genres with the highest IMDb ratings
* Analyze genre-wise gross income
* Investigate relationships between:

  * Movie runtime and rating
  * Movie runtime and gross income
  * Movie rating and audience votes
* Analyze director performance
* Analyze actor appearances and ratings
* Identify characteristics associated with highly-rated movies
* Build an interactive Power BI dashboard for business-style analysis

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                         |
| ------------------- | ------------------------------- |
| 🐍 Python           | Data analysis and preprocessing |
| 🐼 Pandas           | Data manipulation               |
| 🔢 NumPy            | Numerical operations            |
| 📊 Matplotlib       | Data visualization              |
| 📈 Seaborn          | Statistical visualization       |
| ⚡ Power BI          | Interactive dashboard           |
| 📁 CSV              | Dataset storage                 |
| 📓 Jupyter Notebook | Analysis environment            |

---

## 📂 Project Structure

```text
IMDb-Movie-Analytics/
│
├── IMDb_Movie_Analytics_Portfolio.ipynb
├── imdb_movies_cleaned.csv
├── IMdB Movie Analysis.pbix
│
├── screenshots/
│   ├── powerbi-dashboard.png
│   └── powerbi-filters.png
│
└── README.md
```

---

## 🗃️ Dataset

The cleaned dataset contains **19,808 movie records** and **14 columns**.

### Important Columns

| Column           | Description              |
| ---------------- | ------------------------ |
| `id`             | IMDb movie ID            |
| `name`           | Movie title              |
| `year`           | Release year             |
| `rating`         | IMDb rating              |
| `certificate`    | Movie certification      |
| `duration`       | Runtime in minutes       |
| `genre`          | Movie genre(s)           |
| `votes`          | Number of audience votes |
| `gross_income`   | Gross income             |
| `directors_name` | Director information     |
| `stars_name`     | Main cast                |
| `description`    | Movie description        |

---

## 🧹 Data Cleaning & Preparation

The raw IMDb data required several preprocessing steps before analysis.

### Cleaning performed

* Converted movie duration from text to integer values
* Removed `"min"` from duration values
* Converted audience votes from strings to integers
* Removed commas from vote counts
* Converted gross income into numeric values
* Removed `$` and `M` formatting from gross income
* Checked for missing values
* Checked for duplicate records
* Split multi-value genre fields for genre-level analysis
* Split actor fields to analyze individual actors

---

# 🔍 Exploratory Data Analysis

## 1. Movie Release Trends

The number of movies released generally increased over the analyzed period.

However, the dataset shows a noticeable decline in movie releases during the pandemic period.

The dataset covers:

> **19,808 movies from 1894 to 2022**

---

## 2. Average IMDb Rating Over Time

The analysis shows an overall **decreasing trend in average IMDb ratings** over the analyzed period, although year-to-year fluctuations are present.

---

## 3. Genre Analysis

### Most Common Genres

Genre values were split and exploded so that movies containing multiple genres could be analyzed individually.

### Highest-Rated Genres

**Documentary** had the highest average IMDb rating among the analyzed genres, followed by:

1. Documentary
2. Reality-TV
3. Short

### Highest Grossing Genres

**Animation** had the highest average gross income among the analyzed genres, followed by:

1. Animation
2. Adventure
3. Sci-Fi

---

# 📈 Movie Characteristics

## Runtime vs IMDb Rating

Movie runtime has a **weak positive correlation** with IMDb rating.

**Correlation ≈ 0.13**

This indicates that longer movies tend to have slightly higher ratings, but runtime is not a strong predictor of IMDb rating.

---

## Runtime vs Gross Income

Movie runtime has a **very weak positive correlation** with gross income.

**Correlation ≈ 0.10**

This suggests that runtime has very little linear relationship with a movie's gross income.

---

## IMDb Rating vs Audience Votes

IMDb rating has a **weak positive correlation** with the number of audience votes.

**Correlation ≈ 0.29**

Higher-rated movies tend to receive more audience votes, although the relationship is not particularly strong.

---

# 🎥 Director Analysis

Directors with at least **5 movies** in the dataset were analyzed based on their average IMDb rating.

### Top Directors

| Rank | Director          | Approx. Avg. Rating |
| ---: | ----------------- | ------------------: |
|    1 | Sergio Leone      |                8.22 |
|    2 | Christopher Nolan |                8.15 |
|    3 | Quentin Tarantino |                8.12 |

Sergio Leone had the highest average IMDb rating among directors meeting the minimum five-movie requirement.

---

# 🎭 Actor Analysis

Actors were separated from the multi-value `stars_name` column and analyzed individually.

The project examines:

* Number of movie appearances
* Average IMDb rating
* Frequently appearing actors
* Highest-rated frequently appearing actors

Among actors with at least **5 movie appearances**, **Takashi Shimura** had the highest average IMDb rating at approximately **7.96**.

Other highly-rated frequently appearing actors included:

* Charles Chaplin
* George Harrison

---

# ⭐ Highly-Rated Movies

Movies with an IMDb rating of **8.0 or higher** were classified as highly-rated.

## Most Common Genres

Among highly-rated movies:

| Rank | Genre  | Highly-Rated Movies |
| ---: | ------ | ------------------: |
|    1 | Drama  |                 361 |
|    2 | Crime  |                 157 |
|    3 | Action |                 132 |

**Drama** was the most frequently represented genre among movies rated 8.0 or higher.

---

## 👥 Audience Engagement

Highly-rated movies have a **higher median number of audience votes** compared with movies rated below 8.

This suggests that highly-rated movies tend to receive greater audience engagement.

---

## 💰 Commercial Performance

Highly-rated movies also show a **higher median gross income** than other movies in the dataset.

This indicates that highly-rated movies tend to perform better commercially within this dataset.

---

# 💡 Key Insights

### 🎞️ Movie Production

Movie releases generally increased over time, with a noticeable decline during the pandemic period.

### ⭐ Ratings

Average IMDb ratings show an overall declining trend across the analyzed period.

### 🎬 Genre

Documentary had the highest average IMDb rating, while Animation had the highest average gross income.

### ⏱️ Runtime

Runtime has only a weak relationship with IMDb rating and a very weak relationship with gross income.

### 👥 Audience Engagement

Higher-rated movies tend to receive more audience votes.

### 🎥 Directors

Sergio Leone had the highest average rating among directors with at least five movies.

### 🎭 Actors

Takashi Shimura had the highest average rating among frequently appearing actors meeting the five-movie threshold.

### 🏆 Highly-Rated Movies

Drama was the dominant genre among movies rated 8.0 or higher.

### 💰 Ratings & Revenue

Highly-rated movies had higher median gross income than other movies in the dataset.

---

# 📊 Power BI Dashboard Features

The Power BI report provides an interactive layer on top of the Python analysis.

### Visualizations

* **Movies Released by Year**
* **Average Rating by Genre**
* **Average Gross Income by Genre**
* **Rating vs Gross Income Scatter Plot**
* **Top 10 Movies by Average Rating**
* **Movies by Certificate**
* **Interactive slicers**

This allows users to explore movie performance dynamically instead of relying only on static Python charts.

---

# 🧠 Project Workflow

```text
IMDb Dataset
     │
     ▼
Data Cleaning
     │
     ├── Duration Conversion
     ├── Vote Conversion
     ├── Gross Income Conversion
     ├── Missing Value Check
     └── Duplicate Check
     │
     ▼
Exploratory Data Analysis
     │
     ├── Release Trends
     ├── Genre Analysis
     ├── Rating Analysis
     ├── Runtime Analysis
     ├── Director Analysis
     └── Actor Analysis
     │
     ▼
Statistical Analysis
     │
     ├── Correlation Analysis
     └── Highly-Rated Movie Analysis
     │
     ▼
Power BI
     │
     ├── Interactive Dashboard
     ├── KPIs
     ├── Charts
     └── Filters
     │
     ▼
Movie Analytics Insights
```

---

# 📁 Project Files

### Jupyter Notebook

`IMDb_Movie_Analytics_Portfolio.ipynb`

Contains the complete Python-based data cleaning, analysis, visualization, and findings.

### Cleaned Dataset

`imdb_movies_cleaned.csv`

Cleaned dataset used for analysis and Power BI.

### Power BI Report

`IMdB Movie Analysis.pbix`

Interactive Power BI dashboard containing movie trends, genre analysis, ratings, gross income, certificates, and top movies.

---

# 🚀 How to Run the Project

## Python Analysis

Clone the repository:

```bash
git clone https://github.com/yourusername/IMDb-Movie-Analytics.git
```

Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

Launch Jupyter Notebook:

```bash
jupyter notebook
```

Open:

```text
IMDb_Movie_Analytics_Portfolio.ipynb
```

---

## Power BI

1. Download the repository.
2. Open `IMdB Movie Analysis.pbix` using Power BI Desktop.
3. Make sure the dataset path is correctly configured if Power BI requests it.
4. Use the available slicers and interact with the dashboard.
5. Explore movie trends, ratings, genres, gross income, and certificates.

---

# 📌 Future Improvements

Potential improvements for the project include:

* Add a dedicated movie profitability analysis
* Analyze movie performance by decade
* Build a director success score
* Add actor-director collaboration analysis
* Perform predictive analysis for IMDb ratings
* Add machine learning for rating prediction
* Create a Power BI page dedicated to highly-rated movies
* Add more advanced DAX measures
* Deploy the dashboard using Power BI Service

---

# 👨‍💻 Author

**Eshan Kesarwani**

Data Analytics | Python | Pandas | SQL | Power BI | Data Visualization

---

⭐ If you found this project useful, consider giving the repository a star!

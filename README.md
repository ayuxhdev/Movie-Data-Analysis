# Movie Data Analysis

## Project Overview

This project analyzes a movie dataset containing over 9,000 titles using Python and Exploratory Data Analysis (EDA). The goal is to explore patterns in genres, ratings, popularity, languages, and release years and turn the results into useful insights.

## Project Scenario

Netflix and other streaming platforms use data to understand content trends, audience preferences, and movie performance.

In this project, I took the role of a Data Analyst and used Python to clean, transform, analyze, and visualize a movie dataset to answer a set of business-oriented questions.

## Objectives

* Perform data cleaning and preprocessing.
* Explore trends in movie content.
* Analyze genres, popularity, ratings, languages, and release years.
* Create visualizations to support the analysis.
* Generate insights from the dataset.

## Technologies Used

* Python
* Pandas
* Matplotlib
* Seaborn

## Business Questions

1. What is the most frequent movie genre?
2. How are movies distributed across different vote average categories?
3. Which movie genre has the highest average vote rating?
4. Which movie has the highest popularity, and what is its genre?
5. Which movie has the lowest popularity, and what is its genre?
6. Which release year has the highest number of movies?
7. What are the top 10 most popular movies?
8. Which genre grew the most over time?
9. Which language has the highest average rating?
10. Which genre has the highest average popularity?
11. Which movie has the highest average rating among movies with at least 10,000 votes?

## Key Insights

* **Drama** is the most frequent genre in the dataset.
* The largest vote-average category is **Not Popular**, followed by **Popular**, **Average**, and **Below Average**.
* **Documentary** has the highest average rating among genres.
* **Spider-Man: No Way Home** has the highest popularity score.
* **The United States vs. Billie Holiday** has the lowest popularity score.
* **2020** has the highest number of movie releases in the dataset.
* The top 10 most popular movies include **Spider-Man: No Way Home, The Batman, No Exit, Encanto, The King's Man, The Commando, Scream, Kimi, Fistful Of Vengeance, and Eternals**.
* **Drama** showed the most growth over time.
* **Malay** has the highest average rating among the languages in the dataset.
* **Adventure** has the highest average popularity.
* **The Shawshank Redemption** has the highest average rating among movies with at least 10,000 votes.

## Data Cleaning and Preparation

* Checked the dataset for missing values and duplicate records.
* Converted `Release_Date` into a date format and extracted the release year for analysis.
* Removed columns that were not required for the analysis.
* Cleaned the `Genre` column and separated multiple genres.
* Created a separate `df_genre` DataFrame using `explode()` for genre-level analysis while keeping `df` as the original movie-level DataFrame.
* Converted `Genre` to a categorical data type in `df_genre`.
* Categorized `Vote_Average` for better analysis.
* Examined outliers in the `Popularity` column.

## DataFrame Structure

Two DataFrames were used in the analysis:

```text
df
└── Original movie-level DataFrame
    └── One row represents one movie

df_genre
└── Genre-level DataFrame
    └── One row represents one movie-genre combination
```

This separation allowed movie-level and genre-level questions to be analyzed correctly without the `explode()` transformation affecting movie-level results.

## Project Structure

```text
Netflix-Data-Analysis/
│
├── data/
│   └── mymoviedb.csv
│
├── notebooks/
│   └── movie_data_analysis.ipynb
│
└── README.md
```

## Future Improvements

* MySQL integration
* Excel-based reporting
* Additional business insights
* Enhanced visualizations
* Interactive dashboard development

## Project Status

**In Progress**

# 🏀 Analysis Plan for Identifying the Most Impactful NBA Player of the 2020s

**Authors**: Shaan Patel, Connor Conglio

## 📌 Purpose

This analysis aims to determine the **most impactful NBA player of the 2020s** using FiveThirtyEight's *NBA Player Stats* dataset. Key metrics like **Wins Above Replacement (WAR)**, measuring a player’s added wins compared to a replacement-level player, and **RAPTOR scores** (offensive, defensive, and overall) will be crucial. With the league evolving through aging stars and a surge of talented international players, we seek to pinpoint the defining player of this decade and explore trends that reveal how the league’s face is changing.

## 🧩 Methodology

### 1️⃣ **Statistical Analysis of Key Metrics**
   - We’ll start by examining **WAR and RAPTOR** scores for each player (2019-2020 onward) using metrics like **mean, median, and standard deviation** to gauge consistency and peak performance.
   - This approach offers a **baseline understanding** of player impact, despite not fully capturing context factors (e.g., team changes, injuries).

### 2️⃣ **Machine Learning-Based Ranking Model**
   - We’ll employ a **regression algorithm** (e.g., Random Forest Regressor, XGBoost) to rank players based on various performance metrics.
   - Machine learning will help capture **complex interactions** among variables, revealing hidden patterns and offering a more nuanced ranking. However, we’ll carefully handle training and testing data to avoid overfitting and ensure robust results.

### 3️⃣ **Time-Series Analysis for Trend Detection**
   - Using techniques like **RNN**, we’ll identify players with consistent improvement or decline, focusing on those with multi-season data.
   - This method is especially effective for detecting **player growth and consistency** over time, though it may be limited for players with shorter careers or those who missed seasons due to injury.

## 🔧 **Data Preparation**

Shaan and Connor will begin with **data cleaning and preparation**:
- **Standardization**: Remove missing/incorrect values, standardize player names, and filter for the 2020+ seasons.
- **Segmentation**: Separate **regular season** and **playoff** data to compare player performance across contexts (e.g., regular season vs. playoff performers).
- For the machine learning model, data will be split into an **80% training set and 20% testing set** with **cross-validation** to prevent overfitting. **Mean Absolute Error (MAE)** will serve as our primary metric.

## 🔍 **Comparing Results**

To ensure robustness:
- We’ll **compare results** from each method. Players consistently ranked highly across methods will be noted for their reliability, while discrepancies will prompt investigation (e.g., injuries or unique skill sets that excel in advanced but not traditional stats).
- **Data Visualizations** (e.g., scatter plots for RAPTOR vs. WAR) will be used to highlight trends and relationships.

## 📊 **Deliverables**

Our final deliverable will be a comprehensive **report and visualizations**, identifying the most impactful NBA players of the 2020s and broader performance trends. By combining **statistical analysis, machine learning, and time-series modeling**, we hope to not only answer our main question but provide actionable insights that could inform coaches and GMs in the league.

---


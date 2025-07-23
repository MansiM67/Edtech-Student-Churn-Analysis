Author: [Mansi Mittal]  
Date: [22 July 2025]  

# 🎓 EdTech Student Churn Rate Analysis – Engagement & Dropout Prediction

📌 **Project Background**  
This project focuses on analyzing student engagement and dropout behavior in an EdTech platform using SQL for backend processing, Python for modeling and visualization, and Power BI for dynamic dashboarding.

As a Data Analyst, the objective was to explore behavioral patterns, identify dropout risk segments, and derive actionable recommendations to improve retention and learning outcomes.

The project delivers insights and recommendations in the following key areas:

📉 Dropout Rate Analysis & Prediction  
📈 Student Progress and Engagement Trends  
🎯 High-Risk Segmentation by Demographics and Course Type  
📊 Satisfaction, Attendance & Assignment Patterns  
🌍 Country/State-wise Student Distribution and Behavior  

---

### 🗂️ Artifacts:

- **SQL Script**: `churn rate.sql`  
- **Python Notebook**: `edtech platforms.ipynb`  
- **Power BI Dashboard**: `Edtech Student.pbix`  
- **Dataset**: `edtech platforms.csv`  

---

## 🧾 Dataset & Features

The dataset includes the following key columns:

- `student_id`, `student_name`, `gender`, `country`, `state`
- `education_level`, `employment_status`, `industry`, `years_of_experience`
- `course_name`, `course_category`, `course_fee`
- `engagement_score`, `progress_percent`, `assignment_submission_rate`, `attendance_rate`, `satisfaction_rating`
- `dropout_probability`, `dropout_status`, `enrollment_date`, `last_active_date`

**Key data preparation steps:**

- Replaced blank strings with NULLs
- Cleaned and trimmed text columns
- Converted date fields to proper `DATE` format
- Filtered out students with invalid or missing essential fields
- Standardized dropout categories for modeling

---

## 🧪 SQL-Based Exploratory Analysis

All SQL analysis was conducted using MySQL Workbench to prepare and explore student activity and dropout behavior.

### ✅ Student Dropout & Retention

- Overall dropout distribution across status categories
- Dropout percentage by `education_level` and `course_category`
- Dropout trend by `progress_percent` using buckets (0–20%, … 81–100%)
- Dropout by satisfaction and attendance rate brackets

### ✅ Engagement & Assignment Analysis

- Average engagement score by dropout status  
- Correlation between assignment submission and dropouts  
- Progress-based dropout risk groupings (progress buckets)  
- Average progress % by education level or country  

### ✅ Demographics & Location

- State/country-wise dropout and retention ratios  
- Dropout by gender, employment status, industry  
- Filtered views by enrollment date and last active date  

---

## 🐍 Python Modeling & Visualization

The analysis in `edtech platforms.ipynb` focused on:

### ✅ Data Preprocessing

- Converted categorical variables to numeric
- Handled missing values using `.fillna()` and mean substitution
- Created new features like `progress_bucket`

### ✅ Exploratory Data Visualization

- Count plots by dropout status  
- Heatmap of correlation matrix (engagement, satisfaction, etc.)  
- Box plots comparing engagement and dropout  

### ✅ Dropout Prediction Model (Logistic Regression)

- Binary target: 1 = Dropped/May Leave/Likely to Leave, 0 = Not Likely  
- Train-Test split (70/30)  
- Model performance:
  - **Accuracy:** 79%
  - **Precision:** 78–80%
  - **F1-score:** 78%



## 📊 Power BI Dashboard Highlights  
**Dashboard Name**: *EdTech Student Churn Dashboard – Engagement & Retention*

---

### 🔢 KPI Cards:
- **Total Students**
- **Dropout Rate (%)**
- **Average Engagement Score**
- **Average Progress %**

---

### 📈 Visuals:
- **Bar Chart**: Dropout by Education Level  
- **Donut Chart**: Dropout by Course Category  
- **Scatter Plot**: Engagement vs Dropout Probability  
- **Column Chart**: Dropout by Progress Bucket  

---

### 🎛️ Slicers:
- **Course Category**, **Gender**, **Education Level**  
- **Satisfaction Rating**, **Enrollment Date**  
- **Dropout Status**

📁 **File**: `Edtech Student.pbix`

---

## 🔍 Key Insights

- Students with **<40 engagement score** are at the highest risk of dropping out  
- **Diploma and Undergraduate** students show higher dropout probabilities  
- **Soft Skills and T-Shirts-related** courses have more churn  
- **High satisfaction and assignment submission rates** correlate with retention  
- **State-wise dropout** varies significantly (e.g., UP, MP, and Delhi show higher risk)

---

## ✅ Recommendations

- 🎯 Proactively target **low-engagement students** using early warning systems  
- 💬 Improve **feedback loops** and satisfaction tracking mechanisms  
- 📚 Provide **personalized support** for high-risk course categories  
- 📈 Monitor **assignment submission** and **attendance** as churn signals  
- 📍 Launch **geo-targeted campaigns** in high-dropout states  

---

## ⚠️ Assumptions

- `dropout_status` was used as the target variable for classification  
- Students marked **“Likely to Leave”, “May Leave”, or “Dropped”** were treated as churn  
- `engagement_score` is assumed to be normalized (0–100)  
- The dataset represents a **simulated/anonymous EdTech platform**

---

## 📬 Contact

📧 **Email**: mansiln67@gmail.com  
🔗 **LinkedIn**: [www.linkedin.com/in/MansiMittal98](https://www.linkedin.com/in/MansiMittal98)  
💻 **GitHub**: [https://github.com/MansiM67](https://github.com/MansiM67)

---

⭐ *If you found this project useful or insightful, please* ⭐ *star the repo and share!*

# 📊 Employee Database Data Extraction

**A Production-Grade MySQL Project Demonstrating Employee Database Management with Complete Standard Data Query Language (DQL) statements.**

---

## 📌 Overview

This project showcases **professional SQL data retrieval techniques** using a well-designed Employee Management database with realistic sample data. It's designed as an educational resource and practical reference for developers learning or refreshing their SQL fundamentals in a production-like environment.

The repository includes:
- ✅ **Clean database schema** with proper table design
- ✅ **20 practical query examples** covering essential SQL operations
- ✅ **Realistic sample data** with 10 employee records
- ✅ **Well-documented SQL scripts** with detailed comments
- ✅ **Progressive complexity** from basic to advanced queries

---

## 🎯 Key Features

### Core Functionality

| Feature | Description |
|---------|-------------|
| **SELECT Queries** | Basic and complex data retrieval with column selection |
| **WHERE Clauses** | Conditional filtering with single and multiple criteria |
| **Logical Operators** | AND, OR operators for advanced filtering conditions |
| **Pattern Matching** | LIKE operator for partial text searches |
| **Range Queries** | BETWEEN operator for numerical and date ranges |
| **Sorting** | ORDER BY with ascending/descending multi-column sorting |
| **Limiting Results** | LIMIT clause for pagination and top-N queries |
| **Combined Operations** | Complex queries combining multiple SQL features |

### Database Schema

**Employees Table Structure:**

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Age INT,
    City VARCHAR(50),
    JoinDate DATE
);
```

**Sample Data:** 10 employees across 4 departments (IT, HR, Finance, Marketing) with realistic attributes.

---

## 🚀 Quick Start

### Prerequisites

- **MySQL Server** 5.7 or higher (or MySQL 8.0+)
- **MySQL Client** or any GUI tool (MySQL Workbench, DBeaver, Navicat, etc.)
- Basic understanding of SQL syntax

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/kxnux-builds/employees-db-data-extraction.git
   cd employees-db-data-extraction
   ```

2. **Connect to MySQL:**
   ```bash
   mysql -u root -p
   ```

3. **Execute the SQL script:**
   ```sql
   source main.sql;
   ```
   
   Or copy-paste the entire `main.sql` file into your MySQL client.

4. **Verify setup:**
   ```sql
   USE EmployeeDB;
   SELECT * FROM Employees;
   ```

---

## 📚 Documentation

### Database Overview

The `EmployeeDB` database is designed for educational purposes and demonstrates best practices in database schema design for HR management systems.

**Table: `Employees`**

| Column | Type | Description | Example |
|--------|------|-------------|---------|
| EmployeeID | INT (PK, AI) | Unique identifier for each employee | 1, 2, 3... |
| FirstName | VARCHAR(50) | Employee's first name | Amit, Priya |
| LastName | VARCHAR(50) | Employee's last name | Sharma, Singh |
| Department | VARCHAR(50) | Department name | IT, HR, Finance, Marketing |
| Salary | DECIMAL(10,2) | Annual salary in currency units | 65000, 90000 |
| Age | INT | Employee's age in years | 25, 34 |
| City | VARCHAR(50) | City of residence | Delhi, Mumbai, Bangalore |
| JoinDate | DATE | Employment start date | 2024-05-15, 2023-01-12 |

### Query Categories

#### 1️⃣ Basic Data Retrieval (Queries 1-2)
Introduction to SELECT statements and column projection.

#### 2️⃣ Simple Filtering (Queries 3-4)
Using WHERE clause for single condition filtering.

#### 3️⃣ Logical Operators (Queries 5-6)
AND/OR operators for complex filtering scenarios.

#### 4️⃣ Pattern Matching (Queries 7-8)
LIKE operator with wildcards (% and _).

#### 5️⃣ Range Queries (Queries 9-10)
BETWEEN operator for numerical and date ranges.

#### 6️⃣ Sorting & Pagination (Queries 11-14)
ORDER BY and LIMIT clauses for result organization.

#### 7️⃣ Advanced Examples (Queries 15-20)
Combined operations demonstrating real-world scenarios.

---

## 💡 Query Examples

### Basic Queries

**Query 1: Display All Records**
```sql
SELECT * FROM Employees;
```
*Returns all employee records with all columns.*

**Query 2: Display Specific Columns**
```sql
SELECT EmployeeID, FirstName, Department, Salary
FROM Employees;
```
*Returns only relevant columns for reporting.*

---

### Filtering Queries

**Query 3: Department Filter**
```sql
SELECT * FROM Employees
WHERE Department = 'IT';
```
*Retrieves all IT department employees.*

**Query 4: Salary Filter**
```sql
SELECT * FROM Employees
WHERE Salary > 60000;
```
*Retrieves employees earning above ₹60,000.*

---

### Logical Operations

**Query 5: AND Operator**
```sql
SELECT * FROM Employees
WHERE Department = 'IT'
  AND Salary > 70000;
```
*IT employees earning more than ₹70,000.*

**Query 6: OR Operator**
```sql
SELECT * FROM Employees
WHERE Department = 'HR'
   OR Department = 'Finance';
```
*Employees from HR or Finance departments.*

---

### Pattern Matching

**Query 7: LIKE with Prefix**
```sql
SELECT * FROM Employees
WHERE FirstName LIKE 'A%';
```
*Employees whose first names start with 'A'.*

**Query 8: LIKE with Suffix**
```sql
SELECT * FROM Employees
WHERE City LIKE '%i';
```
*Cities ending with letter 'i' (e.g., Delhi, Mumbai).*

---

### Range Queries

**Query 9: BETWEEN Numbers**
```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 75000;
```
*Employees with salaries in the middle range.*

**Query 10: BETWEEN Dates**
```sql
SELECT * FROM Employees
WHERE JoinDate BETWEEN '2024-01-01' AND '2025-12-31';
```
*Employees who joined between 2024-2025.*

---

### Sorting & Pagination

**Query 11: ORDER BY Ascending**
```sql
SELECT * FROM Employees
ORDER BY Salary ASC;
```
*Employees sorted by salary (lowest to highest).*

**Query 12: ORDER BY Descending**
```sql
SELECT * FROM Employees
ORDER BY Salary DESC;
```
*Employees sorted by salary (highest to lowest).*

**Query 13: Multi-column ORDER BY**
```sql
SELECT * FROM Employees
ORDER BY Department ASC, Salary DESC;
```
*Employees grouped by department, then sorted by salary within each group.*

**Query 14: LIMIT Clause**
```sql
SELECT * FROM Employees
LIMIT 5;
```
*Retrieves the first 5 employee records (pagination).*

---

### Advanced Examples

**Query 15: Top Earners**
```sql
SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 3;
```
*The 3 highest-paid employees in the organization.*

**Query 16: Youngest Employees**
```sql
SELECT * FROM Employees
ORDER BY Age ASC
LIMIT 2;
```
*The 2 youngest employees.*

**Query 17: Complex Combined Query**
```sql
SELECT EmployeeID, FirstName, Department, Salary
FROM Employees
WHERE Department = 'IT'
  AND Salary BETWEEN 60000 AND 90000
ORDER BY Salary DESC
LIMIT 2;
```
*Top 2 IT professionals earning ₹60,000-₹90,000, sorted by highest salary.*

**Query 18: Multi-condition Filter with Sorting**
```sql
SELECT * FROM Employees
WHERE City = 'Delhi' OR City = 'Mumbai'
ORDER BY FirstName;
```
*Employees from Delhi or Mumbai, alphabetically sorted.*

**Query 19: Partial Text Match**
```sql
SELECT * FROM Employees
WHERE FirstName LIKE '%a%';
```
*Employees whose names contain the letter 'a'.*

**Query 20: Age-based Analysis**
```sql
SELECT * FROM Employees
WHERE Age > 30
ORDER BY Age ASC;
```
*Experienced employees (30+) sorted by age.*

---

## 🛠️ Usage Scenarios

### Real-World Applications

| Use Case | Relevant Queries | Purpose |
|----------|------------------|---------|
| **HR Reporting** | 1, 2, 18 | Employee roster and department analysis |
| **Salary Analysis** | 4, 9, 11, 12, 15 | Compensation insights and ranges |
| **Department Review** | 3, 5, 6, 13 | Departmental performance and efficiency |
| **Recruitment** | 16, 20 | Identifying junior talent and onboarding trends |
| **Search & Filter** | 7, 8, 19 | Employee lookup and targeted queries |
| **Performance Management** | 10, 14, 17 | Tenure analysis and capability assessment |

---

## 📋 File Structure

```
employees-db-data-extraction/
├── README.md              # This comprehensive documentation
├── main.sql               # Complete SQL script with all queries
├── LICENSE                # MIT License
└── .gitignore             # Git ignore rules (optional)
```

---

## 🔧 Requirements & Compatibility

| Component | Version | Status |
|-----------|---------|--------|
| MySQL | 5.7+ / 8.0+ | ✅ Fully Compatible |
| SQL Standard | ANSI SQL | ✅ Fully Compliant |
| Encoding | UTF-8 | ✅ Recommended |
| Platform | Cross-platform | ✅ Windows, Mac, Linux |

---

## 📖 Learning Path

### Beginner Level
1. Start with Queries 1-2 (Basic SELECT)
2. Progress to Queries 3-4 (Simple WHERE)
3. Practice Queries 5-6 (Logical operators)

### Intermediate Level
4. Master Queries 7-8 (Pattern matching with LIKE)
5. Learn Queries 9-10 (BETWEEN operator)
6. Study Queries 11-12 (ORDER BY)

### Advanced Level
7. Implement Queries 13-14 (Complex sorting and pagination)
8. Analyze Queries 15-20 (Real-world scenarios)
9. Create your own queries combining multiple concepts

---

## 🎓 Educational Benefits

- ✅ **Structured Learning**: Progressive complexity from basic to advanced
- ✅ **Real-world Data**: Realistic employee information with meaningful relationships
- ✅ **Best Practices**: Clean code, proper documentation, and SQL conventions
- ✅ **Hands-on Practice**: Executable queries ready to run
- ✅ **Reference Material**: Well-commented SQL for future lookup
- ✅ **Interview Preparation**: Common SQL patterns used in technical interviews

---

## 💻 Tips & Best Practices

### Writing Efficient Queries

1. **Be Specific with Columns**
   ```sql
   -- ✅ Good
   SELECT EmployeeID, FirstName, Salary FROM Employees;
   
   -- ❌ Avoid
   SELECT * FROM Employees;
   ```

2. **Use Indexes Wisely**
   - Filter on indexed columns (EmployeeID, Department, etc.)
   - For large datasets, create indexes on frequently searched columns

3. **Optimize WHERE Clauses**
   - Put most restrictive conditions first
   - Use AND before OR for better performance

4. **Limit Result Sets**
   ```sql
   -- Always use LIMIT for large queries
   SELECT * FROM Employees LIMIT 10;
   ```

5. **Meaningful Sorting**
   - Sort by relevant columns for business value
   - Multi-column sorts aid data analysis

### Query Writing Standards

- Use uppercase for SQL keywords (SELECT, WHERE, etc.)
- Use meaningful aliases for clarity
- Add comments for complex logic
- Format queries for readability
- Test queries before production use

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/your-feature`)
3. **Add** new query examples or improvements
4. **Commit** your changes (`git commit -am 'Add new examples'`)
5. **Push** to the branch (`git push origin feature/your-feature`)
6. **Open** a Pull Request

### Contribution Ideas

- Additional query examples
- Performance optimization tips
- New use-case scenarios
- Translations of documentation
- Extended sample data
- Database schema improvements

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### MIT License Summary
- ✅ Free to use commercially
- ✅ Modify and distribute
- ✅ Private and personal use
- ⚠️ Include license notice
- ⚠️ No warranty provided

---

## 📞 Support & Contact

For questions, issues, or suggestions:

- **Issues**: [Open an issue on GitHub](https://github.com/kxnux-builds/employees-db-data-extraction/issues)
- **Discussions**: [Start a discussion](https://github.com/kxnux-builds/employees-db-data-extraction/discussions)
- **GitHub**: [@kxnux-builds](https://github.com/kxnux-builds)

---

## 🎯 Project Goals

This project aims to:

1. Provide a **comprehensive SQL learning resource**
2. Demonstrate **professional database design**
3. Offer **practical, production-ready examples**
4. Support **skill development** at all levels
5. Serve as a **reference** for common SQL patterns
6. Foster **community learning** and contribution

---

## 📈 Roadmap

- [ ] Add aggregate functions (COUNT, SUM, AVG, MAX, MIN)
- [ ] Implement JOIN operations (INNER, LEFT, RIGHT)
- [ ] Add GROUP BY and HAVING clauses
- [ ] Create subquery examples
- [ ] Implement UNION operations
- [ ] Add window functions
- [ ] Create performance benchmarks
- [ ] Add video tutorials

---

## 🌟 Highlights

> **"A perfect starting point for anyone learning SQL or brushing up on fundamental query techniques."**

- 📊 **20 Diverse Queries**: From basic to advanced
- 🎓 **Well-Documented**: Every query is clearly explained
- 🔄 **Reproducible**: Easily run in any MySQL environment
- 🚀 **Production-Ready**: Professional code standards
- 💯 **Complete**: Database creation to query execution

---

## Credits & Links

- Author: Kishanu Mondal
- GitHub: https://github.com/kxnux-builds
- LinkedIn: https://www.linkedin.com/in/kishanu-mondal/
- X (Twitter): https://x.com/Kxnux_Dev


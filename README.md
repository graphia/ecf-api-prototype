```mermaid
erDiagram
    Teacher ||--o{ EmailAddress : ""
    Teacher ||--o{ Mentorship : "Mentor"
    Teacher ||--o{ Tenureship : ""
    School ||--|{ Tenureship : ""
    Tenureship ||--|{ Mentorship : "Mentee"

    School ||--|{ School : "Trust"
    Mentorship ||--|{ InductionPeriod : ""
    AppropriateBody ||--|{ InductionPeriod : ""
    InductionProgramme ||--|{ InductionPeriod : ""
```

CREATE TABLE noteful_notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_name TEXT NOT NULL,
    content TEXT,
    modified TIMESTAMP default now() NOT NULL,
    folder_id INTEGER REFERENCES noteful_folders(id) ON DELETE CASCADE NOT NULL
);
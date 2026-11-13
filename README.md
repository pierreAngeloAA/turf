# Turf

Console app in plain Ruby to manage horse races: horses, jockeys, trainers, staff, hippodromes and races (careers). It was the first version of the domain later rebuilt as a Rails app in Turf-rails.

## Run

```bash
ruby main.rb
```

`seed.rb` loads sample data. Data is kept in memory only.

## Structure

| Folder | Content |
|---|---|
| `models/` | `Horse`, `Jockey`, `Trainer`, `Staff`, `Admin`, `Hippodrome`, `Career`, `Binomial` (horse + jockey pair) |
| `menus/` | One console menu per entity, plus the shared CRUD helpers |
| `turf_management.rb` | Main loop |

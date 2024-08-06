# Music Tab

## Overview

**Music Tab** is a user-friendly web application designed to help users manage their song tabs efficiently. 

Users can effortlessly create, update, delete, organize, and access their tabs in a centralized digital format.

## Instruction
1. Clone the repository
```
git clone https://github.com/borvux/music-tab.git
```

2. Run 
```
bin/dev
```

## Configuration

## Contribution
1. Fork the repository
   
2. Create a feature branch
```
git checkout -b feature/your-feature-name
```

3. Commit your changes
```
git commit -m "Add a meaningful commit message"
```

4. Push to your branch
```
git push origin feature/your-feature-name
```

5. Open a pull request to the **'main'** branch
   
## ERD
```ruby
class User < ApplicationRecord
  has_many :tabs
end

class Tab < ApplicationRecord
  belongs_to :user
  has_rich_text :body
end
```

## Troubleshooting

## How the app works

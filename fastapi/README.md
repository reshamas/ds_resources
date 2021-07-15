# Introduction to FastAPI Workshop with Pax Williams

Organizer:  
PyLadies Hamburg

Meetup event:  
https://www.meetup.com/PyLadies-Hamburg/events/278470205

GitHub repo:  
https://github.com/paxcodes/grocery_api

Slides:  
https://slides.com/paxcodes/intro-to-fastapi-workshop

Recording:  
talk will be recorded

## Notes
- API:  Application Programming Interface
- defines rules set on the backend on how to interact with the application
- fastAPI:  a modern framework for building APIs
- python runtime does not enforce type, so you could have a different type of variable entered without getting an error
- It is useful with 3rd party tools
- functions
-   synchronous (sequential) vs asynchronous
-   asynchronous:  python lets the program do something else while it's waiting for another task or function

## Packages of FastAPI
- Pydantic: powers fastAPI to validate data using python type hints
-   `BaseModel`
-   
- Starlette:  asynchronous support
-   testing endpoints
- Features of fastapi:  automatically generates docs

## Live Example
- need to create one file:  main.py

```python
source .venv/bin/activate
#virtual environment:  (grocery_api)
uvicorn grocery_api.main:app --reload


```


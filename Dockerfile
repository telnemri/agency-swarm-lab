FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Assuming you're copying the requirements.txt file to the container
COPY ./ .

# Install Python packages within the virtual environment
RUN pip install -r requirements.txt

# Define environment variable for OpenAI API Key
ENV OPENAI_API_KEY sk-proj-pzzp1ywbDMdDtdxlCCsPT3BlbkFJmm6deUM4ytkbmYGHl4EQ1232432

# Expose port 7860
EXPOSE 7860

CMD ["/bin/bash"]
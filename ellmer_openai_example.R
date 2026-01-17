# Example: Configure and call OpenAI with the ellmer package
#
# 1) Install the package (run once):
#    install.packages("ellmer")
#
# 2) Set your OpenAI API key (recommended via environment variable).
#    Do NOT hardcode secrets in scripts.
#    Sys.setenv(OPENAI_API_KEY = "<YOUR_API_KEY>")
#
# 3) Create a chat client and send a prompt.

# Uncomment once ellmer is installed:
# library(ellmer)

# Provide the model you want to use.
# gpt-4o-mini is a good default for cost/speed.
chat <- ellmer::chat_openai(
  model = "gpt-4o-mini",
  api_key = Sys.getenv("OPENAI_API_KEY")
)

# Send a message to the model.
response <- chat$chat("Give me a one-sentence summary of ellmer in R.")

# Print the model response.
print(response)

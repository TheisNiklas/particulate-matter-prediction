import neptune

for i in range(4):
    run = neptune.init_run(
        project="data-mining-team2/Test",
        api_token="eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vYXBwLm5lcHR1bmUuYWkiLCJhcGlfdXJsIjoiaHR0cHM6Ly9hcHAubmVwdHVuZS5haSIsImFwaV9rZXkiOiI4Mzg2ZWZmYi05YzRlLTQ3ODYtOWE1NC1mNDM4OTM1ZjNlOTkifQ==",
    )  # your credentials

    params = {"learning_rate": 0.001, "optimizer": "Adam"}
    run["parameters"] = params

    for epoch in range(10):
        run["train/loss"].append(0.9**epoch)

    run["eval/f1_score"] = 0.66

    run.stop()

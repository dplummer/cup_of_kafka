defmodule CupOfKafka.KafkaConsumer do
  require Logger

  def start_link(_opts \\ []) do
    [
      Kaffeine.consume("test", {CupOfKafka.KafkaConsumer, :handler, []}, []),
    ]
    |> Kaffeine.start_consumers()
  end

  def handler(event, _consumer) do
    Logger.error inspect(event)
    :ok
  end
end

defmodule TestElixirApp do
  use TelemetryRegistry

  telemetry_event %{
    event: [:test_elixir_app, :single, :event],
    description: "emitted when this event happens",
    measurements: "%{duration: non_neg_integer()}",
    metadata: "%{status: status(), name: String.t()}"
  }

  @moduledoc """
  Information about the module.

  ## Telemetry

  #{telemetry_docs()}
  """
end

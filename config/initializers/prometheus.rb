require 'prometheus/client'

FROM_REGISTRY = Prometheus::Client.registry

HTTP_REQUESTS = FROM_REGISTRY.counter(
    :http_requests_total,
    docstring: 'A counter of the total number of HTTP requests made.',
    labels: [:path, :status]
)

HTTP_LATENCY = FROM_REGISTRY.histogram(
    :http_request_duration_seconds,
    docstring: 'A histogram of the response latency of HTTP requests.',
    labels: [:path, :status]
)
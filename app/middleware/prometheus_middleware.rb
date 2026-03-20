class PrometheusMiddleware
  def initialize(app)
    @app = app
    @registry = Prometheus::Client.registry
    @http_requests = @registry.counter(
      :http_requests_total,
      docstring: 'A counter of the total number of HTTP requests made.',
      labels: [:path, :status]
    )
    @http_latency = @registry.histogram(
      :http_request_duration_seconds,
      docstring: 'A histogram of the response latency of HTTP requests.',
      labels: [:path, :status]
    )
  end

  def call(env)
    start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    status, headers, response = @app.call(env)
    duration = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start_time
    path = (env['PATH_INFO'] || '').gsub(%r{(?<=/)\d+(?=/|$)}, ':id')
    labels = { path: path, status: status.to_s }
    @http_requests.increment(labels: labels)
    @http_latency.observe(duration, labels: labels)
    [status, headers, response]
  end
end

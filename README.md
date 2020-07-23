# Ejabberd metrics for Prometheus

Compile:

    mkdir ebin
    erlc -o ebin/ -I /usr/local/src/ejabberd-xxx/include/ -DLAGER -DNO_EXT_LIB src/mod_prometheus.erl

Copy compiled file to ejabberd, for example:

    cp ebin/mod_prometheus.beam /usr/local/lib/ejabberd-xxx/ebin/

Add config to `ejabberd.yml`:

    listen:
      -
        port: 8181
        module: ejabberd_http
        request_handlers:
          "/metrics": mod_prometheus

Restart ejabberd:

 `ejabberdctl restart` 
  
Test metrics:

  visit `http://localhost:8181/metrics` in browser or exec `curl localhost:8181/metrics` in cli.

You have to see metrics for prometheus.
Service will respond all requests independently request type and request path.

Support Metrics List:

* total_run_queue_lengths
* total_active_tasks
* context_switches
* garbage_collection
* io
* reductions
* runtime
* allocated_areas
* port_count
* port_limit
* process_count
* process_limit
* connected_users
module.exports = {
  apps: [
    {
      name: 'serve',
      script: 'node_modules/.bin/rw',
      args: 'serve',
      instances: 'max',
      exec_mode: 'cluster',
      wait_ready: true,
      listen_timeout: 10000,
    },
  ],
}
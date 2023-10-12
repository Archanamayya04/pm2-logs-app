module.exports = {
  apps: [
    {
      name: 'my-node-app',
      script: 'app.js',
      watch: true, // Auto-restart the app on file changes (for development)
      env: {
        NODE_ENV: 'development',
      },
      env_production: {
        NODE_ENV: 'production',
      },
      output: './logs/out.log',
      error: './logs/error.log',
      log: './logs/combined.log',
    },
  ],
};


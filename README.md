# React + Vite and CapRover y Docker deployment

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh
- [@CapRover](https://caprover.com/)
- [@Docker](https://hub.docker.com/)

## CapRover

### `captain-definition`

```json
{
  "schemaVersion": 2,
  "dockerfileLines": [
    "FROM node:18-alpine",
    "WORKDIR /app",
    "COPY ./package.json /app/",
    "RUN npm install && npm cache clean --force",
    "COPY ./ /app",
    "ENV NODE_ENV production",
    "RUN npm run build",
    "CMD [ \"npm\",\"run\", \"preview\" ]"
  ]
} 
```
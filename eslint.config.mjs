import globals from "globals";
import pluginJs from "@eslint/js";

export default [
  {
    languageOptions: {
      globals: globals.browser,
      ecmaVersion: 12,
      sourceType: "module",
    },
    linterOptions: {
      env: {
        browser: true,
        es2021: true,
      },
    },
    rules: {
      "import/no-unresolved": 0,
    },
  },
  pluginJs.configs.recommended,
  {
    extends: [
      "airbnb-base",
      "eslint:recommended",
    ],
  },
];

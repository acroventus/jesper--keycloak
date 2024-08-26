import type { Config } from 'tailwindcss';
import defaultTheme from 'tailwindcss/defaultTheme';
import colors from 'tailwindcss/colors';

export default {
  content: ['./theme/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  darkMode: ['selector', '[class="light"]'],
  plugins: [require('daisyui')],
  daisyui: {
    // https://daisyui.com/docs/colors/
    themes: [
      {
        light: {
          'color-scheme': 'light',
          primary: '#372F9D',
          'primary-focus': '#282899',
          'primary-content': '#ffffff',
          secondary: '#8AFFD4',
          'secondary-focus': '#00ffa5',
          'secondary-content': '#1d143d',
          accent: '#FFE966',
          'accent-content': '#1d143d',
          neutral: '#D0D0D1',
          'neutral-content': '#3D3D3D',
          'base-100': '#ffffff',
          'base-200': '#fafafb',
          'base-300': '#f5f5f7',
          'base-content': '#1d143d',
          '--menu': '#372F9D',
          '--menu-content': '#FFFFFF',
          '*': { 'border-color': '#e5e7eb' },
        },
      },
    ],
  },
  theme: {
    extend: {
      fontFamily: {
        sans: ['DM Sans', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        provider: {
          apple: '#000000',
          bitbucket: '#0052CC',
          discord: '#5865F2',
          facebook: '#1877F2',
          github: '#181717',
          gitlab: '#FC6D26',
          google: '#4285F4',
          instagram: '#E4405F',
          linkedin: '#0A66C2',
          microsoft: '#5E5E5E',
          oidc: '#F78C40',
          openshift: '#EE0000',
          paypal: '#00457C',
          slack: '#4A154B',
          stackoverflow: '#F58025',
          twitter: '#1DA1F2',
        },
      },
      boxShadow: {
        sm: '0 1px 2px 0px rgba(16, 57, 99, 0.1)',
        DEFAULT: '0 2px 5px -1px rgba(16, 57, 99, 0.1), 0 1px 2px 0px rgba(16, 57, 99, 0.1)',
        md: '0 8px 10px -3px rgba(16, 57, 99, 0.1), 0 2px 5px -1px rgba(16, 57, 99, 0.1)',
        lg: '0 15px 20px -5px rgba(16, 57, 99, 0.1), 0 6px 8px -5px rgba(16, 57, 99, 0.1)',
        xl: '0 20px 25px -10px rgba(16, 57, 99, 0.15), 0 8px 10px -6px rgba(16, 57, 99, 0.15)',
      },
    },
  },
} satisfies Config;

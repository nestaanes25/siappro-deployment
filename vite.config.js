import { defineConfig, loadEnv } from 'vite'
import laravel from 'laravel-vite-plugin'
import tailwindcss from 'tailwindcss'
import autoprefixer from 'autoprefixer'

export default defineConfig(({ mode }) => {
    const env = loadEnv(mode, process.cwd(), '');
    const ngrokUrl = env.NGROK_URL || env.APP_URL;

    return {
        plugins: [
            laravel({
                input: ['resources/css/app.css', 'resources/js/app.js'],
                refresh: true,
            }),
        ],
        css: {
            postcss: {
                plugins: [tailwindcss, autoprefixer],
            },
        },
        server: {
            hmr: {
                host: ngrokUrl ? ngrokUrl.replace('https://', '').replace('http://', '') : 'localhost',
                protocol: ngrokUrl?.startsWith('https') ? 'https' : 'http',
            },
        },
    };
});

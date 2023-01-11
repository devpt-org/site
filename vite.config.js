import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';


import { execSync } from 'node:child_process';

let extendedViteDevServerOptions;

try {
	const gitpodPortUrl = execSync(`gp url 5173`).toString().trim();

	extendedViteDevServerOptions = {
		hmr: {
			protocol: 'wss',
			host: new URL(gitpodPortUrl).hostname,
			clientPort: 443
		}
	};
} catch {
	extendedViteDevServerOptions = {};
}

export default defineConfig({
    server: {
        ...extendedViteDevServerOptions
    },
    plugins: [
        laravel({
            input: 'resources/js/app.js',
            refresh: true,
        }),
        vue({
            template: {
                transformAssetUrls: {
                    base: null,
                    includeAbsolute: false,
                },
            },
        }),
    ],
});

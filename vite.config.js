import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';


import { execSync } from 'node:child_process';

let extendedViteDevServerOptions;

try {
	const gitpodPortUrl = execSync(`gp url 5173`).toString().trim();
    const host = new URL(gitpodPortUrl).hostname

	extendedViteDevServerOptions = {
        host,
		hmr: {
			protocol: 'wss',
			host,
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

<script setup>
    import {Head, Link} from '@inertiajs/inertia-vue3';
    import NavBar from '@/Components/NavBar/NavBar.vue'
</script>

<template>
    <Head title="devPT - Comunidade de Developers Portugueses"/>
    <NavBar />
    <slot />
    <Footer class="w-full text-left p-4 pin-b text-xs bg-sky-600 text-white font-bold">
                <p>
                    made with ♡
                    <a
                        href="https://devpt-org.github.io/"
                        class="underline  hover:text-blue-400"
                        >
                        by devPT
                    </a>
                </p>
    </Footer>
</template>
